<?php
require_once("../../sistema/conexao.php");
include('../cartao/ApiConfig.php');
@session_start();
$id_do_aluno = @$_SESSION['id'];

$id_do_curso_pag = $_POST['id'];
$nome_curso_titulo = $_POST['nome'];

$nome_aluno = "Teste";
$email_aluno = "emailteste@hotmail.com";
$cpf_aluno = "34152426764";

$query2 = $pdo->query("SELECT * FROM usuarios where id = '$id_do_aluno'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
if(@count($res2) > 0){
    $id_pessoa = $res2[0]['id_pessoa'];
        $query3 = $pdo->query("SELECT * FROM alunos where id = '$id_pessoa'");
        $res3 = $query3->fetchAll(PDO::FETCH_ASSOC);
        if(@count($res3) > 0){
            $nome_aluno = $res3[0]['nome'];
            $email_aluno = $res3[0]['email'];
            //$cpf_aluno = $res3[0]['cpf'];

        }
}


//buscar id da matricula
    $query = $pdo->query("SELECT * FROM matriculas where id_curso = '$id_do_curso_pag' and aluno = '$id_do_aluno' ");
    $res = $query->fetchAll(PDO::FETCH_ASSOC);
    if(@count($res) > 0){
        $valor_curso = $res[0]['subtotal'];
        $valor_pix = $valor_curso;
        $status_mat = $res[0]['status'];
        $id_mat = $res[0]['id'];
        if($desconto_pix > 0){
            $valor_pix = $valor_curso - ($valor_curso * ($desconto_pix / 100));
            $valor_pix = number_format($valor_pix, 2);
        }
    }

$curl = curl_init();

    $dados["transaction_amount"]                    = (float)$valor_pix;
    $dados["description"]                           = $nome_curso_titulo;
    $dados["external_reference"]                    = $id_mat;
    $dados["payment_method_id"]                     = "pix";
    $dados["notification_url"]                      = "https://google.com";
    $dados["payer"]["email"]                        = $email_aluno;
    $dados["payer"]["first_name"]                   = "Aluno ";
    $dados["payer"]["last_name"]                    = $nome_aluno;
    
    $dados["payer"]["identification"]["type"]       = "CPF";
    $dados["payer"]["identification"]["number"]     = $cpf_aluno;
    
    $dados["payer"]["address"]["zip_code"]          = "06233200";
    $dados["payer"]["address"]["street_name"]       = "Av. das Nações Unidas";
    $dados["payer"]["address"]["street_number"]     = "3003";
    $dados["payer"]["address"]["neighborhood"]      = "Bonfim";
    $dados["payer"]["address"]["city"]              = "Osasco";
    $dados["payer"]["address"]["federal_unit"]      = "SP";

    curl_setopt_array($curl, array(
        CURLOPT_URL => 'https://api.mercadopago.com/v1/payments',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => json_encode($dados),
    CURLOPT_HTTPHEADER => array(
        'accept: application/json',
        'content-type: application/json',
        'Authorization: Bearer '.$access_token
    ),
    ));
    $response = curl_exec($curl);
    $resultado = json_decode($response);

    $id = $dados["external_reference"];
    //var_dump($response);
curl_close($curl);
$codigo_pix = $resultado->point_of_interaction->transaction_data->qr_code;

echo "
<img style='display:block;' class='qr_code_pix' id='base64image'
       src='data:image/jpeg;base64, ".$resultado->point_of_interaction->transaction_data->qr_code_base64."'/>";
echo '
 <a class="link-neutro" href="#" onClick="copiar()"><i class="fa fa-clipboard text-primary"></i> <small><small>Copiar Pix <input type="text" id="chave_pix_copia" value="'.$codigo_pix.'" style="background: transparent; border:none; width:1px" readonly></small></small> </a>';



$pdo->query("UPDATE matriculas SET forma_pgto = 'Pix', ref_api = '$resultado->id' where id = '$id_mat' ");
 ?>








       

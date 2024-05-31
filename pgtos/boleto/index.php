<?php include('../cartao/ApiConfig.php');
require_once("../../sistema/conexao.php");

$id_do_curso_pag = $_POST['id'];
$cpf_aluno = $_POST['cpf'];

@session_start();
$id_do_aluno = @$_SESSION['id'];


$nome_aluno = "Teste";
$email_aluno = "emailteste@hotmail.com";


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
                
        $valor_pix = number_format($valor_pix, 2);
        

        $pacote = $res[0]['pacote'];

if($pacote == 'Sim'){
  $tabela = 'pacotes';
}else{
  $tabela = 'cursos';
}

$query = $pdo->query("SELECT * FROM $tabela where id = '$id_do_curso_pag'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome_curso_titulo = $res[0]['nome'];
    }
?>

<?php
$curl = curl_init();
    
    $dados["external_reference"]                    = $id_mat;
    $dados["transaction_amount"]                    = (float)$valor_pix;
    $dados["description"]                           = $nome_curso_titulo;
    $dados["payment_method_id"]                     = "bolbradesco";
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
    //var_dump($response);
curl_close($curl);
?>



<?php 

//echo $resultado->transaction_details->external_resource_url;

$pdo->query("UPDATE matriculas SET forma_pgto = 'Boleto', ref_api = '$resultado->id' where id = '$id_mat' ");

echo "<script>window.location='".$resultado->transaction_details->external_resource_url."'</script>";


?>   
    
      
       









       

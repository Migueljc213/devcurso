<?php 
require_once('../../sistema/conexao.php');
@session_start();
$id_aluno = $_SESSION['id'];

$codigo = $_POST['cupom'];
$curso = $_POST['id_curso_cupom'];

$query = $pdo->query("SELECT * FROM usuarios where id = '$id_aluno'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$id_pessoa = $res[0]['id_pessoa'];

$query = $pdo->query("SELECT * FROM alunos where id = '$id_pessoa'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$cartoes = $res[0]['cartao'];

$valor_cupom = 0;
$codigo_cartao = '';

if($cartoes >= $cartoes_fidelidade and ($codigo == 'cartao' || $codigo == 'cartão')){
	$valor_cupom = $valor_max_cartao;
	$codigo_cartao = 'aprovado';

	//apagar cartões do aluno
	$pdo->query("UPDATE alunos SET cartao = '0' where id = '$id_pessoa'");
}



$query = $pdo->query("SELECT * FROM cupons where codigo = '$codigo'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0 || $codigo_cartao == 'aprovado'){
	if(@count($res) > 0){
		$valor_cupom = $res[0]['valor'];
	}	

	//abater o valor na matricula
	$query2 = $pdo->query("SELECT * FROM matriculas where id_curso = '$curso' and aluno = $id_aluno ");
	$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
	$valor_mat = $res2[0]['subtotal'];
	$id_mat = $res2[0]['id'];

	$valor_desconto = $valor_mat - $valor_cupom;

	$valor_pix = $valor_desconto;
	if($desconto_pix > 0){
			$valor_pix = $valor_desconto - ($valor_desconto * ($desconto_pix / 100));
		}

		$valor_descontoF = number_format($valor_desconto, 2, ',', '.');	
		$valor_pixF = number_format($valor_pix, 2, ',', '.');	
		$valor_cupomF = number_format($valor_cupom, 2, ',', '.');		


	$pdo->query("UPDATE matriculas SET valor_cupom = '$valor_cupom', subtotal = '$valor_desconto' where id = '$id_mat'");

	//excluir o cupom
	$pdo->query("DELETE FROM cupons where codigo = '$codigo'");


$query2 = $pdo->query("SELECT * FROM usuarios where id = '$id_aluno'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
$nome_aluno = $res2[0]['nome'];

$query2 = $pdo->query("SELECT * FROM cursos where id = '$curso'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
$nome_curso = $res2[0]['nome'];

//email de uso do cupom
$destinatario = $email_sistema;
$assunto = 'Cupom Usado no Curso ' .$nome_curso;
$mensagem = "Aluno $nome_aluno, acaba de usar um cupom de valor $valor_cupomF no curso $nome_curso!!";

$remetente = $email_sistema;
$cabecalhos = 'MIME-Version: 1.0' . "\r\n";
$cabecalhos .= 'Content-type: text/html; charset=utf-8;' . "\r\n";
$cabecalhos .= "From: " .$remetente;

@mail($destinatario, $assunto, $mensagem, $cabecalhos);


	echo 'Cupom Utilizado-'.$valor_descontoF.'-'.$valor_pixF;
}else{
	echo 'Código Incorreto, cupom Inexistente!';
}

?>


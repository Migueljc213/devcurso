<?php 
require_once("../../../conexao.php");
$tabela = 'aulas';
@session_start();
$id_aluno = $_POST['id_usu'];

$id = $_POST['id'];
$aula = $_POST['aula'];



$query = $pdo->query("SELECT * FROM aulas where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$curso = $res[0]['curso'];
$sessao = $res[0]['sessao'];
$seq_aula = $res[0]['sequencia_aula'];

$nome_aula = $res[0]['nome'];	
$num_aula = $res[0]['num_aula'];
$link = $res[0]['link'];
$id_aula = $res[0]['id'];

$query_m = $pdo->query("SELECT * FROM sessao where id = '$sessao'");
$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
if(@count($res_m) > 0){
	$nome_sessao = $res_m[0]['nome'] .' - ';
}else{
	$nome_sessao = "";
}


//pegar o id da matricula
$query_m = $pdo->query("SELECT * FROM matriculas where id_curso = '$curso' and aluno = '$id_aluno'");
$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
$id_mat = $res_m[0]['id'];
$aulas_conc = $res_m[0]['aulas_concluidas'];
$status_mat = $res_m[0]['status'];

//verificar total de aulas do curso
$query_m = $pdo->query("SELECT * FROM aulas where curso = '$curso'");
$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
$total_aulas = @count($res_m);


//verificar total de questionario para o curso
$query_m = $pdo->query("SELECT * FROM perguntas_quest where curso = '$curso'");
$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
$curso_quest = @count($res_m);


$msg = '';
if($questionario_config != 'Sim' or $curso_quest == 0){
	//mudo o status do curso para finalizado
	if($status_mat != 'Finalizado' and $total_aulas == $aulas_conc){
		$query_m = $pdo->query("UPDATE  matriculas SET status = 'Finalizado', data_conclusao = curDate() where id = '$id_mat'");		
	}	
}

if($curso_quest == 0){
	$msg = 'Curso Finalizado';
}

if($curso_quest > 0 and $questionario_config == 'Sim'){
	$msg = 'Aulas Concluídas';
}


if($aula == 'proximo' and $sessao == 0){
	

	$proxima = $num_aula + 1;

	if($proxima > $total_aulas){
		echo $msg;
		exit();
	}

	if($aulas_conc < $proxima){
		//atualizar aulas concluidas na matricula
		$query_m = $pdo->query("UPDATE  matriculas SET aulas_concluidas = '$proxima' where id = '$id_mat'");
	}
	


	$query = $pdo->query("SELECT * FROM aulas where curso = '$curso' and num_aula = '$proxima'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$nome_aula = $res[0]['nome'];	
	$num_aula = $res[0]['num_aula'];
	$link = $res[0]['link'];
	$id_aula = $res[0]['id'];
}



if($aula == 'proximo' and $sessao != 0){

	
	$proxima = $seq_aula + 1;

	if($proxima > $total_aulas){
	
		echo $msg;
		exit();
	}

	if($aulas_conc < $proxima){
	//atualizar aulas concluidas na matricula
	$query_m = $pdo->query("UPDATE  matriculas SET aulas_concluidas = '$proxima' where id = '$id_mat'");
	}

	$query = $pdo->query("SELECT * FROM aulas where curso = '$curso' and sequencia_aula = '$proxima'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$nome_aula = $res[0]['nome'];	
	$num_aula = $res[0]['num_aula'];
	$link = $res[0]['link'];
	$id_aula = $res[0]['id'];
	$sessao = $res[0]['sessao'];

	$query_m = $pdo->query("SELECT * FROM sessao where id = '$sessao'");
	$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
	$nome_sessao = $res_m[0]['nome'] .' - ';

}


if($aula == 'anterior' and $num_aula > 1 and $sessao == 0){
	$proxima = $num_aula - 1;	
	$query = $pdo->query("SELECT * FROM aulas where curso = '$curso' and num_aula = '$proxima'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$nome_aula = $res[0]['nome'];	
	$num_aula = $res[0]['num_aula'];
	$link = $res[0]['link'];
	$id_aula = $res[0]['id'];
}



if($aula == 'anterior' and $seq_aula > 1 and $sessao != 0){
	$proxima = $seq_aula - 1;	
	$query = $pdo->query("SELECT * FROM aulas where curso = '$curso' and sequencia_aula = '$proxima'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$nome_aula = $res[0]['nome'];	
	$num_aula = $res[0]['num_aula'];
	$link = $res[0]['link'];
	$id_aula = $res[0]['id'];

	$sessao = $res[0]['sessao'];

	$query_m = $pdo->query("SELECT * FROM sessao where id = '$sessao'");
	$res_m = $query_m->fetchAll(PDO::FETCH_ASSOC);
	$nome_sessao = $res_m[0]['nome'] .' - ';
}


echo $num_aula . '***' . $nome_aula .  '***' . $link.  '***' .$id_aula. '***'.$nome_sessao;

?>



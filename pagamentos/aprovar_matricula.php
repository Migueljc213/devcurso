<?php 
require("../../sistema/conexao.php");

$hoje = date('Y-m-d');
$mes_atual = Date('m');
$ano_atual = Date('Y');
$data_pgto_comissao = $ano_atual.'-'.$mes_atual.'-'.$dia_pgto_comissao;

if($forma_pgto == 'MP'){
@session_start();
$id_aluno = $_SESSION['id'];

$query = $pdo->query("SELECT * FROM matriculas where id_curso = '$id_matricula' and aluno = '$id_aluno'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$subtotal = $res[0]['subtotal'];
$id_matricula = $res[0]['id'];
$total_recebido = $subtotal - ($subtotal * ($taxa_mp / 100));

}

$query = $pdo->query("SELECT * FROM matriculas where id = '$id_matricula'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0){
	$subtotal = $res[0]['subtotal'];
	$pacote = $res[0]['pacote'];
	$aluno = $res[0]['aluno'];
	$id_curso = $res[0]['id_curso'];
	$status_mat = $res[0]['status'];
	$professor = $res[0]['professor'];

	if($status_mat != 'Aguardando'){		
		exit();
	}


	if($pacote == 'Sim'){
		$tab = 'pacotes';
	}else{
		$tab = 'cursos';
	}

}

$query = $pdo->query("SELECT * FROM usuarios where id = '$aluno'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0){
	$nome_aluno = $res[0]['nome'];
	$email_aluno = $res[0]['usuario'];
	$id_pessoa_aluno = $res[0]['id_pessoa'];
}

$query = $pdo->query("SELECT * FROM alunos where id = '$id_pessoa_aluno'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0){
	$cartoes = $res[0]['cartao'];
}


$query = $pdo->query("SELECT * FROM usuarios where id = '$professor'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@count($res) > 0){
	$email_professor = $res[0]['usuario'];
}


if($forma_pgto == 'Paypal'){		
	$total_recebido = $subtotal - ($subtotal * ($taxa_paypal / 100));
}

if($forma_pgto == 'Pix' and @$pix_api == 'Sim'){		
	$total_recebido = $subtotal - ($subtotal * (($desconto_pix + 1) / 100));
}


//ATUALIZANDO A MATRÍCULA
$query = $pdo->query("UPDATE matriculas SET status = 'Matriculado', forma_pgto = '$forma_pgto', total_recebido = '$total_recebido'  where id = '$id_matricula'");


//ADICIONAR MAIS UM CARTÃO PARA O ALUNO
$cartoes += 1;
$pdo->query("UPDATE alunos SET cartao = '$cartoes' where id = '$id_pessoa_aluno'");


//LIBERAR OS CURSOS SE FOR UM PACOTE
if($pacote == 'Sim'){
	$query = $pdo->query("SELECT * FROM cursos_pacotes where id_pacote = '$id_curso' order by id desc");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = @count($res);

	if($total_reg > 0){
		for($i=0; $i < $total_reg; $i++){
		foreach ($res[$i] as $key => $value){}
		$id_cursos_pacotes = $res[$i]['id'];
		$id_do_curso = $res[$i]['id_curso'];

		$query2 = $pdo->query("SELECT * FROM cursos where id = '$id_do_curso'");
		$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
		$matriculas = $res2[0]['matriculas'];
		$id_professor = $res2[0]['professor'];
		$quant_mat = $matriculas + 1; 

				
		$query3 = $pdo->query("SELECT * FROM matriculas where id_curso = '$id_do_curso' and aluno = '$aluno'");
		$res3 = $query3->fetchAll(PDO::FETCH_ASSOC);
		

		if(@count($res3) > 0){	
			$id_mat = @$res3[0]['id'];
			//excluir a matrícula do curso se ela já existir
			$pdo->query("DELETE FROM matriculas where id = '$id_mat'");
		}
			//inserir a matrícula do curso caso ela não exista
			$pdo->query("INSERT INTO matriculas SET id_curso = '$id_do_curso', aluno = '$aluno', professor = '$id_professor', aulas_concluidas = '1', data = curDate(), status = 'Matriculado', pacote = 'Não', id_pacote = '$id_curso', obs = 'Pacote' ");


			//atualizar matriculas do curso
			$pdo->query("UPDATE cursos SET matriculas = '$quant_mat' where id = '$id_do_curso'");
		

		

		}
	}

}

//ADICIONAR MAIS UMA VENDA AO CURSO OU PACOTE
$query2 = $pdo->query("SELECT * FROM $tab where id = '$id_curso'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
$matriculas = $res2[0]['matriculas'];
$valor_comissao = $res2[0]['comissao'];
$quantid_mat = $matriculas + 1;
$nome_curso = $res2[0]['nome'];
$pdo->query("UPDATE $tab SET matriculas = '$quantid_mat' where id = '$id_curso'");




//LANÇAR COMISSÃO DO PROFESSOR
$valor_comissao_pagar = ($valor_comissao * $subtotal) / 100;
if(strtotime($hoje) < strtotime($data_pgto_comissao)){
	$data_venc = $data_pgto_comissao;
}else{
	$data_venc = date('Y-m-d', strtotime("+1 month",strtotime($data_pgto_comissao)));
}

if($valor_comissao_pagar > 0){
	$query = $pdo->query("INSERT INTO pagar SET descricao = 'Comissão',  valor = '$valor_comissao_pagar', data = curDate(), vencimento = '$data_venc', pago = 'Não', arquivo = 'sem-foto.png', professor = '$professor', curso = '$nome_curso'");
}


//ENVIAR EMAIL PARA O ADM, PROFESSOR E ALUNO
require_once('email-aprovar-matricula.php');

 ?>
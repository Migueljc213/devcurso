<?php 
require_once("sistema/conexao.php");
$login = 'Login';
$painel = 'sistema';
@session_start();
if(@$_SESSION['nivel'] == 'Administrador' || @$_SESSION['nivel'] == 'Professor'){
  $painel = 'sistema/painel-admin';
  $login = 'Painel';
}

if(@$_SESSION['nivel'] == 'Aluno'){
  $painel = 'sistema/painel-aluno';
   $login = 'Painel';
}



$index = '';
$categorias = '';
$cursos = '';
$sobre = '';
$linguagens = '';
$contatos = '';

$url = basename($_SERVER['PHP_SELF'],'.php');

if($url == "index"){
  $index = 'active';
}

if($url == "categorias"){
  $categorias = 'active';
}

if($url == "cursos" || $url == "lista-cursos" || $url == "pacotes" || $url == "formacoes"  || $url == "sistemas" || $url == "cursos-2021" || $url == "cursos-2022"){
  $cursos = 'active';
}


if($url == "sobre" || $url == "planos" || $url == "parcerias" || $url == "perguntas" || $url == "politica" || $url == "termos" ){
  $sobre = 'active';
}


if($url == "linguagens"){
  $linguagens = 'active';
}

if($url == "contatos"){
  $contatos = 'active';
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

      <?php if(@$palavras_chaves == ""){ ?>
      <meta name="keywords" content="cursos, Ensino">
      <?php }else{ ?>
      <meta name="keywords" content="<?php echo $palavras_chaves; ?>">
      <?php } ?>

      <?php if(@$nome_curso_titulo == ""){ ?>
      <title><?php echo $nome_sistema ?></title>
      <?php }else{ ?>
      <title><?php echo $nome_curso_titulo; ?></title>
      <?php } ?>



    
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="./scss/style.css">
    <link rel="shortcut icon" href="sistema/img/favicon.ico" type="image/x-icon">
   
    
</head>

<body id="wrapper">

    <header>
        <a href="./index.php"> <img class="logo-header" src="./img/logo.png" alt="logo" height="115px"></a>
        <div class="header-right">
            <div class="contact-header">
                <div class="contact-details">
                    <p>contato@gmgeducação.com.br</p>
                    <p><strong>(21) 00000-0000</strong></p>
                </div>
                <div>
                    
                    <ul class="social-media-header">
                        <li><a href="/"><img src="./img/instagram.png" alt="instagram" width="30px" height="30px"></a>
                        </li>
                        <li><a href="/"><img src="./img/facebook.png" alt="facebook" width="30px" height="30px"></a>
                        </li>
                        <li><a href="/"><img src="./img/whatsapp.png" alt="whatsapp" width="30px" height="30px"></a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="menu-header-dilistav">
                <button class="btn-hamburguer" aria-expanded="false" aria-controls="menu">Menu</button>
                <ul class="menu-header lista" >
                  <li><a href="./sobre.php">SOBRE NÓS</a></li>
                    <li><a href="./cursos.php">CURSOS</a></li>
                    <li><a href="./rhmais.php">RH MAIS</a></li>
                    <li class="login">
                        <a href="/"> ENTRE / INSCREVA-SE</a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    <!--/.nav-ends -->


    <div id="listar-cab"></div>


    <div id="area-conteudo">


    <script type="text/javascript">
      
function listarCab(pagina){
  console.log(pagina)

  var busca = $("#buscar_cab").val();
    $.ajax({
        url: "script/ajax-listar-cursos-cab.php",
        method: 'POST',
        data: {busca, pagina},
        dataType: "html",

        success:function(result){
          
            $("#listar-cab").html(result);
            if(result.trim() != ""){              
             document.getElementById('area-conteudo').style.display = 'none';
            }else{
              document.getElementById('area-conteudo').style.display = 'block';
            }
        }
    });
}
    </script>







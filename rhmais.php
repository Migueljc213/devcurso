<?php 
require_once("cabecalho.php");
?>

<main>
        <article class="background-cadastrar">
            <div class="container-cadastrar">
                <div class="titulo-cadastrar">
                    <img src="./img/iconeRegistro.svg" alt="" width="150px" height="150px">
                    <h1 class="titulos">cadastre seu currículo</h1>
                </div>
                <form class="cadastrar-form" action="/" method="post">
                    <input type="text" name="nome-register" id="nome-register" placeholder="Nome" required></input>
                    <input type="number" name="cpf" id="cpf" placeholder="CPF" required></input>
                    <input type="text" name="empresa" id="empresa" placeholder="Empresa"></input>
                    <input type="number" name="cnpj" id="cnpj" placeholder="CNPJ" required></input>
                    <input type="text" name="treinamento" id="treinamento" placeholder="Treinamento"></input>
                    <input type="text" name="contato" id="contato" placeholder="Contato + DDD" required></input>
                    <input type="email" name="email-register" id="email-register" placeholder="Email" required></input>
                    <input type="text" name="interesse" id="" placeholder="Área de interesse"></input>
                    <button class="button register-button" type="submit">Enviar</button>
                </form>
            </div>
        </article>
    </main>

        <article class="background-novidades">
            <div class="container container-novidades">
                <form action="" class="pesquisa">
                    <button type="submit" >🔎︎</button>
                    <input type="text" class="seach-bar" name="seach-bar" placeholder="ENCONTRE UMA VAGA">
                </form>
                <h1 class="titulos titulo-novidades">NOVIDADES</h1>
                <div class="row grid-novidades">
                    <div class=" col-lg-6">
                        <img src="./img/operador01.svg" alt="">
                    </div>
                    <div class=" col-lg-6">
                        <img src="./img/tecnico02.svg" alt="">
                    </div>
                    <div class=" col-lg-6">
                        <img src="./img/recursoshumanos03.svg" alt="">
                    </div>
                    <div class=" col-lg-6">
                        <img src="./img/mecanico04.svg" alt="">
                    </div>
                </div>
            </div>
        </article>
        <article>
            <div class="container grid-vagas">
                <h1 class="titulos titulo-vagas">VAGAS</h1>
                <div class="row ">
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img01.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img02.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img03.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img04.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img01.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img02.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img03.png" alt="">
                    </div>
                    <div class="col-md-5 col-lg-4 col-xxl-3">
                        <img src="./img/cursos-img04.png" alt="">
                    </div>
                </div>
                <a href="" class="button button-mais-vagas">MAIS VAGAS</a>
            </div>
        </article>
</body>






<?php 

require_once("rodape.php");

?>

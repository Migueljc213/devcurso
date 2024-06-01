<?php 
require_once("cabecalho.php");
?>

<main>
        <article class="background-register">
            
            <div class="container-register">
                <div class="titulo-register">
                    <img src="./img/iconeForm.png" width="40px" height="40px">
                    <h4>Gostaria de receber as últimas notícias? Inscreva-se agora!</h4>
                </div>
                <form class="register-form" action="/" method="post">
                    <input type="text" name="nome-register" id="nome-register" placeholder="Nome" required></input>
                    <input type="text" name="contato" id="contato" placeholder="Contato + DDD" required></input>
                    <input type="email" name="email-register" id="email-register" placeholder="Email" required></input>
                    <input type="text" name="interesse" id="" placeholder="Área de interesse"></input>
                    <button class="button register-button" type="submit">INSCREVA-SE</button>
                </form>
            </div>
        </article>
        <div class="espaco">

        </div>
        <article id="sobre" class="background-sobre ">
            <img class="soldador-img" src="./img/Foto Soldador.svg" alt="Soldador" width="500px">
            <div class="container-sobre">
                <h1 class="titulos">SOBRE NÓS</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                <a href="./sobre.html" class="button sobre-button">SAIBA MAIS</a>
            </div>
        </article>
    </main>
    <article id="cursos" class="background-cursos">
        <div class="container-cursos">
            <h1 class="titulos">ULTIMOS LANÇAMENTOS</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Quis ipsum suspendisse ultrices gravida. <br>
                Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
            
                <ul class="grid-itens-cursos">
                <?php 
                    $query = $pdo->query("SELECT * FROM cursos where status = 'Aprovado' and sistema = 'Não' ORDER BY id desc limit 6");
                    $res = $query->fetchAll(PDO::FETCH_ASSOC);
                    $total_reg = @count($res);
                    if($total_reg > 0){
                        for($i=0; $i < $total_reg; $i++){
                            $id = $res[$i]['id'];
                            $nome = $res[$i]['nome'];
                            $desc_rapida = $res[$i]['desc_rapida'];      
                            $valor = $res[$i]['valor'];     
                            $foto = $res[$i]['imagem']; 
                            $promocao = $res[$i]['promocao'];
                            $url = $res[$i]['nome_url'];
                            $desc_rapida = mb_strimwidth($desc_rapida, 0, 20, "...");

                            $valorF = number_format($valor, 2, ',', '.');    
                            $promocaoF = number_format($promocao, 2, ',', '.');
                            if($promocao > 0){
                                $ativo = '';
                                $ativo2 = 'ocultar';
                            }else{
                                $ativo = 'ocultar';
                                $ativo2 = '';
                            }                    
                    

                ?>
                    <li class="grid-item">
                            <a href="curso-de-<?php echo $url ?>" > <img src="sistema/painel-admin/img/cursos/<?php echo $foto ?>" alt=""  width="290px"></a> 
                    </li>
                       <?php 
                            } //fim for
                        } // fim if totalreg
                       ?> 
                </ul>
            <a href="./cursos" class="button cursos-button">CONHEÇA MAIS</a>
        </div>
    </article>

    <section id="rh" class="background-rh">
        <img class="aluna-img" src="./img/Aluna.svg" alt="aluna" width="500px">
        <div class="container-rh">
            <h1 class="titulos">RH MAIS</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. 
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
            <a href="./rhmais.html" class="button button-rh">SAIBA MAIS</a>
        </div>
    </section>


    <article class="background-contato">
        <div class="container-contato">
            <h1 class="titulos">CONTATO</h1>
            <h2>Lorem Ipsum sit dolor</h2>
            <div class="card-contato">
                <form class="form-contato" action="" method="post">
                    <input type="text" name="nome-contato" id="nome-contato" placeholder="Nome">
                    <input type="email" name="email-contato" id="email-contato" placeholder="Email">
                    <input type="number" name="telefone-contato" id="telefone-contato" placeholder="Telefone">
                    <textarea name="mensagem" id="mensagem" placeholder="Mensagem" rows="8" cols="50"></textarea>
                
                </form>
                <div class="endereco">
                    <p >RIO DE JANEIRO - R. Crispim Assis Pereira, 175 - São Geraldo, Rio de Janeiro - RJ, 27253-520</p>
                    <button type="submit">ENVIAR</button>
                    
                </div>
            </div>
        </div>
    </article>


<?php 
require_once("rodape.php");
?>


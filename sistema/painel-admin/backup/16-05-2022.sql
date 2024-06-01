-- TABLE: administradores
CREATE TABLE `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `administradores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('1', 'Hugo Vasconcelos', '000.000.000-00', '(31) 00000-0000', 'contato@hugocursos.com.br', '16-05-2022-10-21-44-eu.jpeg', 'Sim', '2022-03-07');
INSERT INTO `administradores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('3', 'Admin Teste', '333.333.333-33', '(33) 33333-3333', 'admin@hotmail.com', '08-03-2022-22-21-20-02-03-2022-09-59-04-Arthur.jpg', 'Sim', '2022-03-08');

-- TABLE: alertas
CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `alertas` (`id`, `titulo`, `descricao`, `link`, `imagem`, `video`, `data`) VALUES ('1', 'Lan�amento Portal EAD', 'fadfa fdaf asfdsafasfdas fdas fasfa fad fasds fdas fasf sdaf a fa fas<br>', 'cursos-do-pacote-portal-ead', '16-05-2022-18-20-11-recursos-grafico.png', 'https://www.youtube.com/embed/OE8Wz0-v5nc', '2022-05-16');
INSERT INTO `alertas` (`id`, `titulo`, `descricao`, `link`, `imagem`, `video`, `data`) VALUES ('2', 'Site em Manuten��o', 'Nosso site estar� em manuten��o ....<br>', '', 'sem-foto.png', '', '2022-05-16');

-- TABLE: alunos
CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `cartao` int(11) NOT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('12', 'Aluno Teste', '222.222.222-22', 'aluno@hotmail.com', '(01) 22222-2222', 'Rua 5', 'Belo Horizonte', '', '', '19-04-2022-21-25-52-02-03-2022-09-51-42-fabio.jpg', '2022-03-08', '7', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('13', 'Aluno Dois', '000.000.000-59', 'aluno2@hotmail.com', '(55) 55555-5555', 'Rua Guajajaras 140 Centro', 'Belo Horizonte', '', '', '08-03-2022-21-15-02-02-03-2022-09-51-42-fabio.jpg', '2022-03-08', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('15', 'Aluno de Teste', '', 'alunodeteste@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-04', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('16', 'Aluno de Teste4', '', 'alunodeteste4@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-04', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('17', 'Aluno de Teste5', '', 'alunodeteste5@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-04', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('18', 'Hugo Freitas', 'MG0125698875', 'hugovasconcelosf@hotmail.com', '31975275083', 'Rua X N�mero 50', 'Belo Horizonte', 'MG', 'Brasil', '13-04-2022-02-12-01-02-03-2022-09-51-42-fabio.jpg', '2022-04-04', '19', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('19', 'alunoparateste', '', 'alunoparateste@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-04', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('21', 'Paula', '', 'paula@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-11', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('22', 'Marcia Silva', '', 'marcia@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-12', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('23', 'Aluno 3', '', 'aluno3@hotmail.com', '325555685222', '', '', '', '', '13-04-2022-02-15-17-02-03-2022-09-46-32-teste.jpg', '2022-04-12', '10', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('26', 'Marcelo Aluno Teste', '', 'alunotestemarcelo@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-04-20', '0', '');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('27', 'Aluno teste 5', '', 'aluno5@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-05-16', '6', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('28', 'aluno6', '', 'aluno6@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2022-05-16', '0', 'Sim');

-- TABLE: aulas
CREATE TABLE `aulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_aula` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `link` varchar(150) DEFAULT NULL,
  `curso` int(11) NOT NULL,
  `sessao` int(11) NOT NULL,
  `sequencia_aula` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('1', '1', 'Introdu��o ao curso', 'https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '28', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('2', '2', 'Rodando o projeto', 'https://drive.google.com/file/d/1VZnnCgz6lnuyZpgZ-22u2892lM1vKmis/preview?usp=sharing', '28', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('3', '1', 'Introdu��o ao curso', 'https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '27', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('4', '2', 'Rodando o projeto', 'https://drive.google.com/file/d/1VZnnCgz6lnuyZpgZ-22u2892lM1vKmis/preview?usp=sharing', '27', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('5', '1', 'Introdu��o ao curso', 'https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '26', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('6', '2', 'Rodando o projeto', 'https://drive.google.com/file/d/1VZnnCgz6lnuyZpgZ-22u2892lM1vKmis/preview?usp=sharing', '26', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('7', '1', 'Introdu��o ao curso', 'https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '25', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('8', '2', 'Rodando o projeto', 'https://drive.google.com/file/d/1VZnnCgz6lnuyZpgZ-22u2892lM1vKmis/preview?usp=sharing', '25', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('9', '1', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('10', '2', 'Introdu��o ao curso', ' https://drive.google.com/file/d/1WfUkS4Zjy7Ikxj2FQ_moxI0bLoqm__uD/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('11', '3', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('12', '4', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('13', '5', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('14', '6', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('15', '7', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('16', '8', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('17', '9', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('18', '10', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('19', '11', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('20', '12', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('21', '13', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('22', '14', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('23', '15', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('24', '16', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('25', '17', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('26', '18', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('27', '19', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('28', '20', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('29', '21', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('30', '22', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('31', '23', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('32', '24', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('33', '25', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('34', '26', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('35', '27', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('36', '28', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('37', '29', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('38', '30', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('39', '31', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('40', '32', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('41', '33', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('42', '34', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('43', '35', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('44', '36', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('45', '37', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('46', '38', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('47', '39', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('48', '40', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('49', '41', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('50', '42', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('51', '43', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('52', '44', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('53', '45', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('54', '46', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('55', '47', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('56', '48', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('57', '49', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('58', '50', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('59', '51', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('60', '52', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('61', '53', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('62', '54', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('63', '55', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('64', '56', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('65', '57', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('66', '58', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('67', '59', 'Introdu��o ao curso', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('68', '60', 'Issssssssssssssssssss', ' https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '24', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('69', '3', 'Introdu��o ao curso', 'https://drive.google.com/file/d/126acozvEg_-y9-e7bUgp-WA68F1yUIe6/preview?usp=sharing', '28', '0', '0');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('77', '1', 'Aula 1', 'fdfsf', '29', '11', '1');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('79', '2', 'aaaa', 'fadfadsf', '29', '11', '2');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('80', '3', 'fdsfsa', 'fdasfdsa', '29', '11', '3');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('81', '1', 'fdsafdasf', 'fdsfdasfa', '29', '12', '4');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('83', '2', 'fegfgdf', 'grgdgdg', '29', '12', '5');

-- TABLE: avaliacoes
CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `curso` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
INSERT INTO `avaliacoes` (`id`, `nota`, `comentario`, `curso`, `aluno`, `data`) VALUES ('8', '5', 'Excelente curso!', '29', '25', '2022-04-13');
INSERT INTO `avaliacoes` (`id`, `nota`, `comentario`, `curso`, `aluno`, `data`) VALUES ('14', '5', 'fdsfdsfdsfsadf', '26', '9', '2022-04-20');
INSERT INTO `avaliacoes` (`id`, `nota`, `comentario`, `curso`, `aluno`, `data`) VALUES ('15', '5', 'Avalia��o do curso', '29', '20', '2022-04-20');

-- TABLE: banner_index
CREATE TABLE `banner_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(35) NOT NULL,
  `descricao` varchar(160) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('5', 'Estude em casa!', 'Nossos cursos s�o On-line e com acesso vital�cio, para voc� estudar quando e onde quiser!', '04-04-2022-11-43-13-banner-slide-1.jpg', '', 'Sim');
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('6', 'Curso com Certificado', 'Disponibilizamos certifica��o profissionalizante em todos nossos cursos! Otimize seu curr�culo ou utilize como horas extra-curriculares! ', '04-04-2022-13-27-26-banner-slide-2.jpg', '', 'Sim');
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('7', 'Suporte direto com Professor', 'Aqui voc� conta com exclusivo suporte direto com professor! Caminhamos com voc�, para que seu treinamento seja conclu�do com SUCESSO!', '04-04-2022-13-28-45-banner-slide-3.jpg', '', 'Sim');
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('8', 'Programe seu Futuro! ', 'J� s�o mais de 30 mil alunos formados! Venha voc� tamb�m fazer parte deste time e aproveitar as melhores oportunidades do mercado de trabalho!', '04-04-2022-13-28-07-banner-slide-4.jpg', '', 'Sim');

-- TABLE: banner_login
CREATE TABLE `banner_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `banner_login` (`id`, `nome`, `link`, `foto`, `ativo`) VALUES ('1', 'Portal Imobili�rio', 'http://hugocursos.com.br', '29-03-2022-00-36-54-banner-login.jpg', 'Sim');
INSERT INTO `banner_login` (`id`, `nome`, `link`, `foto`, `ativo`) VALUES ('2', 'Portal EAD', 'http://hugocursos.com.br', '29-03-2022-00-37-51-Almofada-lantejolas.jpg', 'N�o');

-- TABLE: categorias
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `nome_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('1', 'Programa��o WEB', 'Desenvolvimento WEB', '09-03-2022-00-02-54-02-03-2022-09-51-42-fabio.jpg', 'programacao-web');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('2', 'Design Gr�fico', 'Tudo na �rea', '09-03-2022-00-08-20-02-03-2022-09-46-45-katia.jpg', 'design-grafico');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('5', 'WEB Design', 'Tudo em WEB', 'sem-foto.png', 'web-design');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('6', 'Aplicativos Mobile', 'Desenvolvedor de Aplicativos', 'sem-foto.png', 'aplicativos-mobile');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('7', 'fdsfs', 'fdsfasf', 'sem-foto.png', 'fdsfs');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('8', 'fdsafdsaf', 'fadfdasfa', 'sem-foto.png', 'fdsafdsaf');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('9', 'fdasfas', 'fsdafas', 'sem-foto.png', '');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('10', 'fdasfadsf', 'sadfasdfas', 'sem-foto.png', 'fdasfadsf');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('11', 'fasfasfasdf', 'asfsdafasf', 'sem-foto.png', 'fasfasfasdf');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('12', 'fsdafsaf', 'safdfaf', 'sem-foto.png', 'fsdafsaf');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('13', 'fdsafdsfsdf', 'asdfdsafas', 'sem-foto.png', 'fdsafdsfsdf');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('14', 'fafdsafas', 'fasfasdfas', 'sem-foto.png', 'fafdsafas');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('15', 'fdsafasf', 'fdsfasf', 'sem-foto.png', 'fdsafasf');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('16', 'fdfasf', 'fdsfsaf', 'sem-foto.png', 'fdfasf');

-- TABLE: config
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_sistema` varchar(50) NOT NULL,
  `tel_sistema` varchar(20) NOT NULL,
  `email_sistema` varchar(50) NOT NULL,
  `cnpj_sistema` varchar(25) DEFAULT NULL,
  `tipo_chave_pix` varchar(25) DEFAULT NULL,
  `chave_pix` varchar(100) DEFAULT NULL,
  `logo` varchar(20) NOT NULL,
  `icone` varchar(20) NOT NULL,
  `logo_rel` varchar(20) NOT NULL,
  `qrcode_pix` varchar(20) DEFAULT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `instagram` varchar(120) DEFAULT NULL,
  `youtube` varchar(120) DEFAULT NULL,
  `itens_pag` int(11) NOT NULL,
  `video_sobre` varchar(100) DEFAULT NULL,
  `itens_relacionados` int(11) NOT NULL,
  `aulas_liberadas` int(11) NOT NULL,
  `desconto_pix` int(11) NOT NULL,
  `email_adm_mat` varchar(5) DEFAULT NULL,
  `cartoes_fidelidade` int(11) NOT NULL,
  `taxa_boleto` decimal(8,2) NOT NULL,
  `taxa_mp` decimal(8,2) NOT NULL,
  `taxa_paypal` decimal(8,2) NOT NULL,
  `valor_max_cartao` decimal(8,2) NOT NULL,
  `total_emails_por_envio` int(11) NOT NULL,
  `intervalo_envio_email` int(11) NOT NULL,
  `script_dia` date DEFAULT NULL,
  `dias_email_matricula` int(11) NOT NULL,
  `dias_excluir_matricula` int(11) NOT NULL,
  `professor_cad` varchar(5) NOT NULL,
  `comissao_professor` int(11) NOT NULL,
  `dia_pgto_comissao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `config` (`id`, `nome_sistema`, `tel_sistema`, `email_sistema`, `cnpj_sistema`, `tipo_chave_pix`, `chave_pix`, `logo`, `icone`, `logo_rel`, `qrcode_pix`, `facebook`, `instagram`, `youtube`, `itens_pag`, `video_sobre`, `itens_relacionados`, `aulas_liberadas`, `desconto_pix`, `email_adm_mat`, `cartoes_fidelidade`, `taxa_boleto`, `taxa_mp`, `taxa_paypal`, `valor_max_cartao`, `total_emails_por_envio`, `intervalo_envio_email`, `script_dia`, `dias_email_matricula`, `dias_excluir_matricula`, `professor_cad`, `comissao_professor`, `dia_pgto_comissao`) VALUES ('1', 'Portal Hugo Cursos', '(31) 97527-5084', 'contato@hugocursos.com.br', '11.111.111/1111-11', 'CNPJ', 'contato@hugocursos.com.br', 'logo.png', 'favicon.ico', 'logo_rel.jpg', 'qrcode.jpg', 'https://www.facebook.com/hugo.vasconcelos.940', 'https://www.instagram.com/portal_hugo_cursos/', 'https://www.youtube.com/channel/UCawdQwVpEcbcVpEfwAmbx9Q', '12', 'https://www.youtube.com/embed/xP_0xUytm7c', '8', '2', '5', 'Sim', '5', '3.45', '3.03', '7.50', '100.00', '480', '70', '2022-05-16', '3', '30', 'N�o', '20', '20');

-- TABLE: cupons
CREATE TABLE `cupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
INSERT INTO `cupons` (`id`, `codigo`, `valor`) VALUES ('14', 'CUPOM20', '20.00');

-- TABLE: cursos
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) NOT NULL,
  `desc_rapida` varchar(40) NOT NULL,
  `desc_longa` text DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `professor` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `carga` int(11) NOT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `arquivo` varchar(150) DEFAULT NULL,
  `ano` int(11) NOT NULL,
  `palavras` varchar(255) DEFAULT NULL,
  `grupo` int(11) NOT NULL,
  `nome_url` varchar(150) NOT NULL,
  `pacote` varchar(100) DEFAULT NULL,
  `sistema` varchar(5) NOT NULL,
  `link` varchar(150) DEFAULT NULL,
  `tecnologias` varchar(150) DEFAULT NULL,
  `promocao` decimal(8,2) NOT NULL,
  `matriculas` int(11) NOT NULL,
  `comissao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('24', 'Gest�o de Contratos', 'Portal Imobili�rio', 'O curso de Gest�o de Contratos possui 68 aulas, neste curso voc� vai aprender a gerar laudos de vistorias, contratos de compra e venda j� com os dados dos compradores / propriet�rios e os dados dos im�veis, vai aprender tamb�m gerar recibos personalizados, ficha de capta��o de im�veis, proposta de compra e loca��o, este � o nono e �ltimo m�dulo do sistema imobili�rio, concluindo assim todo o projeto, o ideal � fazer passo a passo para criar o sistema do zero.<br>', '249.99', '2', '1', '04-04-2022-15-52-34-80.jpg', 'Aprovado', '0', '', '', '2022', '', '2', 'gestao-de-contratos', '', 'N�o', 'http://google.com', 'Php Pdo e mysql', '0.00', '9', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('25', 'Site Imobili�rio', 'Portal Imobili�rio', 'O curso de Site para imobili�ria com PDO e Mysql possui 55 aulas, neste curso voc� vai aprender a pegar tudo que cadastramos no banco de dados nos m�dulos anteriores e construir o site a partir destes dados, vamos colocar galeria de imagens, slideshow para banners, filtros de diversos tipos para os im�veis e muito mais, lembrando que este � o oitavo curso do projeto, no total ser�o 9 cursos, o ideal � acompanhar na sequ�ncia para poder criar o sistema e o site 100% do zero.', '209.99', '2', '1', '04-04-2022-15-55-25-79.jpg', 'Aprovado', '25', '', '', '2022', 'portal imobili�ria, site imobili�ria , sistema imobili�ria , ', '2', 'site-imobiliario', '', 'N�o', '', 'Php Pdo e mysql', '0.00', '8', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('26', 'Boletos e Carn�s', 'Portal Imobili�rio', '<div>O curso de Boletos e Carn�s para sistemas possui 60 aulas, neste curso vamos aprender a gerar boleto para as cobran�as / contas � Receber e para as parcelas dos alugu�is, onde tamb�m teremos a op��o do carn� de pagamento com todas as parcelas e forma de pagamento via transa��o banc�ria e pix, faremos toda a integra��o dos boletos com o sistema do gerencianet, faremos tamb�m a automatiza��o para dar baixa nas parcelas e cobran�as de forma automatizada quando o boleto for aprovado, ainda neste m�dulo do treinamento voc� tamb�m aprender� a criar as fichas de capta��o dos im�veis com pdf, podendo assim usar como base para v�rios outros tipos de fichas, este � o s�timo m�dulo do projeto do sistema imobili�rio, � ideal fazer na sequ�ncia para criar do zero todo o projeto.<br></div>', '189.99', '2', '1', '04-04-2022-15-57-14-78.jpg', 'Aprovado', '25', '', '', '2022', 'portal imobili�ria, site imobili�ria , sistema imobili�ria , ', '2', 'boletos-e-carnes', '', 'N�o', '', 'Php Pdo e mysql', '0.00', '10', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('27', 'Gest�o de Cobran�as', 'Portal Imobili�rio', 'O Curso de Gest�o de Cobran�as com PHP e mysql possui 71 aulas, neste curso vamos aprender a filtrar os d�bitos / parcelas dos clientes, efetuar cobran�as via whatsapp, lembretes de pagamentos, vamos fazer tamb�m diversos tipos de relat�rios financeiros para o projeto, vendas, alugu�is, comiss�es, d�bitos, etc, lembrando que este � sexto m�dulo do projeto imobili�rio, � ideal acompanhar o passo a passo para montar o sistema do zero.<br>', '149.99', '2', '1', '04-04-2022-15-59-04-77.jpg', 'Aprovado', '25', '', '', '2022', 'portal imobili�ria, site imobili�ria , sistema imobili�ria , ', '2', 'gestao-de-cobrancas', '', 'N�o', '', '', '0.00', '17', '10');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('28', 'Controle de Parcelas e Comiss�es', 'Portal Imobili�rio', 'O curso de Controle de Parcelas e Comiss�es possui 62 aulas, neste curso vamos mostrar como gerar as vendas dos im�veis e os alugu�is, criando as contas a Pagar e Receber de forma autom�tica, bem como as parcelas dos inquilino e as comiss�es dos corretores e da imobili�ria, lembrando que este � o quinto m�dulo do projeto, o ideal � fazer na sequ�ncia para montar todo o sistema do zero.<br>', '119.99', '2', '1', '04-04-2022-16-00-57-76.jpg', 'Aprovado', '25', '', '', '2022', 'portal imobili�ria, site imobili�ria , sistema imobili�ria , ', '2', 'controle-de-parcelas-e-comissoes', '', 'N�o', '', 'Php Pdo e mysql', '0.00', '12', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('29', 'Portal de Cursos', 'PHP PDO e Mysql', 'fdsafdafa', '300.00', '2', '1', '12-04-2022-23-18-09-10-03-2022-13-42-49-83.jpg', 'Aprovado', '25', '', 'http://google.com', '2022', '', '1', 'portal-de-cursos', '', 'N�o', '', 'Html, css, bootstrap, php8, javascript, jquery', '250.00', '3', '10');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('30', 'Sistema Escrit�rio', 'Somente Fontes', '', '270.00', '2', '1', 'sem-foto.png', 'Aprovado', '0', '', '', '2022', '', '1', 'sistema-escritorio', '', 'Sim', '', '', '250.00', '0', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('31', 'Curso Boleto teste', '5 reais', '', '5.00', '2', '6', 'sem-foto.png', 'Aprovado', '0', '', '', '2022', '', '1', 'curso-boleto-teste', '', 'N�o', '', '', '0.00', '9', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('32', 'Curso MP 1 real', '1 real', '', '2.00', '2', '6', 'sem-foto.png', 'Aprovado', '0', '', '', '2022', '', '1', 'curso-mp-1-real', '', 'N�o', '', '', '1.00', '2', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('33', 'fafa', 'fdafdas', 'fadfa', '50.00', '2', '6', 'sem-foto.png', 'Aprovado', '0', '', '', '2022', '', '1', 'fafa', '', 'N�o', '', '', '60.00', '0', '30');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('34', 'Curso Gratuito', 'Curso Gratis', '', '0.00', '2', '6', 'sem-foto.png', 'Aprovado', '0', '', '', '2022', '', '1', 'curso-gratuito', '', 'N�o', '', '', '0.00', '0', '0');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('35', 'Curso Teste', 'teste', '', '60.00', '14', '6', 'sem-foto.png', 'Aprovado', '0', '', '', '2022', '', '1', 'curso-teste', '', 'N�o', '', '', '0.00', '2', '20');

-- TABLE: cursos_pacotes
CREATE TABLE `cursos_pacotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `id_pacote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('1', '1', '1');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('9', '6', '1');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('10', '1', '3');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('11', '3', '3');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('12', '4', '3');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('15', '24', '9');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('16', '25', '9');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('17', '26', '9');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('18', '27', '9');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('19', '28', '9');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('20', '28', '10');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('21', '24', '10');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('22', '27', '10');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('23', '26', '10');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('24', '25', '10');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('25', '28', '11');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('26', '27', '11');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('27', '26', '11');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('28', '24', '12');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('29', '25', '12');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('30', '24', '13');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('31', '26', '13');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('32', '28', '13');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('33', '24', '14');
INSERT INTO `cursos_pacotes` (`id`, `id_curso`, `id_pacote`) VALUES ('34', '25', '14');

-- TABLE: emails
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `enviar` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('1', 'joaopaulo@hotmail.com', 'Jo�o Paulo', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('2', 'joaopaulo2@hotmail.com', 'Jo�o Paulo x', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('3', 'aaa@hotmail.com', 'aaaaaaaaaa', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('4', 'alunotestemarcelo@hotmail.com', 'Marcelo Aluno Teste', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('5', 'hugovasconcelosf@hotmail.com', 'Hugo Freitas', 'n�o');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('6', 'aluno5@hotmail.com', 'Aluno teste 5', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('7', 'aluno6@hotmail.com', 'aluno6', 'sim');

-- TABLE: envios
CREATE TABLE `envios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `final` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `envios` (`id`, `data`, `final`, `assunto`, `mensagem`, `link`) VALUES ('1', '2022-04-20 12:49:53', '0', 'AAAAA', 'fsdfdsfdsfds', 'cursos-do-pacote-aplicativo-financeiro');

-- TABLE: grupos
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `grupos` (`id`, `nome`) VALUES ('1', 'Portal EAD');
INSERT INTO `grupos` (`id`, `nome`) VALUES ('2', 'Portal Imobili�rio');

-- TABLE: linguagens
CREATE TABLE `linguagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('2', 'Delphi', 'fdsadfas', '30-03-2022-00-30-24-10-03-2022-13-42-49-83.jpg', 'delphi');
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('4', 'PHP', 'dfsafasfs', '30-03-2022-00-30-11-10-03-2022-13-42-49-83.jpg', 'php');
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('6', 'fdsafda', 'aaaaaaaaaaa', '30-03-2022-00-29-34-10-03-2022-13-42-49-83.jpg', 'fdsafda');
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('7', 'CSharp', 'fafafsdfaf', '30-03-2022-00-30-37-10-03-2022-13-42-49-83.jpg', 'csharp');

-- TABLE: matriculas
CREATE TABLE `matriculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `aluno` varchar(20) NOT NULL,
  `professor` varchar(20) NOT NULL,
  `aulas_concluidas` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `pacote` varchar(5) NOT NULL,
  `alertado` varchar(5) DEFAULT NULL,
  `valor_cupom` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `forma_pgto` varchar(25) NOT NULL,
  `boleto` varchar(25) DEFAULT NULL,
  `id_pacote` int(11) NOT NULL,
  `data_conclusao` date DEFAULT NULL,
  `total_recebido` decimal(8,2) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('4', '13', '20', '2', '1', '229.99', '2022-03-18', 'Matriculado', 'Sim', '', '0.00', '229.99', 'Boleto', '428872330', '0', '', '226.50', 'Pagamento Boleto');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('5', '9', '20', '2', '1', '229.99', '2022-04-18', 'Matriculado', 'Sim', '', '0.00', '229.99', 'Boleto', '428879924', '0', '', '226.54', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('6', '31', '20', '2', '1', '5.00', '2022-05-16', 'Matriculado', 'N�o', 'sim', '0.00', '5.00', 'Pix', '428873453', '0', '', '5.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('8', '32', '25', '2', '1', '1.00', '2022-04-20', 'Matriculado', 'N�o', '', '0.00', '1.00', 'Pix', '', '0', '', '1.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('9', '29', '25', '2', '1', '250.00', '2022-04-18', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '0', '', '0.00', 'Cart�o Fidelidade');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('10', '29', '20', '2', '5', '250.00', '2022-04-18', 'Finalizado', 'N�o', '', '10.00', '0.00', '', '429006758', '0', '', '0.00', 'Cart�o Fidelidade');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('13', '25', '25', '2', '1', '209.99', '2022-04-18', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '0', '', '0.00', 'Cart�o Fidelidade');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('14', '24', '25', '2', '1', '249.99', '2022-04-20', 'Matriculado', 'N�o', '', '0.00', '249.99', '', '', '0', '', '0.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('15', '15', '20', '2', '1', '600.00', '2022-04-20', 'Matriculado', 'Sim', '', '0.00', '600.00', 'Pix', '', '0', '', '600.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('32', '28', '20', '2', '1', '0.00', '2022-04-19', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '9', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('33', '27', '20', '2', '2', '0.00', '2022-04-19', 'Finalizado', 'N�o', '', '0.00', '0.00', '', '', '9', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('34', '26', '20', '2', '1', '0.00', '2022-04-19', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '9', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('35', '25', '20', '2', '1', '0.00', '2022-04-19', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '9', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('36', '24', '20', '2', '60', '0.00', '2022-04-19', 'Finalizado', 'N�o', '', '0.00', '0.00', '', '', '9', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('37', '10', '20', '2', '1', '299.99', '2022-02-19', 'Matriculado', 'Sim', '', '0.00', '299.99', '', '', '0', '', '299.99', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('38', '32', '20', '2', '0', '1.00', '2022-04-20', 'Finalizado', 'N�o', '', '0.00', '1.00', 'MP', '', '0', '', '0.97', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('39', '33', '25', '14', '1', '60.00', '2022-04-19', 'Matriculado', 'N�o', '', '0.00', '60.00', 'Pix', '', '0', '', '60.00', 'Nenhuma!');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('40', '29', '9', '2', '1', '250.00', '2022-04-20', 'Matriculado', 'N�o', '', '0.00', '250.00', 'Pix', '429348816', '0', '', '240.00', 'Nenhuma');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('41', '13', '9', '2', '1', '229.99', '2022-04-20', 'Matriculado', 'Sim', '', '0.00', '229.99', 'Pix', '', '0', '', '229.99', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('48', '25', '9', '2', '1', '209.99', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '209.99', 'Pix', '', '0', '', '209.99', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('49', '34', '20', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '0', '', '0.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('50', '34', '9', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '0', '', '0.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('58', '13', '30', '2', '1', '229.99', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '229.99', 'Boleto', '428879924', '0', '', '226.54', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('62', '12', '30', '2', '1', '249.99', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '249.99', 'Boleto', '428879924', '0', '', '246.54', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('65', '11', '30', '2', '1', '279.99', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '279.99', 'Boleto', '428879924', '0', '', '276.54', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('69', '11', '25', '2', '1', '279.99', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '279.99', 'Pix', '', '0', '', '279.99', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('70', '26', '25', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '11', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('71', '27', '25', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '11', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('72', '28', '25', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '11', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('73', '35', '25', '14', '1', '60.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '60.00', 'Pix', '', '0', '', '60.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('74', '11', '9', '2', '1', '279.99', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '279.99', 'Pix', '', '0', '', '279.99', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('75', '26', '9', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '11', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('76', '27', '9', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '11', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('77', '28', '9', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '11', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('78', '10', '30', '2', '1', '299.99', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '299.99', 'Pix', '', '0', '', '299.99', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('79', '25', '30', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '10', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('80', '26', '30', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '10', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('81', '27', '30', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '10', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('82', '24', '30', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '10', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('83', '28', '30', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '10', '', '0.00', 'Pacote');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('84', '18', '25', '14', '1', '250.00', '2022-05-16', 'Matriculado', 'Sim', '', '0.00', '250.00', 'Pix', '', '0', '', '250.00', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`) VALUES ('85', '34', '25', '2', '1', '0.00', '2022-05-16', 'Matriculado', 'N�o', '', '0.00', '0.00', '', '', '0', '', '0.00', '');

-- TABLE: pacotes
CREATE TABLE `pacotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) NOT NULL,
  `desc_rapida` varchar(40) NOT NULL,
  `desc_longa` text DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `professor` int(11) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `grupo` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `palavras` varchar(255) DEFAULT NULL,
  `nome_url` varchar(150) NOT NULL,
  `video` varchar(150) DEFAULT NULL,
  `linguagem` int(11) NOT NULL,
  `promocao` decimal(8,2) NOT NULL,
  `matriculas` int(11) NOT NULL,
  `comissao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('9', 'Pacote Imobili�rio', 'Portal Imobili�rio', '<div><span style=\"background-color: rgb(253, 253, 253); color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Est� buscando desenvolver sistemas completos? do zero? ou est� buscando um sistema completo voltado para imobili�rias? Se sim est� no lugar certo, aqui voc� ir� aprender a desenvolver um sistema e um site integrado do zero, passo a passo, bem detalhado, mesmo que n�o seja programador voc� ir� conseguir seguir todo treinamento e construir seu sistema, lembrando que tamb�m j� vem pronto todo o projeto caso queira apenas instalar para uso, este sistema tem toda gest�o necess�ria para uma imobili�ria, cadastro de corretores, im�veis, financeiro com contas a pagar e receber, controle de parcelas dos alugu�is, vendas, comiss�es, relat�rios de diversos tipos, contratos, recibos, laudos, vistorias, tudo que voc� vai precisar para gerenciar de forma profissional uma imobili�ria, assista ao v�deo demonstrativo para ver tudo que possui neste sistema, qualquer d�vida entre em contato conosco, adquira j� nosso treinamento e comece a criar sistemas completos.</span><br></div>', '249.99', '2', '04-04-2022-16-38-34-PORTAL-IMOBILIARIO.jpg', '2', '2022', 'portal imobili�ria, site imobili�ria , sistema imobili�ria , ', 'pacote-imobiliario', 'https://www.youtube.com/embed/_8k65K8PzAw', '4', '229.99', '4', '0');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('10', 'Pacote Igreja', 'Sistema Igreja', '<span style= color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont,   segoe=   ui ,=   roboto,=    helvetica=   neue ,=   arial,=   sans-serif,=    apple=   color=   emoji ,=    segoe=   ui=   symbol ,=    noto=   emoji ;=   font-size:=   14px;=   text-align:=   justify;=   background-color:=   rgb(253,=   253,=   253); =  >Est� buscando um sistema completo para gerenciar igrejas? Ent�o acaba de encontrar, com este sistema voc� vai poder gerenciar igrejas (Sede e Filiais), membros, pastores, �rea da secretaria, controle de c�lulas, grupos, eventos, prega��es, controlar o financeiro (D�zimos, Ofertas, Doa��es, Vendas, Contas � Pagar), fazer todo o controle de patrim�nio da igreja, envio e anexos de arquivos, presta��es de contas, relat�rios e muito mais, tudo que sua igreja necessita para que tenha um controle simples e bem organizado de tudo, tudo isso � montado em um treinamento do zero em 8 cursos sequenciais, onde com base neste treinamento voc� estar� apto a desenvolver v�rios outros tipos de sistemas web, al�m das aulas voc� receber� o c�digo fonte com o sistema j� finalizado caso n�o tenha interesse em cri�-lo passo a passo.</span>', '329.99', '2', '04-04-2022-16-56-32-PACOTE-SISTEMA-IGREJA.jpg', '1', '2022', 'sistemas para igreja, sistema web para igreja, criar sistemas web, desenvolvimento web, secretaria igreja, sistema secretaria igreja', 'pacote-igreja', 'https://www.youtube.com/embed/tFekNhJt3Lk', '4', '299.99', '1', '15');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('11', 'Pacote Escrit�rio', 'Sistema Escrit�rio', '<span style= color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont,   segoe=   ui ,=   roboto,=    helvetica=   neue ,=   arial,=   sans-serif,=    apple=   color=   emoji ,=    segoe=   ui=   symbol ,=    noto=   emoji ;=   font-size:=   14px;=   text-align:=   justify;=   background-color:=   rgb(253,=   253,=   253); =  >Est� buscando um sistema completo para gerenciar Escrit�rios?</span><br style= color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont,   segoe=   ui ,=   roboto,=    helvetica=   neue ,=   arial,=   sans-serif,=    apple=   color=   emoji ,=    segoe=   ui=   symbol ,=    noto=   emoji ;=   font-size:=   14px;=   text-align:=   justify;=   background-color:=   rgb(253,=   253,=   253); =  ><span style= color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont,   segoe=   ui ,=   roboto,=    helvetica=   neue ,=   arial,=   sans-serif,=    apple=   color=   emoji ,=    segoe=   ui=   symbol ,=    noto=   emoji ;=   font-size:=   14px;=   text-align:=   justify;=   background-color:=   rgb(253,=   253,=   253); =  >Ent�o acaba de encontrar, com este sistema voc� vai poder gerenciar Controle financeiro, Rh, gest�o de tarefas, relat�rios administrativos, gr�ficos Dashboards e muito mais, tudo que um escrit�rio necessita para que tenha um controle simples e bem organizado de tudo!</span><br style= color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont,   segoe=   ui ,=   roboto,=    helvetica=   neue ,=   arial,=   sans-serif,=    apple=   color=   emoji ,=    segoe=   ui=   symbol ,=    noto=   emoji ;=   font-size:=   14px;=   text-align:=   justify;=   background-color:=   rgb(253,=   253,=   253); =  ><span style= color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont,   segoe=   ui ,=   roboto,=    helvetica=   neue ,=   arial,=   sans-serif,=    apple=   color=   emoji ,=    segoe=   ui=   symbol ,=    noto=   emoji ;=   font-size:=   14px;=   text-align:=   justify;=   background-color:=   rgb(253,=   253,=   253); =  >Tudo isso � montado em um treinamento do zero em 8 cursos sequenciais, onde com base neste treinamento voc� estar� apto a desenvolver v�rios outros tipos de sistemas web, al�m das aulas voc� receber� o c�digo fonte com o sistema j� finalizado caso n�o tenha interesse em cri�-lo passo a passo.</span>', '279.99', '2', '04-04-2022-17-00-12-PACOTE-ESCRIT�RIO.jpg', '1', '2022', 'curso escritorio , curso seguranca , curso web , curso escritorios , curso sistema , php ', 'pacote-escritorio', 'https://www.youtube.com/embed/4ZViRefVaTU', '4', '0.00', '3', '22');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('12', 'Pacote Portal EAD', 'Portal EAD', '<div><span style=\"background-color: rgb(253, 253, 253); color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Deseja aprender programa��o na pr�tica e montar um portal de cursos completo com um site e sistema integrado? Se sim est� no lugar certo, neste pacote de cursos vou ensinar do zero como montar um portal EAD profissional, com diversos recursos para poder gerenciar da melhor forma poss�vel seus cursos, faremos cadastros de alunos e professores, comiss�es por professores, relat�rios de vendas, certificados, pagamentos com cart�o, boleto ou pix, libera��es autom�ticas, conte�do digital, �rea do aluno / �rea do professor / �rea do administrador, email marketing automatizado e muito mais, assista ao v�deo demonstrativo do projeto para ver tudo que esse portal oferece, aprenda j� como criar projetos grandes de forma profissional.</span><br></div>', '249.99', '2', '04-04-2022-17-03-02-PORTAL-EAD.jpg', '1', '2022', 'ead , portal ead', 'pacote-portal-ead', 'https://www.youtube.com/embed/nsn4jMFeta0', '4', '0.00', '1', '0');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('13', 'Pacote Aplicativo Financeiro', 'React Native com Mysql', 'Est� querendo desenvolver um aplicativo financeiro completo com vendas, compras, estoque, controle de contas � pagar, contas � receber, movimenta��es do caixa, cart�o de cr�dito, d�bito, controle de parcelas, recorr�ncia de cobran�as, notifica��es automatizadas, upload de fotos pela camera / galeria e muito mais? Se sim acaba de encontrar o projeto ideal, � um dos sistemas mais completos que temos, ele foi feito em React Native e Mysql, s�o 7 m�dulos criando do zero todo o Aplicativo, al�m das aulas tamb�m vem todos os arquivos fontes do projeto e o APP j� finalizado pronto para uso caso n�o tenha interesse em acompanhar as aulas de cria��o. Assista ao v�deo demonstrativo do Aplicativo para ver tudo que cont�m nele, qualquer d�vida estou a disposi��o.', '229.99', '2', '04-04-2022-17-06-05-PACOTE-REACT.jpg', '1', '2022', 'curso de react native, curso de react, aulas de react, react com mysql, aplicativos com react, aplicativos react native', 'pacote-aplicativo-financeiro', 'https://www.youtube.com/embed/nUChYb3Wbd0', '4', '0.00', '2', '24');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('15', 'Forma��o PHP', 'Tudo em PHP', '', '600.00', '2', 'sem-foto.png', '1', '2022', '', 'formacao-php', '', '4', '0.00', '1', '10');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('16', 'Pacot�o Cursos 2022', 'Todos deste Ano', 'fadfasfasfa', '999.99', '2', 'sem-foto.png', '1', '2022', '', 'pacotao-cursos-2022', '', '0', '0.00', '0', '15');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('17', 'dfafa', '4545', '', '50.00', '2', 'sem-foto.png', '1', '2022', '', 'dfafa', '', '0', '50.00', '0', '25');
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('18', 'Pacote Teste', 'teste', '', '250.00', '14', 'sem-foto.png', '1', '2022', '', 'pacote-teste', '', '0', '0.00', '1', '20');

-- TABLE: pagar
CREATE TABLE `pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data_pgto` date NOT NULL,
  `arquivo` varchar(150) DEFAULT NULL,
  `professor` int(11) NOT NULL,
  `curso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('3', 'Mensalidade Servidor', '25.00', '2022-04-19', '2022-04-19', 'N�o', '0000-00-00', '19-04-2022-18-39-29-09-11-2021-09-21-26-conta3.jpg', '0', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('4', 'Conta Teste', '600.00', '2022-04-19', '2022-04-19', 'Sim', '2022-04-19', '19-04-2022-18-16-43-09-11-2021-10-17-10-pdfteste.pdf', '0', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('5', 'Conta de Luz', '550.00', '2022-04-19', '2022-04-20', 'Sim', '2022-04-19', '19-04-2022-18-17-15-09-11-2021-12-04-29-pdfteste.zip', '0', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('7', 'Comiss�o', '15.00', '2022-05-16', '2022-06-05', 'N�o', '0000-00-00', 'sem-foto.png', '2', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('12', 'Comiss�o', '15.00', '2022-05-16', '2022-06-05', 'N�o', '0000-00-00', 'sem-foto.png', '2', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('13', 'Comiss�o', '15.00', '2022-05-16', '2022-05-20', 'N�o', '0000-00-00', 'sem-foto.png', '2', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('14', 'Comiss�o', '61.60', '2022-05-16', '2022-05-20', 'N�o', '0000-00-00', 'sem-foto.png', '2', '');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('15', 'Comiss�o', '61.60', '2022-05-16', '2022-05-20', 'N�o', '0000-00-00', 'sem-foto.png', '2', 'Pacote Escrit�rio');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('16', 'Comiss�o', '12.00', '2022-05-16', '2022-05-20', 'N�o', '0000-00-00', 'sem-foto.png', '14', 'Curso Teste');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('18', 'Comiss�o', '61.60', '2022-05-16', '2022-05-20', 'Sim', '2022-04-12', 'sem-foto.png', '14', 'Pacote Escrit�rio');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('19', 'Comiss�o', '45.00', '2022-05-16', '2022-05-20', 'N�o', '0000-00-00', 'sem-foto.png', '2', 'Pacote Igreja');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('20', 'Comiss�o', '50.00', '2022-05-16', '2022-05-20', 'Sim', '2022-05-16', 'sem-foto.png', '14', 'Pacote Teste');

-- TABLE: perguntas
CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aula` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `curso` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `data` date NOT NULL,
  `respondida` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('3', '5', 'Pergunta para o Curso de Site imobiliario', '25', '20', '2022-04-12', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('5', '8', 'Pergunta para o gestao', '24', '20', '2022-04-12', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('6', '5', 'aaaaaaaaaaaaa', '24', '20', '2022-04-12', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('10', '9', 'Nova pergunta fdaf dfdaf fsadfdsafsdafsdf afasf', '25', '20', '2022-04-13', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('12', '0', 'fdsafadsfasas', '25', '20', '2022-04-13', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('16', '0', 'fdafasfaf', '28', '20', '2022-04-13', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('18', '0', 'fafdafaf  fdfsfsf', '25', '20', '2022-04-13', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('19', '0', 'fdsafadsf', '29', '20', '2022-04-13', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('20', '6', 'dggdsgsfdgsdg', '25', '20', '2022-04-13', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('22', '0', 'dsafaafa  ', '29', '20', '2022-04-18', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('23', '0', 'fadfaf   fdsafsdfa      ', '25', '20', '2022-04-18', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('24', '0', 'fdasfdasf', '33', '25', '2022-04-19', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('25', '0', 'fdsfafa', '26', '9', '2022-05-16', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('26', '0', 'fdsafdasf', '35', '25', '2022-05-16', 'Sim');
INSERT INTO `perguntas` (`id`, `aula`, `pergunta`, `curso`, `aluno`, `data`, `respondida`) VALUES ('27', '0', 'fdsafdasf', '26', '20', '2022-05-16', 'N�o');

-- TABLE: professores
CREATE TABLE `professores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('2', 'Professor Teste', '555.555.555-55', '(33) 33333-3333', 'professor@hotmail.com', '08-03-2022-22-21-57-02-03-2022-09-46-45-katia.jpg', 'Sim', '2022-03-08');
INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('3', 'Professor Teste 2', '888.888.888-88', '(00) 00000-0000', 'professor2@hotmail.com', '09-03-2022-15-04-53-02-03-2022-09-46-32-teste.jpg', 'Sim', '2022-03-09');
INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('4', 'Professor Teste 5', '', '', 'professor5@hotmail.com', 'sem-perfil.jpg', 'Sim', '2022-05-16');

-- TABLE: receber
CREATE TABLE `receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data_pgto` date NOT NULL,
  `arquivo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `receber` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`) VALUES ('2', 'Conta teste', '60.00', '2022-04-19', '2022-04-19', 'N�o', '0000-00-00', '19-04-2022-18-58-13-19-04-2022-18-17-15-09-11-2021-12-04-29-pdfteste.zip');
INSERT INTO `receber` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`) VALUES ('3', 'Conta x', '600.00', '2022-04-19', '2022-04-19', 'Sim', '2022-04-19', '19-04-2022-18-58-39-09-11-2021-10-17-10-pdfteste.pdf');
INSERT INTO `receber` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`) VALUES ('4', 'fdsfa', '60.00', '2022-04-19', '0000-00-00', 'N�o', '0000-00-00', 'sem-foto.png');

-- TABLE: respostas
CREATE TABLE `respostas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resposta` varchar(500) NOT NULL,
  `curso` int(11) NOT NULL,
  `pessoa` int(11) NOT NULL,
  `data` date NOT NULL,
  `pergunta` int(11) NOT NULL,
  `funcao` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('12', 'fdafadf', '25', '20', '2022-04-13', '3', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('13', 'gdgdfgd', '25', '25', '2022-04-13', '3', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('14', 'fdsafsf', '25', '20', '2022-04-13', '3', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('15', 'fsdfsdf', '24', '20', '2022-04-13', '6', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('16', 'aaaa', '24', '20', '2022-04-13', '6', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('26', 'fdfdsfs', '0', '1', '2022-04-13', '16', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('27', 'fdfsfdsfds', '0', '1', '2022-04-13', '16', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('28', 'fdfdfa', '0', '1', '2022-04-13', '5', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('30', 'fdfdfds', '0', '1', '2022-04-13', '10', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('31', 'fdfdsf', '0', '1', '2022-04-13', '12', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('32', 'fdsfdsfs', '0', '1', '2022-04-13', '6', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('33', 'fdsfa\r\nfdsfasf\r\n\r\nfadf', '25', '20', '2022-04-13', '12', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('34', 'fafadf\r\nfdsaf\r\n\r\nfadfafa', '25', '20', '2022-04-13', '10', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('35', 'fsdafaffa gfgs', '25', '20', '2022-04-13', '18', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('36', 'fdsafdasfa', '29', '20', '2022-04-13', '19', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('37', 'afa', '29', '25', '2022-04-13', '19', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('39', 'tretretert', '25', '20', '2022-04-13', '20', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('40', 'tertertertert', '25', '20', '2022-04-13', '20', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('41', 'gfgfdggfdg', '0', '1', '2022-04-13', '18', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('42', 'tretretertre', '0', '1', '2022-04-13', '20', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('43', 'fdafdafafsfs', '0', '1', '2022-04-13', '19', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('44', 'fdsfdasf', '25', '20', '2022-04-18', '23', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('45', 'fdfdsfds', '0', '1', '2022-04-19', '24', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('46', 'sddfdf', '26', '9', '2022-05-16', '25', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('47', 'fsfafa', '25', '20', '2022-05-16', '23', 'Aluno');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('48', 'dfasfasf', '0', '2', '2022-05-16', '23', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('49', 'sfdsfdsfsfdsfdsf', '0', '2', '2022-05-16', '3', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('50', 'gfdgfgdg', '0', '2', '2022-05-16', '10', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('51', 'fsdfsfaf', '0', '2', '2022-05-16', '3', 'Professor');
INSERT INTO `respostas` (`id`, `resposta`, `curso`, `pessoa`, `data`, `pergunta`, `funcao`) VALUES ('52', 'fdsafdf', '0', '14', '2022-05-16', '26', 'Professor');

-- TABLE: sessao
CREATE TABLE `sessao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `curso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('6', 'M�dulo 1', '6');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('7', 'M�dulo 2', '6');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('8', 'M�dulo 3', '6');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('9', 'B�sico', '14');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('10', 'Avan�ado', '14');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('11', 'B�sico', '29');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('12', 'Avan�ado', '29');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('13', 'Outro', '29');

-- TABLE: usuarios
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `senha_crip` varchar(150) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('2', 'Hugo Vasconcelos', '000.000.000-00', 'contato@hugocursos.com.br', '123', '202cb962ac59075b964b07152d234b70', 'Administrador', '16-05-2022-10-21-44-eu.jpeg', '1', 'Sim', '2022-03-07');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('9', 'Aluno Teste', '222.222.222-22', 'aluno@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', '19-04-2022-21-25-52-02-03-2022-09-51-42-fabio.jpg', '12', 'Sim', '2022-03-08');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('10', 'Aluno Dois', '000.000.000-59', 'aluno2@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', '08-03-2022-21-15-02-02-03-2022-09-51-42-fabio.jpg', '13', 'Sim', '2022-03-08');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('13', 'Admin Teste', '333.333.333-33', 'admin@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Administrador', '08-03-2022-22-21-20-02-03-2022-09-59-04-Arthur.jpg', '3', 'Sim', '2022-03-08');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('14', 'Professor Teste', '555.555.555-55', 'professor@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Professor', '08-03-2022-22-21-57-02-03-2022-09-46-45-katia.jpg', '2', 'Sim', '2022-03-08');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('16', 'Professor Teste 2', '888.888.888-88', 'professor2@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Professor', '09-03-2022-15-04-53-02-03-2022-09-46-32-teste.jpg', '3', 'Sim', '2022-03-09');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('17', 'Aluno de Teste', '', 'alunodeteste@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '15', 'Sim', '2022-04-04');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('18', 'Aluno de Teste4', '', 'alunodeteste4@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '16', 'Sim', '2022-04-04');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('19', 'Aluno de Teste5', '', 'alunodeteste5@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '17', 'Sim', '2022-04-04');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('20', 'Hugo Freitas', 'MG0125698875', 'hugovasconcelosf@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', '13-04-2022-02-12-01-02-03-2022-09-51-42-fabio.jpg', '18', 'Sim', '2022-04-04');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('21', 'alunoparateste', '', 'alunoparateste@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '19', 'Sim', '2022-04-04');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('22', 'Aluno X', '', 'alunotestex@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '20', 'Sim', '2022-04-04');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('23', 'Paula', '', 'paula@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '21', 'Sim', '2022-04-11');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('24', 'Marcia Silva', '', 'marcia@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '22', 'Sim', '2022-04-12');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('25', 'Aluno 3', '', 'aluno3@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', '13-04-2022-02-15-17-02-03-2022-09-46-32-teste.jpg', '23', 'Sim', '2022-04-12');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('28', 'Marcelo Aluno Teste', '', 'alunotestemarcelo@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '26', 'Sim', '2022-04-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('29', 'Professor Teste 5', '', 'professor5@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Professor', 'sem-perfil.jpg', '4', 'Sim', '2022-05-16');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('30', 'Aluno teste 5', '', 'aluno5@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '27', 'Sim', '2022-05-16');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('31', 'aluno6', '', 'aluno6@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Aluno', 'sem-perfil.jpg', '28', 'Sim', '2022-05-16');


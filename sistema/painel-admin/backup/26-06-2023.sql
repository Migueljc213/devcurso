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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `administradores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('1', 'Vinicius Almeida', '103.030.697-40', '(24) 99941-7827', 'vinicius@devcurso.com.br', '15-06-2023-13-46-57-vini.jpg', 'Sim', '2022-03-07');
INSERT INTO `administradores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('4', 'Aurelio de Jesus', '000.000.000-00', '(24) 98843-1762', 'aurelio@devcurso.com.br', 'sem-perfil.jpg', 'Sim', '2023-06-15');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- TABLE: alternativas
CREATE TABLE `alternativas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso` int(11) NOT NULL,
  `pergunta` int(11) NOT NULL,
  `resposta` varchar(255) NOT NULL,
  `correta` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('10', '29', '5', 'Resposta 1', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('11', '29', '5', 'Resposta 2', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('12', '29', '5', 'Resposta 3', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('13', '29', '5', 'Resposta 4', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('14', '29', '6', 'aaaaaa', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('15', '29', '6', 'bbbb', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('16', '29', '6', 'cccc', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('17', '29', '6', 'dddd', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('18', '29', '7', 'fdafdaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('19', '29', '7', 'fdasfafasf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('20', '29', '7', 'fsfsdf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('22', '29', '7', 'fddfsfds', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('23', '31', '1', 'afsdafsd', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('24', '31', '1', 'fdasfas', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('25', '31', '1', 'fsdf', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('26', '31', '2', 'fdafdsaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('27', '31', '2', 'sdaafaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('28', '31', '2', 'dfadfasfas', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('29', '31', '8', 'afaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('30', '31', '8', 'fdafdasf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('31', '31', '8', 'dfsafsaf', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('32', '31', '9', 'sdafaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('33', '31', '9', 'fdsafdsaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('34', '31', '9', 'fdasfdafa', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('35', '26', '10', 'fdadfsa', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('36', '26', '10', 'dfsafsaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('37', '26', '10', 'fasdfasfs', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('38', '26', '10', 'fdasfasfas', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('39', '26', '11', 'dfsafsa', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('40', '26', '11', 'dasfasf', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('41', '26', '11', 'dfasfdsaf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('42', '26', '11', 'fdafasf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('43', '26', '12', 'dfafsdaf', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('44', '26', '12', 'dfsfafsa', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('45', '26', '12', 'dafdasfs', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('46', '26', '12', 'safsdafd', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('47', '26', '13', 'dfsasfsafa', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('48', '26', '13', 'dfadfasf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('49', '26', '13', 'dasfasf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('50', '26', '13', 'fdsafasf', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('51', '25', '14', 'a', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('52', '25', '14', 'b', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('53', '25', '14', 'c', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('54', '25', '15', 'a', 'Sim');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('55', '25', '15', 'b', '');
INSERT INTO `alternativas` (`id`, `curso`, `pergunta`, `resposta`, `correta`) VALUES ('56', '25', '15', 'c', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('33', 'VInicius Oliveira Almeida', '', 'gvweb.solucoes@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-15', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('34', 'Giselle Cristine Medeiros de Carvalho', '', 'gcmc21@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-15', '2', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('35', 'Lucas Calixto ', '', 'lucascalixto318@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-15', '2', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('36', 'Caique de Carvalho Sales', '', 'caiquedecarvalho226@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('37', 'Vinícius Dias', '13555994743', 'nive77bm@gmail.com', '24999485867', 'Rua Presbiteriana', 'Barra Mansa', 'Rio De Janeiro', 'Brazil', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('38', 'Eduardo Soares', '', 'eduardosoaresdematossilva@gmail.com', '24981456197', '', 'Barra Mansa', 'Rio de Janeiro', 'Brasil', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('39', 'Lucas Rocha', '20055512798', 'luckgamer077@gmail.com', '24998384368', 'Rua 1043 Bloco 180, 78', 'Volta Redonda', 'Rio de Janeiro', 'Brasil', '19-06-2023-08-11-22-cachorro-melancia.png', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('40', 'Guilherme Martinelli', '', 'guilhermemartalves@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('41', 'João Guilherme de Carvalho Bittencourt', '', 'salapegar2x10@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('42', 'Guilherme De Laia Eugênio ', '', 'guifro1@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('43', 'Marcos Antonio', '', 'marcosapabreujunior@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('44', 'Camila dos santos rolon', '', 'camila.rolon@aluno.faeterj-brm.faetec.rj.gov', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('45', 'Lidiane Aline Miguel da Silva', '208644955', 'lidialine12@gmail.com', '(24)992275656', 'Rua Dom Pedro I, 42 Ponte Alta', 'Volta Redonda', 'RJ', 'Brasil', 'sem-perfil.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('46', 'Maria Eduarda Lopes Ramos Brandão ', '17039516705', 'lopesbrandaomaria16@gmail.com', '24981327109', 'Rua Eduardo Junqueira, 202, Centro', 'Barra Mansa ', 'Rio de Janeiro ', 'Brasil ', '21-06-2023-00-42-23-049CC3B2-8ED1-492C-958C-FF56AA2DB1EB.jpeg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('47', 'Felipe Silveira Louzada', '144.196.477-01', 'felipe.louzada18@gmail.com', '+5524999063455', 'Rua Mauro Granato', 'Barra Mansa', 'RJ', 'Brasil', '19-06-2023-21-44-38-profile1.jpg', '2023-06-19', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('48', 'Bruna Piazera', '', 'piazerab@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('49', 'Milene Silva', '', 'Milene.silva@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('50', 'Emilly Rodrigues Diniz', '', 'emillydiniz631@gmaail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('51', 'Dilliany da Rocha Rodrigues Chiesse', '', 'dilli.rocha@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('52', 'Emilly Rodrigues Diniz', '', 'emillydiniz631@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('53', 'Tyffani Stefani de Freitas da Silva ', '', 'tyffani.silva@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('54', 'Izabel Cristina Souza', '', 'izabel.cristina@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('55', 'Gustavo Patrick dos Santos Pereira Daniel ', '', 'gustavopatrick2706@outlook.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('56', 'waleska Portella de Lacerda', '', 'waleska.portella@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('57', 'Fernanda Eloane Landim', '', 'fernandalandim@live.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('58', 'Telma Teixeira Mota', '', 'telma.teixeira@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('59', 'jenifer da silva sebastiao ', '', 'jeniferdassalves@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('60', 'VINICIUS EDUARDO PROCOPIO DOS SANTOS', '', 'vinicius.santos@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('61', 'yuri gonçalves chiesse', '', 'yuri.chiesse@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('62', 'Telma Teixeira Mota', '', 'telmatmota@hotmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('63', 'wellisson Francisco de Castro', '', 'wellisson.castro@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '0', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('64', 'Rosimara Ribeiro', '', 'rosimara.ribeiro@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('65', 'Angelo Lemos Teodoro', '', 'angelo.teodoro@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('66', 'Flavia Gurgel Inacio', '', 'flavia.gurgel@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('67', 'Jenifer da Silva Sebastiao', '', 'jenifer.alves@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('68', 'ivonete de paula carvalho francisco', '', 'ivonete.paula@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('69', 'Matheus de Souza Almeida', '', 'Matheus.almeida@ubm.br', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('70', 'Kleyton Gomes Pereira', '', 'kleytongp@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '2', 'Sim');
INSERT INTO `alunos` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cidade`, `estado`, `pais`, `foto`, `data`, `cartao`, `ativo`) VALUES ('71', 'Lucas Aragão Domingos', '', 'lucasaragao2904@gmail.com', '', '', '', '', '', 'sem-perfil.jpg', '2023-06-20', '1', 'Sim');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('97', '1', 'Introdução ', 'https://drive.google.com/file/d/112CLSwGbDvCg8d9f83BLlGl3Hj2EUWss/preview?usp=sharing', '29', '11', '1');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('98', '2', 'Instalação da IDE', 'https://drive.google.com/file/d/1zE8kFzWM0LuFjcmYBNUJz_oxPy4l8QNN/preview', '29', '11', '2');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('99', '3', 'Olá Mundo', 'https://drive.google.com/file/d/169uucoZ3y5Iumx1eRIxJM-siV3c_C0vB/preview', '29', '11', '3');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('100', '4', 'Comentários', 'https://drive.google.com/file/d/1KCx42PrWGxGFXsHQ0yyLE1v39h29F-fn/preview', '29', '11', '4');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('101', '5', 'Variáveis', 'https://drive.google.com/file/d/1R6NEZFoqcHY8yl0ISAdJ28ESkK7jAydv/preview', '29', '11', '5');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('102', '6', 'Mesclando Variáveis', 'https://drive.google.com/file/d/1WrIiSOLxl-f36qo3P9nC7s9aS6F7wb5y/preview', '29', '11', '6');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('103', '7', 'Manipulação de Strings', 'https://drive.google.com/file/d/1kf2zbz1emsgEM6jj9UsmmIqrtXwkUgfE/preview', '29', '11', '7');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('104', '8', 'Funções Numéricas', 'https://drive.google.com/file/d/1ZU6QbJkfcU5JKoH0abPmJmiBYK79YaaQ/preview', '29', '11', '8');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('105', '9', 'Funções Matemáticas', 'https://drive.google.com/file/d/18L4A8RYSgfuF44FIPEN-v1exxSZrZfzH/preview', '29', '11', '9');
INSERT INTO `aulas` (`id`, `num_aula`, `nome`, `link`, `curso`, `sessao`, `sequencia_aula`) VALUES ('106', '10', 'Array Introdução', 'https://drive.google.com/file/d/1jn0sMV4z1ZXS2OFACcChVSN7FDNws0I5/preview', '29', '11', '10');

-- TABLE: avaliacoes
CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `curso` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `avaliacoes` (`id`, `nota`, `comentario`, `curso`, `aluno`, `data`) VALUES ('16', '5', 'Até agora, estou adorando o curso.', '29', '37', '2023-06-26');

-- TABLE: banner_index
CREATE TABLE `banner_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(35) NOT NULL,
  `descricao` varchar(160) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('5', 'Estude em casa!', 'Nossos cursos são On-line e com acesso vitalício, para você estudar quando e onde quiser!', '15-06-2023-14-41-22-emcasa.png', '', 'Sim');
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('6', 'Curso com Certificado', 'Disponibilizamos certificação profissionalizante em todos nossos cursos! Otimize seu currículo ou utilize como horas extra-curriculares! ', '15-06-2023-14-37-09-certificado.png', '', 'Sim');
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('7', 'Suporte direto com Professor', 'Aqui você conta com exclusivo suporte direto com professor! Caminhamos com você, para que seu treinamento seja concluído com SUCESSO!', '15-06-2023-14-39-14-suporte.png', '', 'Sim');
INSERT INTO `banner_index` (`id`, `titulo`, `descricao`, `foto`, `link`, `ativo`) VALUES ('8', 'Programe seu Futuro! ', 'Já são mais de 1 mil alunos! Venha você também fazer parte deste time e aproveitar as melhores oportunidades do mercado de trabalho!', '15-06-2023-14-22-43-banner_index.png', '', 'Sim');

-- TABLE: banner_login
CREATE TABLE `banner_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `banner_login` (`id`, `nome`, `link`, `foto`, `ativo`) VALUES ('2', 'Portal EAD', 'http://brasmid.com.br', '15-06-2023-14-06-07-banner1.png', 'Sim');

-- TABLE: categorias
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `nome_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('1', 'Programação WEB', 'Full Stack', '15-06-2023-13-52-14-web.jpg', 'programacao-web');
INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('17', 'Programação Mobile', '', '16-06-2023-12-01-18-mobile.jpg', 'programacao-mobile');

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
  `questionario` varchar(5) NOT NULL,
  `media` int(11) NOT NULL,
  `verso` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `config` (`id`, `nome_sistema`, `tel_sistema`, `email_sistema`, `cnpj_sistema`, `tipo_chave_pix`, `chave_pix`, `logo`, `icone`, `logo_rel`, `qrcode_pix`, `facebook`, `instagram`, `youtube`, `itens_pag`, `video_sobre`, `itens_relacionados`, `aulas_liberadas`, `desconto_pix`, `email_adm_mat`, `cartoes_fidelidade`, `taxa_boleto`, `taxa_mp`, `taxa_paypal`, `valor_max_cartao`, `total_emails_por_envio`, `intervalo_envio_email`, `script_dia`, `dias_email_matricula`, `dias_excluir_matricula`, `professor_cad`, `comissao_professor`, `dia_pgto_comissao`, `questionario`, `media`, `verso`) VALUES ('1', 'Portal DevCurso', '(24) 99941-7827', 'contato@devcurso.com.br', '11.111.111/1111-11', 'CPF', '103.030.697-40', 'logo.png', 'favicon.ico', 'logo_rel.jpg', 'qrcode.jpg', 'https://www.facebook.com/devcurso', 'https://www.instagram.com/devcurso/', 'https://www.youtube.com/channel/UC7gcLhMjh6ZgFqvLFlu-eXQ', '12', '', '8', '2', '5', 'Sim', '5', '3.45', '5.00', '7.50', '65.00', '480', '70', '2023-06-26', '3', '30', 'Não', '20', '20', 'Sim', '60', 'Sim');

-- TABLE: cupons
CREATE TABLE `cupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('29', 'PHP e Laravel', 'Laravel é um framework PHP livre e open-', 'O curso de Laravel é um programa de treinamento voltado para o desenvolvimento de aplicativos da web usando o framework Laravel. Neste curso, os participantes aprenderão os conceitos fundamentais do Laravel, incluindo rotas, controladores, migrações de banco de dados, criação de modelos e visualizações, autenticação de usuários, envio de e-mails e muito mais. Eles também serão introduzidos a recursos avançados, como relacionamentos entre modelos, autenticação de API e testes automatizados. Ao concluir o curso, os alunos terão um conhecimento sólido do Laravel e estarão preparados para criar aplicativos web robustos e de alta qualidade.', '499.00', '2', '1', '15-06-2023-13-49-17-laravel.png', 'Aprovado', '25', '', '', '2023', '', '1', 'php-e-laravel', '', 'Não', '', 'Html, css, bootstrap, php, javascript, jquery', '297.00', '257', '10');
INSERT INTO `cursos` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `categoria`, `imagem`, `status`, `carga`, `mensagem`, `arquivo`, `ano`, `palavras`, `grupo`, `nome_url`, `pacote`, `sistema`, `link`, `tecnologias`, `promocao`, `matriculas`, `comissao`) VALUES ('36', 'FlutterFlow', 'FlutterFlow', '<p style= padding:  0px;= font-size:=  14px;= max-width:=  118.4rem;= color:=  rgb(28,= 29,=  31);= font-family:=  udemy= sans  ,= sf=  pro= text  blinkmacsystemfont,= roboto,=  segoe= ui  arial,= sans-serif,=  apple= color=  emoji= symbol=  ;=  >O Flutterflow é uma ferramenta online que permite criar aplicativos móveis e web de forma rápida e fácil. Com Flutterflow, você pode arrastar e soltar componentes de interface do usuário para construir o seu aplicativo 10x mais rápido do que o desenvolvimento tradicional. você pode criar interfaces bonitas e modernas, gerar código limpo e implantar nas lojas de aplicativos ou na web em um clique. Você também pode personalizar tudo com código personalizado e integrar facilmente o seu aplicativo com dados ao vivo usando o Firebase ou qualquer API de terceiros<strong style= margin:  0px;= padding:= >.</strong>&nbsp;</p><p style= padding:  0px;= font-size:=  14px;= max-width:=  118.4rem;= color:=  rgb(28,= 29,=  31);= font-family:=  udemy= sans  ,= sf=  pro= text  blinkmacsystemfont,= roboto,=  segoe= ui  arial,= sans-serif,=  apple= color=  emoji= symbol=  ;=  ><br></p><p style= padding:  0px;= font-size:=  14px;= max-width:=  118.4rem;= color:=  rgb(28,= 29,=  31);= font-family:=  udemy= sans  ,= sf=  pro= text  blinkmacsystemfont,= roboto,=  segoe= ui  arial,= sans-serif,=  apple= color=  emoji= symbol=  ;=  >O FlutterFlow suporta muitos recursos intuitivos e mais utilizados atualmente, com o Flutteflow você poderá criar seus próprios aplicati os e comercializálos!&nbsp;No nosso curso de FlutterFlow, você vai aprender como usar essa ferramenta incrível para construir seus próprios aplicativos sem precisar de ter experiência em programação. Você vai aprender os conceitos básicos do Flutter, como criar layouts responsivos, como adicionar animações e lógica ao seu aplicativo. No final desse curso você terá plenas condições de criar seu próprio aplicativo. Se você quer criar aplicativos incríveis em menos tempo e com menos esforço, este curso é para você!<br></p>', '47.90', '2', '17', '16-06-2023-11-59-12-flutterflow.jpg', 'Aguardando', '40', '', '', '2023', '', '4', 'flutterflow', '', 'Não', '', 'Flutter Flow', '27.90', '3', '20');

-- TABLE: cursos_pacotes
CREATE TABLE `cursos_pacotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `id_pacote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('9', 'gvweb.solucoes@gmail.com', 'VInicius Oliveira Almeida', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('10', 'gcmc21@hotmail.com', 'Giselle Cristine Medeiros de Carvalho', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('11', 'lucascalixto318@gmail.com', 'Lucas Calixto ', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('12', 'caiquedecarvalho226@gmail.com', 'Caique de Carvalho Sales', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('13', 'nive77bm@gmail.com', 'Vinícius Dias', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('14', 'eduardosoaresdematossilva@gmail.com', 'Eduardo Soares', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('15', 'luckgamer077@gmail.com', 'Lucas Rocha', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('16', 'guilhermemartalves@gmail.com', 'Guilherme Martinelli', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('17', 'salapegar2x10@gmail.com', 'João Guilherme de Carvalho Bittencourt', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('18', 'guifro1@hotmail.com', 'Guilherme De Laia Eugênio ', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('19', 'marcosapabreujunior@gmail.com', 'Marcos Antonio', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('20', 'camila.rolon@aluno.faeterj-brm.faetec.rj.gov', 'Camila dos santos rolon', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('21', 'lidialine12@gmail.com', 'Lidiane Aline Miguel da Silva', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('22', 'lopesbrandaomaria16@gmail.com', 'Maria Eduarda Lopes Ramos Brandão ', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('23', 'felipe.louzada18@gmail.com', 'Felipe Silveira Louzada', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('24', 'piazerab@gmail.com', 'Bruna Piazera', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('25', 'Milene.silva@ubm.br', 'Milene Silva', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('26', 'emillydiniz631@gmaail.com', 'Emilly Rodrigues Diniz', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('27', 'dilli.rocha@gmail.com', 'Dilliany da Rocha Rodrigues Chiesse', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('28', 'emillydiniz631@gmail.com', 'Emilly Rodrigues Diniz', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('29', 'tyffani.silva@ubm.br', 'Tyffani Stefani de Freitas da Silva ', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('30', 'izabel.cristina@ubm.br', 'Izabel Cristina Souza', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('31', 'gustavopatrick2706@outlook.com', 'Gustavo Patrick dos Santos Pereira Daniel ', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('32', 'waleska.portella@ubm.br', 'waleska Portella de Lacerda', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('33', 'fernandalandim@live.com', 'Fernanda Eloane Landim', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('34', 'telma.teixeira@ubm.br', 'Telma Teixeira Mota', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('35', 'jeniferdassalves@gmail.com', 'jenifer da silva sebastiao ', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('36', 'vinicius.santos@ubm.br', 'VINICIUS EDUARDO PROCOPIO DOS SANTOS', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('37', 'yuri.chiesse@hotmail.com', 'yuri gonçalves chiesse', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('38', 'telmatmota@hotmail.com', 'Telma Teixeira Mota', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('39', 'wellisson.castro@ubm.br', 'wellisson Francisco de Castro', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('40', 'rosimara.ribeiro@ubm.br', 'Rosimara Ribeiro', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('41', 'angelo.teodoro@ubm.br', 'Angelo Lemos Teodoro', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('42', 'flavia.gurgel@ubm.br', 'Flavia Gurgel Inacio', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('43', 'jenifer.alves@ubm.br', 'Jenifer da Silva Sebastiao', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('44', 'ivonete.paula@ubm.br', 'ivonete de paula carvalho francisco', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('45', 'Matheus.almeida@ubm.br', 'Matheus de Souza Almeida', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('46', 'kleytongp@gmail.com', 'Kleyton Gomes Pereira', 'sim');
INSERT INTO `emails` (`id`, `email`, `nome`, `enviar`) VALUES ('47', 'lucasaragao2904@gmail.com', 'Lucas Aragão Domingos', 'sim');

-- TABLE: envios
CREATE TABLE `envios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `final` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `envios` (`id`, `data`, `final`, `assunto`, `mensagem`, `link`) VALUES ('2', '2023-06-15 00:00:00', '0', '', '', '');

-- TABLE: grupos
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `grupos` (`id`, `nome`) VALUES ('1', 'Formação WEB');
INSERT INTO `grupos` (`id`, `nome`) VALUES ('4', 'Formação Mobile');

-- TABLE: linguagens
CREATE TABLE `linguagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('4', 'PHP', 'Linguagem PHP', '15-06-2023-13-53-09-php.jpg', 'php');
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('8', 'JS', 'JavaScript', '15-06-2023-14-47-23-js.png', 'js');
INSERT INTO `linguagens` (`id`, `nome`, `descricao`, `imagem`, `nome_url`) VALUES ('9', 'Dart', 'Dart', '15-06-2023-14-48-01-dart.jpg', 'dart');

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
  `nota` decimal(8,2) DEFAULT NULL,
  `ref_api` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('18', '29', '40', '2', '1', '297.00', '2023-06-16', 'Matriculado', 'Não', '', '0.00', '297.00', '', '', '0', '', '297.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('21', '36', '37', '2', '1', '27.90', '2023-06-18', 'Matriculado', 'Não', '', '0.00', '27.90', '', '', '0', '', '27.90', 'Grátis', '', '59490145173');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('22', '36', '40', '2', '1', '27.90', '2023-06-18', 'Matriculado', 'Não', '', '0.00', '27.90', '', '', '0', '', '27.90', 'Grátis', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('23', '36', '75', '2', '1', '27.90', '2023-06-20', 'Matriculado', 'Não', '', '320.00', '-292.10', 'Pix', '', '0', '', '-292.10', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('24', '29', '75', '2', '1', '297.00', '2023-06-20', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '297.00', '', '', '59582405017');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('25', '29', '76', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('26', '29', '74', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('27', '29', '73', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('28', '29', '72', '2', '4', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('29', '29', '71', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('30', '29', '70', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('31', '29', '69', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('32', '29', '67', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('33', '29', '66', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('34', '29', '57', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('35', '29', '53', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('36', '29', '52', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('37', '29', '51', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('38', '29', '50', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('39', '29', '49', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('40', '29', '48', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('41', '29', '47', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('42', '29', '46', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('43', '29', '45', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('44', '29', '44', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('45', '29', '43', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('46', '29', '42', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('47', '29', '41', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('48', '29', '37', '2', '10', '297.00', '2023-06-24', 'Finalizado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '2023-06-24', '0.00', '', '', '');
INSERT INTO `matriculas` (`id`, `id_curso`, `aluno`, `professor`, `aulas_concluidas`, `valor`, `data`, `status`, `pacote`, `alertado`, `valor_cupom`, `subtotal`, `forma_pgto`, `boleto`, `id_pacote`, `data_conclusao`, `total_recebido`, `obs`, `nota`, `ref_api`) VALUES ('49', '29', '36', '2', '1', '297.00', '2023-06-24', 'Matriculado', 'Não', '', '0.00', '297.00', 'Pix', '', '0', '', '0.00', '', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `pacotes` (`id`, `nome`, `desc_rapida`, `desc_longa`, `valor`, `professor`, `imagem`, `grupo`, `ano`, `palavras`, `nome_url`, `video`, `linguagem`, `promocao`, `matriculas`, `comissao`) VALUES ('15', 'Todos os Cursos', 'Todas Formações ', 'Todas Formações do site Dev Curso', '497.00', '2', '15-06-2023-14-44-47-web.jpg', '1', '2022', '', 'todos-os-cursos', '', '4', '397.00', '1', '10');

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('45', 'Comissão', '29.70', '2023-06-16', '2023-06-20', 'Não', '0000-00-00', 'sem-foto.png', '2', 'Laravel Full Stack');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('46', 'Comissão', '5.58', '2023-06-18', '2023-06-20', 'Não', '0000-00-00', 'sem-foto.png', '2', 'FlutterFlow');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('47', 'Comissão', '5.58', '2023-06-18', '2023-06-20', 'Não', '0000-00-00', 'sem-foto.png', '2', 'FlutterFlow');
INSERT INTO `pagar` (`id`, `descricao`, `valor`, `data`, `vencimento`, `pago`, `data_pgto`, `arquivo`, `professor`, `curso`) VALUES ('48', 'Comissão', '29.70', '2023-06-20', '2023-07-20', 'Não', '0000-00-00', 'sem-foto.png', '2', 'Laravel Full Stack');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- TABLE: perguntas_quest
CREATE TABLE `perguntas_quest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('2', 'Professor Vinícius Almeida', '103.030.697-20', '(24) 99941-7827', 'contato@devcurso.com.br', '15-06-2023-13-46-28-vini.jpg', 'Sim', '2022-03-08');
INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `foto`, `ativo`, `data`) VALUES ('5', 'Aurelio de Jesus', '000.000.000-00', '(24) 98843-1762', 'aurelio@devcurso.com.br', 'sem-perfil.jpg', 'Sim', '2023-06-15');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- TABLE: sessao
CREATE TABLE `sessao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `curso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('6', 'Módulo 1', '6');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('7', 'Módulo 2', '6');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('8', 'Módulo 3', '6');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('9', 'Básico', '14');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('10', 'Avançado', '14');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('11', 'Básico', '29');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('12', 'Avançado', '29');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('13', 'Outro', '29');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('19', 'Essencial', '36');
INSERT INTO `sessao` (`id`, `nome`, `curso`) VALUES ('22', 'Projeto', '36');

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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('2', 'Vinicius Almeida', '103.030.697-40', 'vinicius@devcurso.com.br', 'sk8namao', '5b0ce5e97261b57d11384873660d4a33', 'Administrador', '15-06-2023-13-46-57-vini.jpg', '1', 'Sim', '2022-03-07');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('36', 'VInicius Oliveira Almeida', '', 'gvweb.solucoes@gmail.com', 'sk8namao', '5b0ce5e97261b57d11384873660d4a33', 'Aluno', 'sem-perfil.jpg', '33', 'Sim', '2023-06-15');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('37', 'Giselle Cristine Medeiros de Carvalho', '', 'gcmc21@hotmail.com', 'sk8namao', '5b0ce5e97261b57d11384873660d4a33', 'Aluno', 'sem-perfil.jpg', '34', 'Sim', '2023-06-15');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('38', 'Aurelio de Jesus', '000.000.000-00', 'aurelio@devcurso.com.br', '123', '202cb962ac59075b964b07152d234b70', 'Administrador', 'sem-perfil.jpg', '4', 'Sim', '2023-06-15');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('39', 'Aurelio de Jesus', '000.000.000-00', 'aurelio@devcurso.com.br', '123', '202cb962ac59075b964b07152d234b70', 'Professor', 'sem-perfil.jpg', '5', 'Sim', '2023-06-15');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('40', 'Lucas Calixto ', '', 'lucascalixto318@gmail.com', 'Lucas123.', '150d2188a705378c9a39e85c3cbace39', 'Aluno', 'sem-perfil.jpg', '35', 'Sim', '2023-06-15');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('41', 'Caique de Carvalho Sales', '', 'caiquedecarvalho226@gmail.com', 'kanonxd123Dev', '8dee7a3f6053c821dad353ee32c2b6f7', 'Aluno', 'sem-perfil.jpg', '36', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('42', 'Vinícius Dias', '13555994743', 'nive77bm@gmail.com', '@nivec7799', '30c3f21adadf8786941b7c7d48aa9e6a', 'Aluno', 'sem-perfil.jpg', '37', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('43', 'Eduardo Soares', '', 'eduardosoaresdematossilva@gmail.com', '123dudu4', '1fca4a6a15d7685eb224997bf3562b73', 'Aluno', 'sem-perfil.jpg', '38', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('44', 'Lucas Rocha', '20055512798', 'luckgamer077@gmail.com', 'rocha123', '30fb914bd667fb368bb09c312bb62b8e', 'Aluno', '19-06-2023-08-11-22-cachorro-melancia.png', '39', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('45', 'Guilherme Martinelli', '', 'guilhermemartalves@gmail.com', '#g88174049G', '8f4f7afe42edc461467efe3e0af26ca2', 'Aluno', 'sem-perfil.jpg', '40', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('46', 'João Guilherme de Carvalho Bittencourt', '', 'salapegar2x10@gmail.com', 'jgui2209', 'b76baa0f269e4ec4fba00493883431dd', 'Aluno', 'sem-perfil.jpg', '41', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('47', 'Guilherme De Laia Eugênio ', '', 'guifro1@hotmail.com', 'evalaia081036', '31f296d1ea747335abdcb17715cfe340', 'Aluno', 'sem-perfil.jpg', '42', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('48', 'Marcos Antonio', '', 'marcosapabreujunior@gmail.com', 'marcosapabreu', '7f019cadc506e49d3e5b55285be0188b', 'Aluno', 'sem-perfil.jpg', '43', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('49', 'Camila dos santos rolon', '', 'camila.rolon@aluno.faeterj-brm.faetec.rj.gov', 'camila2023', '4739dffe60be107b8d40a4e5f89798fe', 'Aluno', 'sem-perfil.jpg', '44', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('50', 'Lidiane Aline Miguel da Silva', '208644955', 'lidialine12@gmail.com', 'dhT@.bfe#76/yra', '25d6ee699d925c03cba1c5be7b7a4264', 'Aluno', 'sem-perfil.jpg', '45', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('51', 'Maria Eduarda Lopes Ramos Brandão ', '17039516705', 'lopesbrandaomaria16@gmail.com', 'henri2009', 'b74f1f7620abdd7c997a7b32fd3deffc', 'Aluno', '21-06-2023-00-42-23-049CC3B2-8ED1-492C-958C-FF56AA2DB1EB.jpeg', '46', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('52', 'Felipe Silveira Louzada', '144.196.477-01', 'felipe.louzada18@gmail.com', '753159', 'c499a157f236220c2a63362ce0ee882a', 'Aluno', '19-06-2023-21-44-38-profile1.jpg', '47', 'Sim', '2023-06-19');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('53', 'Bruna Piazera', '', 'piazerab@gmail.com', '260715', '4acbe4f8025cc6c4b0cf0e3708762067', 'Aluno', 'sem-perfil.jpg', '48', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('54', 'Milene Silva', '', 'Milene.silva@ubm.br', 'Milene14', '93a941a3b9127d6175c23a8973e92653', 'Aluno', 'sem-perfil.jpg', '49', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('55', 'Emilly Rodrigues Diniz', '', 'emillydiniz631@gmaail.com', '1x2m94z1', 'abf641f9c75cc4ea579526269686076f', 'Aluno', 'sem-perfil.jpg', '50', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('56', 'Dilliany da Rocha Rodrigues Chiesse', '', 'dilli.rocha@gmail.com', '060888DILLIANY', 'a16317468e77658793f3e184122b3827', 'Aluno', 'sem-perfil.jpg', '51', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('57', 'Emilly Rodrigues Diniz', '', 'emillydiniz631@gmail.com', '1x2m94z1', 'abf641f9c75cc4ea579526269686076f', 'Aluno', 'sem-perfil.jpg', '52', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('58', 'Tyffani Stefani de Freitas da Silva ', '', 'tyffani.silva@ubm.br', 'vocequer1', '650f36d193c96e1edf53f8a435ead3bc', 'Aluno', 'sem-perfil.jpg', '53', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('59', 'Izabel Cristina Souza', '', 'izabel.cristina@ubm.br', '181293', 'ebcfe455f2b46baa32eaefb5a1dc1507', 'Aluno', 'sem-perfil.jpg', '54', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('60', 'Gustavo Patrick dos Santos Pereira Daniel ', '', 'gustavopatrick2706@outlook.com', 'Rag18352', '9d31b7ed639328fc37369fce854017f3', 'Aluno', 'sem-perfil.jpg', '55', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('61', 'waleska Portella de Lacerda', '', 'waleska.portella@ubm.br', 'We121096#', '5f3bdedfb44c12b5e035c425be675966', 'Aluno', 'sem-perfil.jpg', '56', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('62', 'Fernanda Eloane Landim', '', 'fernandalandim@live.com', '02092002Fe', 'be37caa4eda579cc2dd6c0f04e795241', 'Aluno', 'sem-perfil.jpg', '57', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('63', 'Telma Teixeira Mota', '', 'telma.teixeira@ubm.br', 'Telma2014', 'e046c6e04c0be5d779da88ae697ecc61', 'Aluno', 'sem-perfil.jpg', '58', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('64', 'jenifer da silva sebastiao ', '', 'jeniferdassalves@gmail.com', '270809', 'e5c09847fcba3a956a3eb7b0c54f5ae2', 'Aluno', 'sem-perfil.jpg', '59', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('65', 'VINICIUS EDUARDO PROCOPIO DOS SANTOS', '', 'vinicius.santos@ubm.br', '005851', '9534eeb6e1824e6c197e62fa928db18c', 'Aluno', 'sem-perfil.jpg', '60', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('66', 'yuri gonçalves chiesse', '', 'yuri.chiesse@hotmail.com', 'Vasco@10', '2c918275e9f41b21a259dfe3cd10040e', 'Aluno', 'sem-perfil.jpg', '61', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('67', 'Telma Teixeira Mota', '', 'telmatmota@hotmail.com', '20790403', '9a0dde0acd61a697fa2e2243a4961ca7', 'Aluno', 'sem-perfil.jpg', '62', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('68', 'wellisson Francisco de Castro', '', 'wellisson.castro@ubm.br', 'whitecolla.456', '233502dfef214c2053241a800322f052', 'Aluno', 'sem-perfil.jpg', '63', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('69', 'Rosimara Ribeiro', '', 'rosimara.ribeiro@ubm.br', 'mf2411rr', '96e608da2e288fd86a5aa0c9375dc1c2', 'Aluno', 'sem-perfil.jpg', '64', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('70', 'Angelo Lemos Teodoro', '', 'angelo.teodoro@ubm.br', 'Vlucialt25', '644888b0bc32bc6a4befa56ddb0cbaac', 'Aluno', 'sem-perfil.jpg', '65', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('71', 'Flavia Gurgel Inacio', '', 'flavia.gurgel@ubm.br', 'luc130301', '02cb495c2a5c080a96bc7831de34cee2', 'Aluno', 'sem-perfil.jpg', '66', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('72', 'Jenifer da Silva Sebastiao', '', 'jenifer.alves@ubm.br', '270809', 'e5c09847fcba3a956a3eb7b0c54f5ae2', 'Aluno', 'sem-perfil.jpg', '67', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('73', 'ivonete de paula carvalho francisco', '', 'ivonete.paula@ubm.br', 'iv9090', '8179feb12600d6aaeb5f910dabaa1ffc', 'Aluno', 'sem-perfil.jpg', '68', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('74', 'Matheus de Souza Almeida', '', 'Matheus.almeida@ubm.br', 'Flamengo123456', 'ac2da4633d68867f822676782177f76d', 'Aluno', 'sem-perfil.jpg', '69', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('75', 'Kleyton Gomes Pereira', '', 'kleytongp@gmail.com', 'Ntlk072149$', '84a4d5f882a8023b8de01c18167709aa', 'Aluno', 'sem-perfil.jpg', '70', 'Sim', '2023-06-20');
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `usuario`, `senha`, `senha_crip`, `nivel`, `foto`, `id_pessoa`, `ativo`, `data`) VALUES ('76', 'Lucas Aragão Domingos', '', 'lucasaragao2904@gmail.com', 'lucas2904', 'fb9bd19f1ae71a5edae4e17cc64f5b20', 'Aluno', 'sem-perfil.jpg', '71', 'Sim', '2023-06-20');


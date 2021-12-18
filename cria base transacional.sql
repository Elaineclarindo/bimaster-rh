--- criacao e carga das tabelas no banco transacional a partir dos arquivos .csv obtidos com o cliente sem nenhum tratamento

CREATE TABLE setor (
  cod_setor int PRIMARY KEY,
  setor varchar(20)
  );

COPY setor
(
    cod_setor,
    setor
)
FROM 'C:/TCC/setores.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM setor

--- Criação da tabela Cargos

CREATE TABLE cargo (
  cod_cargo INT PRIMARY KEY,
  cargo varchar(50),
  cod_setor INT,
  setor varchar(20)
  );

COPY cargo
(
  cod_cargo,
  cargo,
  cod_setor,
  setor 
)

FROM 'C:/TCC/cargo.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM cargo

--- Criação da tabela Cadastro

CREATE TABLE cadastro (
  matricula bigint PRIMARY KEY,
  nome varchar (100),
  cargo varchar(50),
  classe_cargo varchar(100),
  setor varchar(20),
  nivel_cargo int,
  info_cargo int,
  atividade varchar(100),
  cod_org_lotacao int,
  org_lotacao varchar(150),
  cod_tipo_vinculo int,
  tipo_vinculo varchar(100),
  situacao_vinculo varchar(50),
  regime_juridico varchar(50),
  jornada_de_trabalho varchar(50),
  data_ingresso date,
  data_fim date, 
  uf_exercicio varchar(2),
  cod_status int,  
  status varchar(20),
  genero varchar(20),
  salario_base float,
  adicionais float
)

COPY cadastro
(
  matricula,
  nome,
  cargo,
  classe_cargo,
  setor,
  nivel_cargo,
  info_cargo,
  atividade,
  cod_org_lotacao,
  org_lotacao,
  cod_tipo_vinculo,
  tipo_vinculo,
  situacao_vinculo,
  regime_juridico,
  jornada_de_trabalho,
  data_ingresso,
  data_fim,
  uf_exercicio,
  cod_status,
  status,
  genero,
  salario_base,
  adicionais
)

FROM 'C:/TCC/cadastro.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM cadastro


--- Criação da tabela Ninebox

CREATE TABLE ninebox(
  avaliacao bigint PRIMARY KEY,
  perfil varchar(20),
  classificacao varchar(100),
  acoes varchar(150)
)

COPY ninebox
(
  avaliacao,
  perfil,
  classificacao,
  acoes
)

FROM 'C:/TCC/ninebox.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM ninebox

--- Criação da tabela Satisfacao

CREATE TABLE satisfacao(
  ise float PRIMARY KEY,
  classificacao varchar(10)
)

COPY satisfacao
(
  ise,
  classificacao
)

FROM 'C:/TCC/satisfacao.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM satisfacao


--- Criação da tabela Status

CREATE TABLE status(
  cod_status int PRIMARY KEY,
  status varchar(10),
  motivo varchar(20)
)

COPY status
(
  cod_status,
  status,
  motivo
)

FROM 'C:/TCC/status.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM status


--- Criação da tabela Registros

CREATE TABLE registros(
    matricula bigint,
	cod_setor int,
	cod_cargo int,
	nivel_cargo int,
	cod_status int,
	data_ingresso date,
	data_fim date,
	salario_base float,
	adicionais float,
	ise_2020 int,
	desempenho_2020 int,
	foreign key (matricula) references cadastro(matricula),
	foreign key (cod_setor) references setor(cod_setor)
)

COPY registros
(
  matricula,
  cod_setor,
  cod_cargo,
  nivel_cargo,
  cod_status,
  data_ingresso,
  data_fim,
  salario_base,
  adicionais,
  ise_2020,
  desempenho_2020
)

FROM 'C:/TCC/registros.csv'
DELIMITER ';'
CSV header encoding 'utf-8';

SELECT * FROM registros

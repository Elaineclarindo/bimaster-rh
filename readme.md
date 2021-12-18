# Projeto de BI para apoio à tomada de decisão da empresa Universidades Integradas por meio da análise de dados de Recursos Humanos

#### Aluno: Elaine Clarindo Gabriel (https://github.com/Elaineclarindo)
#### Orientador: Anderson Nascimento (https://github.com/insightds)

---

Trabalho apresentado ao curso [BI MASTER](https://ica.puc-rio.ai/bi-master) como pré-requisito para conclusão de curso.

- Link para o código(https://github.com/Elaineclarindo/bimaster-rh)
 

### Resumo

O projeto aborda a criação de um dashboard de Recursos Humanos que tem por objetivo apoiar a alta administração da empresa fictícia Universidades Integradas no processo de mapeamento, identificação e análise de seu perfil de colaboradores, através de uma visualização fácil e ágil dos diversos indicadores definidos pela empresa. Todos os dados aqui apresentados são fictícios, incluindo as bases, a empresa e a consultoria e encontram-se disponíveis no github do projeto.


### 1. Introdução

Um dos desafios enfrentados pela empresa Universidades Integradas era agilizar a tomada de decisão. Entendia-se como necessário definir e unificar indicadores da área de Recursos Humanos em um único painel que pudesse permitir aos executivos fazer uma análise da situação vivenciada pela empresa durante os três últimos anos. Para isso, contratou a consultoria Conect People, especialista em projetos de análise de dados, para construção de um dashboard interativo, que envolvesse todo o processo de extração, tratamento e carga dos dados (ETL).

A empresa tem atuação nacional e seu quadro funcional conta com aproximadamente 10 mil colaboradores, distribuídos em diversos cargos, com predominância do cargo de Professor por se tratar de uma empresa composta de Universidades.

Nos últimos três anos, a empresa observou um grande movimento de desligamentos de parte dos seus colaboradores e sentiu a necessidade de identificar os motivos que levaram aos altos índices de turnover, além da necessidade de ter um conhecimento mais amplo sobre sua prática de remuneração e resultados de desempenho e satisfação dos colaboradores. Entretanto, identificou que não havia disponível, em sua estrutura, de maneira consolidada e rápida, um mapeamento desses aspectos, o que dificultava a análise das causas e a tomada de decisão.



### 2. Modelagem

O projeto obedeceu às seguintes etapas:

a)	Identificação da empresa, entendimento do negócio e levantamento das necessidades do cliente e do objetivo do projeto
O cliente atua na área de educação, tendo universidades espalhadas em 23 Estados do país. Esse mercado tem uma grande oferta de mão-de-obra de docentes, mas também há uma grande evasão desses profissionais. O cliente não tem políticas de recursos humanos unificadas entre as instituições, e isso se reflete nas práticas de remuneração e de contratação e retenção. Há uma grande disparidade entre os estados. Foi identificado que o cliente tinha dificuldade de visualizar os dados e, muitas vezes, tomava decisões baseadas em “achismos” sem considerar o histórico dos eventos e a correlação entre eles.

b)	Definição do projeto a ser entregue e planejamento da solução
O projeto proposto foi de um dashboard que permita a visualização dos principais aspectos necessários para o entendimento da realidade da empresa, com foco nos indicadores relacionados ao perfil dos colaboradores, remuneração, desempenho, satisfação e turnover.

c)	Mapeamento das fontes de dados
Identificação das bases de dados, por meio da coleta das bases e conhecimento da estrutura dos dados disponibilizados pela empresa. As bases de dados disponibilizadas estão em formato .csv e contêm as informações referentes a todo o histórico dos colaboradores, desde o cadastro até o resultado da avaliação de desempenho e das pesquisas de satisfação. 

A base de dados transacional e o datawarehouse foram criados com auxílio do PGAdmin. O esquema do modelo transacional foi criado por meio do site draw.io e foi disponibilizado no github do projeto.

Nota: as bases de dados que viabilizaram a execução desse projeto foram obtidas a partir do site dados.gov.br, referente aos dados de empregados do Poder Executivo. Esses dados foram tratados de forma a serem despersonalizados, por meio das seguintes etapas: redução do tamanho da base, passando de aproximadamente 420 mil registros para 11 mil; exclusão parcial do nome do colaborador, alteração do nome da Instituição de ensino, criação de setores fictícios, exclusão de informações desnecessárias e criação de uma base de avaliação de desempenho e índice de satisfação por meio do site mockaroo.com. 

d)	Modelagem multidimensional e processo de ETL
O processo de extração, transformação e carga dos dados foi feito a partir do Pentaho Data Integration, com o tratamento prévio dos dados da base transacional e criação das tabelas dimensão dim_cadastro, dim_desempenho, dim_satisfacao, dim_setor, dim_status, dim_tempo e da tabela fato ft_registros.
O modelo multidimensional foi elaborado no SQL Power Architect.

e)	Criação de dashboard no Power BI
O dashboard possibilita a visualização do perfil da empresa e das informações mais relevantes para a tomada de decisão, através de indicadores definidos durante o projeto, como informações de perfil, remuneração, desempenho, satisfação e turnover.


### 3. Resultados

Os resultados obtidos foram satisfatórios e atenderam às necessidades do cliente, que passou a contar com uma ferramenta dinâmica para visualização dos principais indicadores de RH, permitindo que a tomada de decisão seja baseada em dados, o que pode elevar os níveis de precisão das estratégias empresariais, gerando resultados mais satisfatórios para o negócio.


### 4. Próximos passos

Como complemento ao presente projeto, pode-se criar um algoritmo de machine learning para análise de turnover, identificando causas e possibilitando a previsão de colaboradores que podem se desligar da empresa, permitindo a retenção de empregados-chave de forma proativa.


### 5. Conclusões

Um projeto de Business Intelligence é fundamental para empresas que queiram agilizar a tomada de decisão baseada em dados. Através desse projeto, foi possível implementar os conhecimentos adquiridos no curso de MBA BI Master, de forma prática, possibilitando a criação de um processo que englobou todas as etapas de um projeto de BI, desde a coleta dos dados até sua visualização por meio de um dashboard. 


---

Matrícula: 201.110.016

Pontifícia Universidade Católica do Rio de Janeiro

Curso de Pós Graduação Business Intelligence Master


-- Insert de tecnologias 
insert into tb_tecnologia  values 
  (default, 'Assembly','Assembly é uma notação legível por humanos para o código de máquina que uma arquitetura de computador específica usa, utilizada para programar códigos entendidos por dispositivos computacionais.'),
  (default, 'C','C é uma linguagem de programação compilada de propósito geral, estruturada, imperativa, procedural.'),
  (default, 'C++','C++ é uma linguagem de programação compilada multi-paradigma e de uso geral.'),
  (default, 'C#','C# é uma linguagem de programação, multiparadigma, de tipagem forte, desenvolvida pela Microsoft como parte da plataforma . NET.'),
  (default, 'COBOL','COBOL é linguagem Comum Orientada para os Negócios é uma linguagem de programação orientada para o processamento de banco de dados comerciais.'),
  (default, 'GO','Go é uma linguagem compilada e focada em produtividade e programação concorrente, baseada em trabalhos feitos no sistema operacional chamado Inferno.'),
  (default, 'Java','Java é uma linguagem de programação orientada a objetos desenvolvida na década de 90 por uma equipe de programadores chefiada por James Gosling, na empresa Sun Microsystems.'),
  (default, 'JavaScript','JavaScript, frequentemente abreviado como JS, é uma linguagem de programação interpretada de alto nível, caracterizada também, como dinâmica, fracamente tipificada, prototype-based e multi-paradigma.'),
  (default, 'Kotlin','Kotlin é uma Linguagem de programação multiplataforma que compila para a Máquina virtual Java e que também pode ser traduzida para JavaScript e compilada para código nativo.'),
  (default, 'Lua','Lua é uma linguagem de script de multiparadigma, pequena, reflexiva e leve, projetada para expandir aplicações em geral, por ser uma linguagem extensível, para prototipagem e para ser embarcada em softwares complexos, como jogos.'),
  (default, 'Objective-C','Objective-C, denominado frequentemente de ObjC ou mais raramente de Objective C ou Obj-C, é uma linguagem de programação reflexiva orientada a objecto que adiciona transmissão de mensagens no estilo Smalltalk para o C.'),
  (default, 'Pascal','Pascal é uma linguagem de programação estruturada, que recebeu este nome em homenagem ao matemático e físico Blaise Pascal. Foi criada em 1970 pelo suíço Niklaus Wirth, tendo em mente encorajar o uso de código estruturado.'),
  (default, 'PHP','PHP é uma linguagem interpretada livre, usada originalmente apenas para o desenvolvimento de aplicações presentes e atuantes no lado do servidor, capazes de gerar conteúdo dinâmico na World Wide Web.'),
  (default, 'Python','Python é uma linguagem de programação de alto nível, interpretada, de script, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte.'),
  (default, 'Scala','Scala é uma linguagem de programação de propósito geral, projetada para expressar padrões de programação comuns de uma forma concisa, elegante e type-safe.'),
  (default, 'SQL','Structured Query Language, ou Linguagem de Consulta Estruturada ou SQL, é a linguagem de pesquisa declarativa padrão para banco de dados relacional. Muitas das características originais do SQL foram inspiradas na álgebra relacional.'),
  (default, 'Swift','Swift é uma linguagem de programação desenvolvida pela Apple para desenvolvimento no iOS, macOS, watchOS, tvOS e Linux. Swift foi desenvolvida para manter compatibilidade com a API Cocoa e com código existente em Objective-C.'),
  (default, 'TypeScript','TypeScript é um superconjunto de JavaScript desenvolvido pela Microsoft que adiciona tipagem e alguns outros recursos a linguagem.'),
  (default, 'UML','A UML - Linguagem de Modelagem Unificada é uma linguagem-padrão para a elaboração da estrutura de projetos de software.'),
  (default, 'Unreal Engine','Unreal Engine é um motor de jogo desenvolvido pela Epic Games, usado pela primeira vez em 1998 no jogo de tiro em primeira pessoa Unreal, ele tem sido a base de muitos jogos desde então.'),
  (default, 'Visual Basic','O Visual Basic é uma linguagem de programação produzida pela empresa Microsoft, e é parte integrante do pacote Microsoft Visual Studio. Sua versão mais recente faz parte do pacote Visual Studio .NET, voltada para aplicações .Net.');

-- Insert de usuarios 
insert into tb_usuario values 
  (default, 'igormiguelgalvao-90@outlook.com.br','IZSCr7yqEJ','Igor Miguel Galvão','2001-04-15','Estudante de Desenvolvimento de Sistemas, recentemente introduzido no mundo da tecnologia.','1827389274', curdate(), 1),
  (default, 'lunasimoneelianefigueiredo_@hotmail.com','ZOg4GGMmPX','Luna Simone Eliane Figueiredo','1999-05-12','Recentemente formada em tecnologo de Analise e Desenvolvimento de Sistemas pela Fatec','13938947313', curdate(), 1),
  (default, 'lucassergiodasilva_@gmail.com','2U4zWKd7cC','Lucas Sérgio da Silva','1995-08-22',null,'25925777412', curdate(), 1),
  (default, 'isabellevanessabernardes_@outlook.com','h2fq3TEaoP','Isabelle Vanessa Bernardes','2001-08-25','Amante de desenvolvimento para web!!!','67926211544', curdate(), 1),
  (default, 'nicolasdiogomonteiro_@hotmail.com','Y6lStpYnJT','Nicolas Diogo Monteiro','1985-10-25','Programador da família C, buscando se atualizar com as novas tecnologias','92926798534', curdate(), 1),
  (default, 'ccarolinacarolinasilva@outlook.com.br','OzYP63wJdO','Carolina Carolina Silva','1990-05-26','Totalmente novata na area de desenvolvimento de sistemas','86939449867', curdate(), 1),
  (default, 'ruanjorgebrunobarros_@gmail.com','nAp8nyq5cp','Ruan Jorge Bruno Barros','1997-08-18','Experiência basica em desenvolvimento web, buscando melhorar tais habilidades','24928790581', curdate(), 1),
  (default, 'ppriscilagiovanaelisaaragao@gmail.com','mbothXCHzD','Priscila Giovana Elisa Aragão','2000-05-19',null,'82939288779', curdate(), 1),
  (default, 'iisismanueladapaz@outlook.com.br','CUsm53h4tG','Isis Manuela da Paz','1994-06-17','Desenvolvedora IOS buscando se aperfeiçoar com projetos relacionados.','9527382685', curdate(), 1),
  (default, 'osvaldoantoniopietrodias_@gmail.com','EBP32SyYzo','Osvaldo Antonio Pietro Dias','2000-08-25','Densevolvedor Java Junior procurando projetos para se aperfeiçoar.','69937692122', curdate(), 1);

insert into tecnologia_usuario values 
  (8,1),
  (13,1),
  (13,2),
  (3,2),
  (4,2),
  (13,2),
  (7,2),
  (11,2),
  (9,3),
  (20,3),
  (8,4),
  (13,4),
  (14,4),
  (18,4),
  (2,5),
  (3,5),
  (4,5),
  (8,6),
  (8,7),
  (13,7),
  (14,7),
  (8,8),
  (17,9),
  (11,9),
  (7,10),
  (9,10);

insert into tb_ideia values 
  (default, 'Sistema de Gerenciamento Escolar (SGE)','Um sistema web/mobile para gerenciar uma escola ensino medio, lançar notas, mostrar faltas e etc', curdate(), 0),
  (default, 'Projeto Vital','Aplicativo com integração de widgets para recepção e análise de dados relacionado a saúde, plataforma desejada IOS',curdate(), 0),
  (default, 'Manoteras','Site para aluguel de ratoeiras e outros produtos relacionados a controle de pragas',curdate(), 0),
  (default, 'Graphite','Sistema para ter acesso a arquivos de vazamentos de dados relacionados a invasão',curdate(), 0),
  (default, 'Poseidon','App para listar praias que estão contaminadas, com afinidade de alertar os banhistas a sair de uma área perigosa',curdate(), 0),
  (default, 'Zeal','Programa/App para ajudar o trabalhador do campo a ter noções metereológicas melhores e mais precisas.',curdate(), 0);

insert into tb_tag_ideia values 
  (default, "gerenciamento", 1),
  (default, "escolar", 1),
  (default, "escola", 1),
  
  (default, "saude", 2),
  (default, "widgets", 2),
  (default, "ios", 2),
  
  (default, "controle", 3),
  (default, "pragas", 3),
  (default, "ratoeiras", 3),
  
  (default, "vazamento", 4),
  (default, "dados", 4),
  (default, "invasao", 4),
  
  (default, "praias", 5),
  (default, "contaminacao", 5),
  (default, "banhistas", 5),
  
  (default, "trabalhador", 6),
  (default, "campo", 6),
  (default, "meteorologia", 6);

insert into tecnologia_ideia values 
  (8,1),
  (13,1),
  (16,1),
  (17,2),
  (11,2),
  (8,3),
  (13,3),
  (14,3),
  (9,4),
  (14,5),
  (17,5),
  (18,5),
  (19,5);
            
-- insert participante ideia
-- Status participante  
-- 0 - Em Aprovação 
-- 1 - Aprovado
-- 2 - Recusada 
insert into participante_ideia values 
  (default, 4,6,1, now(), 1),
  (default, 9,1,1, now(), 1),
  (default, 3,2,1, now(), 1),
  (default, 8,3,1, now(), 1),
  (default, 6,4,1, now(), 1),
  (default, 1,5,1, now(), 1),
  (default, 1,3,1, now(), 0),
  (default, 2,3,0, now(), 0),
  (default, 5,3,0, now(), 0),
  (default, 5,2,1, now(), 0),
  (default, 6,2,1, now(), 0),
  (default, 7,1,1, now(), 0),
  (default, 6,3,1, now(), 0),
  (default, 10,2,2, now(), 0),
  (default, 10,2,2, now(), 0);
            
-- Insert curtida
insert into curtida_ideia (id_ideia, id_usuario, hr_curtida) values 
  (3,1, now()),
  (5,1, now()),
  (1,5, now()),
  (1,6, now()),
  (5,1, now()),
  (3,2, now()),
  (2,1, now()),
  (5,4, now()),
  (5,3, now()),
  (2,2, now()),
  (5,8, now()),
  (3,6, now()),
  (1,7, now()),
  (5,10, now()),
  (5,9, now()),
  (1,3, now());

-- Insert denuncias
insert into tb_denuncia	values 
  (default, 'Usúario pertubando a paz do sistema e publicando projetos absurdos',5,3),
  (default, 'Cara ta postando comentario falando palavrão nas ideias',1,3),
  (default, 'Está faltando com respeito com os outros usuario pelo comentarios',9,3);
            
-- Insert Mensagens
 
insert into tb_mensagem values 
  (default, 'Projeto muito legal, achei muito interressante','2019-04-13 10:20:12',1, 2, 1),
  (default, 'Que projeto mais sem noção oxi','2019-04-13 10:21:18',2, 2, 1),
  (default, 'Irei me inscrever para participar dessa ideia, sera um desafio porem achei muito legal','2019-04-13 11:50:20',3, 2, 1),
  (default, 'Gostei do foco de desenvolvimento do projeto, alias gosto de desenvolver para mobile rs','2019-04-14 09:20:30',4, 2, 6),
  
  (default, 'Olá pessoal, tudo bom com vcs ??','2019-04-14 09:20:50',1, 1, 3),
  (default, 'Eae tudo de boa e com você ?,','2019-04-14 09:21:40',6, 1, 3),
  (default, 'Você quer me passar seu contato para conversarmos pelo whats sobre o projeto ?','2019-04-14 09:23:50',1, 1, 3),
  (default, 'Opa claro chama lá 9527382685 ','2019-04-14 09:25:00',6, 1, 3),
  
  (default, 'Cara essa ideia é genial, adoro ir para praia e nunca sabemos quando estamos em uma area contaminada','2019-04-26 15:30:20',9, 2, 5),
  (default, 'Que projeto legal, poderia ser ate usado para monitorar a saude de idosos','2019-04-26 15:42:19',8, 2, 2);
            
            
insert into tb_adm values (1, 'admin@admin', 'admin123', 'Administrador 1');

create database bd_formativaa; 

use bd_formativaa;

-- criação da tabela universidade

create table Universidade(
id_uni INT primary key auto_increment,
nome varchar(255) not null,
telefone varchar(255),
cidade varchar(255),
cep varchar(255),
numero varchar(255),
Estado varchar(255),
bairro varchar (255)
);

-- Crincao tabela passageiro com chave estrangeira
create table Estudante(
id_est int primary key auto_increment,
nome varchar(255) not null,
telefone varchar(255),
cidade varchar(255),
cep varchar(255),
numero varchar(255),
bairro varchar(255),
id_uni int, 
foreign key(id_uni) references universidade(id_uni)
);

insert into Universidade (nome, telefone, cidade, cep, numero, bairro) values
('FKB', '45698-2568', 'itapetininga', '4569871', '569', 'chapadinha'),
('USP', '45678-2898', 'sorocaba', '8996052', '579', 'rua nova'),
('Uniderp', '45778-2568', 'Sarapui', '478961', '456', 'rua velha' ),
('UFRA', '45698-2568', 'Minas gerais', '4569834', '987', 'vila apollo' ),
('UNEAL', '45698-7868', 'itapetininga', '4569871', '756', 'chapadinha');

insert into Estudante(nome, telefone, cidade, cep, numero, bairro, id_uni) values
('Maria', '45698-2568', 'itapetininga', '4521871', '678', 'rua nova', 1 ),
('Laura', '45678-2898', 'sorocaba', '8996052', '579', 'rua nova', 1 ),
('Paula', '45778-2568', 'Sarapui', '478961', '456', 'rua velha', 1 ),
('Felipe', '45698-2568', 'Minas gerais', '4569834', '987', 'vila apollo', 1 ),
('Roberto', '45698-7868', 'itapetininga', '4569871', '756', 'chapadinha', 1 );

select * from Universidade;
select * from Estudante;

UPDATE Estudante
set Nome= "Rafaella"
where id_pass= 1;

delete from estudante
where id_pass = 4;

create view wv_estudante_est AS 

select 
estudante.nome AS Nome_estudante,
universidade.nome As Nome_universidade,
universidade.cidade AS cidade_universidade

from 
estudante

inner join 
-- intersecção das duas tabelas
universidade ON estudante.id_uni = universidadee.id_uni;

select * from wv_estudante_est AS 
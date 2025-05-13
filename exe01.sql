create database db_recursos_humanos;

use db_recursos_humanos;

create table tb_colaboradores (
	id bigint auto_increment primary key not null,
    nome varchar(255),
    cargo varchar(255),
    salario decimal(9,2),
    data_entrada date
);


insert into tb_colaboradores (nome, cargo, salario, data_entrada) VALUES 
("Lucas Manrick Teodoro da Fosneca", "GERENTE", 10000.00, "2020-12-12"),
("Joao Kleber", "AUXILIAR DE RH", 1700.00, "2023-9-11"),
("Jessica Soares", "ASSISTENTE DE RH", 2300.00, "2025-01-05"),
("Peter", "DIRETOR", 14000.00, "2015-12-30"),
("Kleber Bambam", "DIRETOR ADJUNTO", 20000.00, "2012-10-31");


select * from tb_colaboradores WHERE salario > 2000;

select * from tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2300, cargo = "ASSISTENTE DE RH" WHERE id = 2;

UPDATE tb_colaboradores SET salario = 1900, cargo = "AUXILIAR DE RH" WHERE id = 3;
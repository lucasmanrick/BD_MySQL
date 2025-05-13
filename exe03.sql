
create database db_escola;

use db_escola;

create table tb_estudantes (
	id bigint auto_increment primary key not null,
    nome varchar(255),
    ano_escolar varchar(50),
    turma char,
    nota decimal (3,1)
);


insert into tb_estudantes (nome, ano_escolar, turma, nota) VALUES 
("Lucas Manrick", "3 ano (EM)", "D" , 10),
("Tener Kelvis", "3 ano (EF)", "A" , 7),
("Kelvin Herbert", "1 ano (EF)", "B" , 10),
("Jessica Soares", "1 ano (EM)", "C" , 8),
("Cleiton Antony", "8 ano (EF)", "E" , 6),
("Airton Lerker", "9 ano (EF)", "D" , 5),
("Jose Garcia", "5 ano (EF)", "A" , 4),
("Henrique temer", "6 ano (EF)", "B" , 3);


select * from tb_estudantes WHERE nota >= 7;

select * from tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 5.5 WHERE id = 6;
UPDATE tb_estudantes SET nota = 5.5 WHERE id = 7;
UPDATE tb_estudantes SET nota = 5.5 WHERE id = 8;
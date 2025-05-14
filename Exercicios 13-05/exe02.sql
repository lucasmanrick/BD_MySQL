
create database db_e_comerce;

use db_e_comerce;

create table tb_produtos (
	id bigint auto_increment primary key not null,
    nome varchar(255),
    categoria varchar(255),
    valor decimal(9,2),
    lote varchar(255)
);


insert into tb_produtos (nome, categoria, valor, lote) VALUES 
("Mouse Gamer ASPXT3", "perifericos", 300, "XPTO-1001-AB"),
("Teclado Gamer keflerT zbar", "perifericos", 600, "AXT1-1201-AB"),
("Computador Escritorio i3000", "tecnologicos", 3000, "PPAT-1100-CZ"),
("Televisão Smart tv 4k embev", "tecnologicos", 6000, "TTVZ-900-CC"),
("Sofá reclinavel G3X", "mobilia", 10000, "AAM-100-TC"),
("Cama Casal", "mobilia", 7000, "AAP-2000-RS"),
("Geladeira", "eletrodomestico", 8000, "EEM-300-XC"),
("Micro-ondas", "eletrodomestico", 400, "APP-800-XX");

select * from tb_produtos WHERE valor > 500;

select * from tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 2300, nome = "Caixa De som", categoria = "perifericos" WHERE id = 8;
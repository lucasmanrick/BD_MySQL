create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id bigint not null auto_increment primary key,
    tipo varchar(100) not null,
    diametro bigint not null
);


CREATE TABLE tb_pizzas (
	id bigint not null auto_increment primary key,
    nome varchar(50) not null,
    preco decimal(5,2) not null,
    ingredientes varchar(500) not null,
    numero_menu int not null,
    categoria_id bigint not null,
    foreign key (categoria_id) references tb_categorias (id)
);


insert into tb_categorias (tipo, diametro) VALUES 
("Broto", "20"),
("Media", "30"),
("Grande", "40"),
("Esfiha", "5"),
("Lanche", "10");

insert into tb_pizzas (nome, preco, ingredientes, numero_menu, categoria_id) VALUES 
("Peperoni", 51, "queijo, peperoni, cebola, azeitona, borda recheada", 1, 2),
("4 Queijos", 35, "Muçarela, parmesão, provolone e gorgonzola", 2, 1),
("Calabresa", 49, " Linguiça calabresa fatiada, cebola em rodelas, queijo muçarela, azeitonas e orégano.", 3, 2),
("Portuguesa", 35, "Presunto, queijo muçarela, cebola, ovos cozidos, tomate, azeitonas e orégano.", 4, 2),
("Marguerita", 70, "muçarela, tomate, manjericão, azeite", 5, 3),
("X-Burger", 25.99, "pão de hambúrguer, carne bovina, queijo cheddar, alface, tomate, maionese", 31, 5),
("Esfiha de Carne", 4.50, "massa de esfiha, carne moída temperada, cebola, tomate, temperos árabes", 20, 4),
("Esfiha de Queijo", 5, "massa de esfiha, queijo, limão", 21, 4);



SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT tp.numero_menu as NumeroNoMenu, tp.nome,tp.preco,tp.ingredientes,tc.tipo, tc.diametro FROM tb_pizzas AS tp JOIN tb_categorias AS tc ON tp.categoria_id = tc.id ORDER BY NumeroNoMenu; -- retorna todas pizzas e suas informações completas ordenadas pelo numero do menu

SELECT tp.numero_menu as NumeroNoMenu, tp.nome,tp.preco,tp.ingredientes,tc.tipo, tc.diametro FROM tb_pizzas AS tp JOIN tb_categorias AS tc ON tp.categoria_id = tc.id WHERE tc.id = 2;  -- retorna só as informações completas das pizzas da categoria/tipo media.
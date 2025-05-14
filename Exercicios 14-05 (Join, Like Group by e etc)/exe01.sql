create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classe (
	id bigint not null auto_increment primary key,
    descricao varchar(100) not null,
    resistencia varchar(100) not null
);


CREATE TABLE tb_personagem (
	id bigint not null auto_increment primary key,
    apelidoUsuario varchar(50) not null,
    ataque bigint not null,
    defesa bigint not null,
    vida bigint not null,
    classe_id bigint,
    foreign key (classe_id) references tb_classe (id)
);


insert into tb_classe (descricao, resistencia) VALUES 
("KNIGHT", "fisico"),
("DRUID", "gelo"),
("PALADIN", "veneno"),
("SORCERER", "fogo"),
("HEALERS", "raio");

insert into tb_personagem (apelidoUsuario, ataque, defesa, vida, classe_id) VALUES 
("DruidaAlquimista", 1500, 800, 1500, 2),
("MagoDeFogo", 3000, 300, 700, 4),
("TanqueTemQueTankar", 800, 2200, 2000, 1),
("PaladinoTrevoso", 1300, 1900, 2000, 3),
("Cura Dor Do Mundo", 900, 1000, 3000, 5),
("BestSeller", 1300, 900, 1400, 2),
("Artista De Deus", 1000, 900, 1500, 2),
("CNPJ CLT", 2600, 400, 900, 4);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE apelidoUsuario LIKE "%C%";

SELECT tp.apelidoUsuario,tp.ataque,tp.defesa,tp.vida,tc.descricao,tc.resistencia FROM tb_personagem AS tp JOIN tb_classe AS tc ON tp.classe_id = tc.id ORDER BY ataque DESC; -- retorna todos personagens, porem com suas informações das duas tabelas e organiza pelo nivel de ataque do maior para o menor

SELECT tp.apelidoUsuario,tp.ataque,tp.defesa,tp.vida,tc.descricao,tc.resistencia FROM tb_personagem AS tp JOIN tb_classe AS tc ON tp.classe_id = tc.id WHERE tc.id = 2;  -- retorna só os personagens da classe gelo
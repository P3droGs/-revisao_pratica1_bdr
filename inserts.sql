INSERT INTO loja (nome, cidade) VALUES 
('GamePlanet', 'São Paulo'),
('PixelGames', 'Rio de Janeiro'),
('LevelUp Store', 'Belo Horizonte');


INSERT INTO cliente (nome, email, cidade) VALUES 
('Pedro Henrique', 'pedro.henrique@email.com', 'São Paulo'),
('Miguel Aldama', 'miguel.aldama@email.com', 'Curitiba'),
('Ana Clara', 'ana.clara@email.com', 'Fortaleza');


INSERT INTO jogo (titulo, ano_lancamento, genero) VALUES 
('Elden Ring', 2022, 'RPG'),
('ARK SURVIVAL', 2020, 'Sobrevivencia'),
('FIFA 25', 2024, 'Esporte'),
('Minecraft', 2010, 'Aventura');


INSERT INTO compra (data_compra, id_cliente, id_loja) VALUES 
('2025-09-01', 1, 1), 
('2025-09-03', 2, 2);  



INSERT INTO compra_jogo (id_compra, id_jogo, quantidade) VALUES 

(1, 1, 1),  
(1, 3, 2),
(2, 2, 1), 
(2, 1, 1); 

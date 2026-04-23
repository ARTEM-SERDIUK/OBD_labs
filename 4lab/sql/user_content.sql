-- Гравці
INSERT INTO Players (nickname, email, credits) VALUES 
('Minisolo', 'minisolo.play@gmail.com', 15000000),
('Steel_Fury_2026', 'fury@gmail.com', 450000),
('Noob_Destroyer', 'destroyer@gmail.com', 50000),
('Panzer_Girl', 'panzer@gmail.com', 2300000);

-- Наповнення ангару (Купуємо танки)
INSERT INTO Hangar (player_id, vehicle_id, current_exp, purchase_date) VALUES 
-- Minisolo
((SELECT player_id FROM Players WHERE nickname = 'Minisolo'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'CS-63'), 150000, '2026-01-15 10:30:00'),

((SELECT player_id FROM Players WHERE nickname = 'Minisolo'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'Manticore'), 89000, '2026-02-10 14:20:00'),

((SELECT player_id FROM Players WHERE nickname = 'Minisolo'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'Panther'), 250000, '2025-12-01 09:00:00'),

((SELECT player_id FROM Players WHERE nickname = 'Minisolo'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'Hotchkiss EBR'), 75000, '2025-9-07 21:40:00'),

-- Steel_Fury_2026
((SELECT player_id FROM Players WHERE nickname = 'Steel_Fury_2026'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'O-I'), 45000, '2026-03-05 18:45:00'),

((SELECT player_id FROM Players WHERE nickname = 'Steel_Fury_2026'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'AMX ELC bis'), 12000, '2026-03-12 21:10:00'),

-- Noob_Destroyer
((SELECT player_id FROM Players WHERE nickname = 'Noob_Destroyer'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'Renault FT'), 500, '2026-03-18 12:00:00'),

-- Panzer_Girl
((SELECT player_id FROM Players WHERE nickname = 'Panzer_Girl'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'UDES 03'), 67000, '2026-02-20 11:00:00'),

((SELECT player_id FROM Players WHERE nickname = 'Panzer_Girl'), 
 (SELECT vehicle_id FROM Vehicles WHERE model_name = 'M53/M55'), 110000, '2026-01-30 16:30:00');
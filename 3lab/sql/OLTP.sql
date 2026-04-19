-- Вивести нікнейми гравців, які мають хоча б один танк у своєму ангарі.
-- SELECT DISTINCT p.nickname
-- FROM Hangar h
-- JOIN Players p ON h.player_id = p.player_id;

-- Вивести нікнейми гравців, у яких в ангарі є хоча б один танк, що належить до класу 'Легкий танк'.
-- SELECT DISTINCT p.nickname
-- FROM Hangar h
-- JOIN Players p ON h.player_id = p.player_id
-- JOIN Vehicles v ON h.vehicle_id = v.vehicle_id
-- JOIN Vehicle_Classes vc ON v.class_id = vc.class_id
-- WHERE vc.class_name = 'Легкий танк';

-- Вивести назви всіх моделей техніки, що належать до нації 'Франція'.
-- SELECT model_name
-- FROM Vehicles v
-- JOIN Nations n ON v.nation_id = n.nation_id
-- WHERE n.nation_name = 'Франція';

-- Вивести перелік усіх доступних модулів (їх назву та тип) для техніки, що відноситься до класу 'САУ'.
-- SELECT mt.type_name, m.name
-- FROM Modules m
-- JOIN Module_Types mt ON m.type_id = mt.type_id
-- JOIN Compatibility c ON m.module_id = c.module_id
-- JOIN Vehicles v ON c.vehicle_id = v.vehicle_id
-- JOIN Vehicle_Classes vc ON v.class_id = vc.class_id
-- WHERE vc.class_name = 'САУ';

-- Знизити вартість усіх модулів типу 'Гармата' на 20%, щоб зробити їх доступнішими для новачків.
-- UPDATE Modules 
-- SET price = price * 0.8 
-- WHERE type_id = (SELECT type_id FROM Module_Types WHERE type_name = 'Гармата');

-- Перевести танк 'leKpz Borkenkäfer' з XI рівня на X рівень.
-- UPDATE Vehicles 
-- SET tier = 'XI' 
-- WHERE model_name = 'leKpz Borkenkäfer';

-- Гравець 'Minisolo' провів вдалий бій на танку 'Hotchkiss EBR'. Додати йому 1749 досвіду в ангарі.
-- UPDATE Hangar
-- SET current_exp = current_exp + 1749
-- WHERE player_id = (SELECT player_id FROM Players WHERE nickname = 'Minisolo')
-- AND vehicle_id = (SELECT vehicle_id FROM Vehicles WHERE model_name = 'Hotchkiss EBR');

-- Видалити запис про володіння танком 'UDES 03' з ангару гравця 'Panzer_Girl'.
-- DELETE FROM Hangar 
-- WHERE player_id = (SELECT player_id FROM Players WHERE nickname = 'Panzer_Girl')
-- AND vehicle_id = (SELECT vehicle_id FROM Vehicles WHERE model_name = 'UDES 03');

-- Видалити гравця 'Noob_Destroyer' та всі його дані (ангар очиститься автоматично через CASCADE).
-- DELETE FROM Players 
-- WHERE nickname = 'Noob_Destroyer';
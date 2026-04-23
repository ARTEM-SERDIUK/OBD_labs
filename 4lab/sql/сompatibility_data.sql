-- Renault FT
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Renault FT' AND m.name IN ('37 mm APX SA18 (FT)', '13.2 mm Hotchkiss mle. 1930 (FT)',
'Renault FT Berliet', 'ER 52', 'Renault (FT)', 'M26/27');

-- Panzerjäger I
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Panzerjäger I' AND m.name IN ('3,7 cm Pak (t) L/47', '4,7 cm Pak (t) L/43', 'FuG 2',
'Krupp M311', 'Maybach HL 38 TR', 'Panzerjäger I', 'Panzerjäger I verstärkteketten');

-- Pz.Kpfw. I Ausf. C
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Pz.Kpfw. I Ausf. C' AND m.name IN ('2 cm Kw.K. 38', '2 cm Flak 38', '7,92 mm Mauser E.W. 141',
'Pz.Kpfw. I Breda', 'Pz.Kpfw. I Ausf. C', 'FuG 5', 'FuG 7', 'Fu.Spr.Ger. "a"', 'Maybach HL 45 P', 'Maybach HL 66 P',
'VK 6.01', 'VK 6.02');

-- Matilda
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Matilda' AND m.name IN ('QF 2-pdr Mk. X (A12)', 'QF 2-pdr Mk. X-B', 'Matilda Mk. IIA',
'Matilda Mk. IIA*', 'WS No. 19 Mk. II', '2x AEC', '2x Leyland E164', 'Matilda Mk. II', 'Matilda Mk. IIA');

-- AMX ELC bis
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'AMX ELC bis' AND m.name IN ('75 mm SA44L', '90 mm D. 915', 'AMX ELC bis', 'SCR 508',
'SOFAM de 150 cv', 'SOFAM de 180 cv', 'AMX ELC', 'AMX ELC bis');

-- O-I
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'O-I' AND m.name IN ('10 cm Cannon Type 92 (O-I)', '15 cm Howitzer Type 96 (O-I)', 'O-I',
'Type 96 Mk. 4 Bo', '2x Kawasaki Type 98 Kou (O-I)', '2x Kawasaki Type 98 Otsu (O-I)', 'O-I', 'O-I Kai');

-- Bishop
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Bishop' AND m.name IN ('Q.F. 25-Pr. Gun/How. (Bishop)', 'Q.F. 4.5-in. Howitzer (Bishop)',
'WS No. 19 Mk. III', 'AEC A190 (Bishop)', 'GMC 6004 6-71A (Bishop)', 'Valentine Mk. II', 'Bishop');

-- Hotchkiss EBR
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Hotchkiss EBR' AND m.name IN ('75 mm SA49 (EBR)', 'Canon de 75 mm Vo 1000 m/s (EBR)',
'Hotchkiss EBR', 'SCR-528 F', 'Hotchkiss V6 mle. 48', 'Hotchkiss V6 mle. 50', 'Hotchkiss EBR', 'Hotchkiss EBR bis');

-- Panther
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Panther' AND m.name IN ('7,5 cm Kw.K. 42 L/70 Ausf. A', '7,5 cm Kw.K. 42 L/70 Ausf. G',
'Pz.Kpfw. Panther Ausf. G', 'Pz.Kpfw. Panther Schmalturm', 'FuG 12', 'Maybach HL 210 TRM P30 (G)',
'Maybach HL 230 TRM P30 (G)', 'Pz.Kpfw. Panther Ausf. A', 'Pz.Kpfw. Panther Ausf. G');

-- UDES 03
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'UDES 03' AND m.name IN ('9 cm kan m/F', '10,5 cm kan UDES 03', 'Ra 421', 'Saab-Scania DS14',
'Leyland L60', 'Projekt 2013A', 'UDES 03');

-- P.44 Pantera
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'P.44 Pantera' AND m.name IN ('Cannone da 90/53', 'Cannone da 90/74',
'P.44 Pantera prima variante','P.44 Pantera seconda variante', 'R.F. 4 M.', 'Alfa RA1000I C.A.',
'FIAT RA1050I C.A.', 'P.44 Pantera', 'P.44 Pantera v.s.');

-- TNH 105/1000
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'TNH 105/1000' AND m.name IN ('105 mm vz. 38N', '105 mm vz. 38N (a)', '105 mm vz. 40N (1000)',
'TNH 105/1000 první model', 'TNH 105/1000 druhý model', 'Radiostanice RM-31T', 'ČKD AXK proto', 'Škoda V16 AHK-2',
'TNH 105/1000 (1947)', 'TNH 105/1000 (1948)');

-- M53/M55
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'M53/M55' AND m.name IN ('155 mm Gun M46', '8-inch Howitzer M47', 'AN/PRC-25', 'Ford GAC',
'Continental AV-1790-7B', 'T97/T108', 'M53/M55');

-- Tortoise
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Tortoise' AND m.name IN ('OQF 32-pdr AT Gun (A39)', '120 mm AT Gun L1A1', 'SR C42',
'Rolls-Royce Meteor Mk. V', 'Rolls-Royce Meteor M120 (A39)', 'Tortoise', 'Tortoise Mk. 2');

-- Standard B
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Standard B' AND m.name IN ('Cannone da 90 Rh', 'Cannone da 105 Rh V1',
'Prototipo Standard A (W 2)', 'Prototipo Standard B (R 1)', 'RV 4', 'MB 837 Aa', 'MB 837 Ea',
'Prototipo Standard B I', 'Prototipo Standard B II');

-- CS-63
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'CS-63' AND m.name IN ('105 mm armata wz. 64', 'CS-63', 'R-123', 'SGT-3CzM', 'CS-63');

-- Manticore
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Manticore' AND m.name IN ('QF 105 mm Gun', 'Manticore 1955', 'C42 VHF',
'Rolls-Royce B81 (1955)', 'Manticore 1955');

-- Rinoceronte
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'Rinoceronte' AND m.name IN ('127 mm OTO Melara', 'Rinoceronte', 'SEM-25',
'Daimler–Benz Typ MB 838', 'Rinoceronte');

-- NC 70 Błyskawica
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'NC 70 Błyskawica' AND m.name IN ('GG-85/175 mm', 'R-123', '2x GTD-2T6', 'NC 70 Błyskawica');

-- leKpz Borkenkäfer
INSERT INTO Compatibility (vehicle_id, module_id)
SELECT v.vehicle_id, m.module_id FROM Vehicles v, Modules m 
WHERE v.model_name = 'leKpz Borkenkäfer' AND m.name IN ('105 mm Rh 105-20', 'leKpz Borkenkäfer', 'SEM 25BK',
'MAN D2840 LXE', 'leKpz Borkenkäfer');
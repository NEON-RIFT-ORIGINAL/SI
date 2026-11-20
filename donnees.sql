-- ============================================================================
-- FICHIER : donnees.sql
-- PROJET : Système de Gestion d'Imprimerie (Séance 4)
-- CONTENU : Jeu d'essai (10 lignes par table principale)
-- ============================================================================

USE imprimerie_db;

-- 1. 10 Clients
INSERT INTO CLIENT (CLI_Nom, CLI_Prenom, CLI_Tel, CLI_Email) VALUES
('KONE', 'Moussa', '+22370112233', 'moussa.kone@gmail.com'),
('DIALLO', 'Aissata', '+22376223344', 'aissata.diallo@yahoo.fr'),
('TRAORE', 'Ibrahim', '+22365334455', 'ibrahim.traore@outlook.com'),
('COULIBALY', 'Mariam', '+22374445566', 'mariam.c@gmail.com'),
('CISSE', 'Oumar', '+22379556677', 'oumar.cisse@mali.net'),
('SANGARE', 'Fatoumata', '+22366667788', 'fatou.sangare@gmail.com'),
('DIAKITE', 'Sekou', '+22378778899', 'sekou.diakite@orange.ml'),
('KEITA', 'Aminata', '+22375889900', 'aminata.keita@gmail.com'),
('DEMBELE', 'Boubacar', '+22371990011', 'bouba.dembele@sotel.ml'),
('TOURE', 'Rokia', '+22372001122', 'rokia.toure@yahoo.fr');

-- 2. 10 Articles (supports papier, encres, finitions)
INSERT INTO ARTICLE (ART_Libelle, ART_StockActuel, ART_SeuilAlerte, ART_PrixUnitaire) VALUES
('Ramette Papier A4 80g', 45, 5, 3500.00),
('Ramette Papier A3 80g', 12, 5, 7000.00),
('Cartouche Encre Noire HP', 8, 3, 25000.00),
('Cartouche Encre Cyan HP', 4, 3, 27000.00),
('Cartouche Encre Magenta HP', 6, 3, 27000.00),
('Cartouche Encre Jaune HP', 5, 3, 27000.00),
('Papier Photo Brillant A4', 30, 10, 6000.00),
('Reliure Spirale Plastique (Boite)', 15, 4, 4500.00),
('Couverture Cartonnée A4 (Paquet)', 25, 5, 5000.00),
('Pochette Plastification A4', 50, 10, 8000.00);

-- 3. 10 Devis
INSERT INTO DEVIS (DEV_Validite, DEV_MontantTotal, CLI_ID) VALUES
('2026-12-20', 42000.00, 1),
('2026-12-22', 16800.00, 2),
('2026-12-25', 60000.00, 3),
('2026-12-28', 14400.00, 4),
('2026-12-30', 90000.00, 5),
('2027-01-05', 30000.00, 6),
('2027-01-10', 21600.00, 7),
('2027-01-12', 54000.00, 8),
('2027-01-15', 72000.00, 9),
('2027-01-20', 26400.00, 10);

-- 4. 10 Commandes
INSERT INTO COMMANDE (CMD_Statut, CMD_MontantHT, CMD_MontantTVA, CMD_MontantTTC, CLI_ID, DEV_ID) VALUES
('Prêt', 35000.00, 7000.00, 42000.00, 1, 1),
('En cours', 14000.00, 2800.00, 16800.00, 2, 2),
('En attente', 50000.00, 10000.00, 60000.00, 3, 3),
('Prêt', 12000.00, 2400.00, 14400.00, 4, 4),
('Livré', 75000.00, 15000.00, 90000.00, 5, 5),
('En cours', 25000.00, 5000.00, 30000.00, 6, 6),
('En attente', 18000.00, 3600.00, 21600.00, 7, 7),
('Prêt', 45000.00, 9000.00, 54000.00, 8, 8),
('Livré', 60000.00, 12000.00, 72000.00, 9, 9),
('En cours', 22000.00, 4400.00, 26400.00, 10, 10);

-- 5. 10 Lignes de commande
INSERT INTO LIGNE_COMMANDE (CMD_ID, ART_ID, LIG_Quantite, LIG_PrixTotalHT) VALUES
(1, 1, 10, 35000.00),
(2, 2, 2, 14000.00),
(3, 3, 2, 50000.00),
(4, 7, 2, 12000.00),
(5, 1, 15, 52500.00),
(6, 4, 1, 27000.00),
(7, 8, 4, 18000.00),
(8, 9, 9, 45000.00),
(9, 10, 7, 56000.00),
(10, 7, 3, 18000.00);

-- 6. 10 Factures
INSERT INTO FACTURE (FAC_MontantPaye, FAC_TypePaiement, CMD_ID) VALUES
(20000.00, 'Acompte - Espèces', 1),
(16800.00, 'Solde - Orange Money', 2),
(30000.00, 'Acompte - Espèces', 3),
(14400.00, 'Solde - Moov Money', 4),
(90000.00, 'Solde - Virement', 5),
(15000.00, 'Acompte - Espèces', 6),
(10000.00, 'Acompte - Orange Money', 7),
(54000.00, 'Solde - Espèces', 8),
(72000.00, 'Solde - Orange Money', 9),
(10000.00, 'Acompte - Espèces', 10);

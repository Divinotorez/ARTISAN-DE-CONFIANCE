 /*===============================================================
 ajout de données afin de tester la base de données
 ================================================================*/
 
 USE artisans_de_confiance;
/* =========================================================
   1. TABLE CLIENT
   ========================================================= */
INSERT INTO Client
(Nom_client_Client, prenom_client_Client, Tel_Client, email_Client)
VALUES
('Dupont', 'Marie', '0612345678', 'marie.dupont@gmail.com'),
('Martin', 'Thomas', '0623456789', 'thomas.martin@gmail.com'),
('Bernard', 'Sophie', '0634567890', 'sophie.bernard@gmail.com'),
('Petit', 'Lucas', '0645678901', 'lucas.petit@gmail.com'),
('Robert', 'Emma', '0656789012', 'emma.robert@gmail.com'),
('Richard', 'Hugo', '0667890123', 'hugo.richard@gmail.com'),
('Durand', 'Camille', '0678901234', 'camille.durand@gmail.com'),
('Moreau', 'Nathan', '0689012345', 'nathan.moreau@gmail.com'),
('Simon', 'Chloé', '0690123456', 'chloe.simon@gmail.com'),
('Laurent', 'Antoine', '0601234567', 'antoine.laurent@gmail.com');

/* =========================================================
   2. TABLE ADRESSE
   ========================================================= */

INSERT INTO Adresse
(Numero_rue_Adresse, Nom_rue_Adresse, code_postal_Adresse, Ville_Adresse)
VALUES
(12, 'Rue des Lilas', '34000', 'Montpellier'),
(25, 'Avenue de la République', '75011', 'Paris'),
(8, 'Carrer de Mallorca', '08013', 'Barcelona'),
(41, 'Calle de Alcalá', '28014', 'Madrid'),
(17, 'Leopoldstrasse', '80802', 'Munich'),
(63, 'Friedrichstrasse', '10117', 'Berlin'),
(5, 'Rue de la Joie', '00237', 'Yaoundé'),
(29, 'Boulevard de la Liberté', '00237', 'Douala'),
(14, 'Rue Saint-Gilles', '4000', 'Liège'),
(36, 'Rue Neuve', '1000', 'Bruxelles');

/* =========================================================
   3. TABLE HABITER
   ========================================================= */

INSERT INTO habiter
(Id_client_Client, id_adresse_Adresse)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

/* =========================================================
   4. TABLE TYPE_TRAVAUX
   ========================================================= */

INSERT INTO Type_travaux (nom_travaux_Type_travaux)
VALUES
('Plomberie'),
('Chauffage'),
('Électricité'),
('Maçonnerie'),
('Peinture'),
('Toiture'),
('Menuiserie'),
('Climatisation'),
('Jardinage'),
('Dépannage');

/* =========================================================
   5. TABLE OFFRIR
   ========================================================= */

INSERT INTO offrir
(id_travaux_Type_travaux, Id_artisan_Artisan, Taux_horaire_Artisan)
VALUES
(1, 1, 45.00),
(2, 1, 50.00),
(3, 1, 55.00),
(4, 2, 50.00),
(5, 2, 45.00),
(6, 3, 60.00),
(7, 3, 50.00),
(8, 4, 55.00),
(9, 4, 40.00),
(10, 5, 65.00),
(1, 6, 48.00),
(3, 6, 58.00),
(5, 7, 47.00),
(7, 7, 52.00),
(9, 8, 42.00),
(10, 8, 68.00),
(2, 9, 51.00),
(4, 9, 53.00),
(6, 10, 62.00),
(8, 10, 57.00);

/* =========================================================
   6. TABLE FOURNISSEUR
   ========================================================= */
   
INSERT INTO Fournisseur
(id_fournisseur_Fournisseur, nom_fournisseur_Fournisseur,
prenom_fournisseur_Fournisseur, Tel_Fournisseur, Email_Fournisseur)
VALUES
(1, 'BatiPro', 'Marc', '0601020304', 'marc@batipro.fr'),
(2, 'Materiaux Sud', 'Paul', '0602030405', 'paul@materiauxsud.fr'),
(3, 'ElecPro', 'Thomas', '0603040506', 'thomas@elecpro.fr'),
(4, 'Plomberie Plus', 'Julien', '0604050607', 'julien@plomberieplus.fr'),
(5, 'Bois Expert', 'Antoine', '0605060708', 'antoine@boisexpert.fr'),
(6, 'Peinture Direct', 'Lucas', '0606070809', 'lucas@peinturedirect.fr'),
(7, 'Toiture Service', 'Nicolas', '0607080910', 'nicolas@toitureservice.fr'),
(8, 'ClimaTech', 'David', '0608091011', 'david@climatech.fr'),
(9, 'Jardin Pro', 'Kevin', '0609101112', 'kevin@jardinpro.fr'),
(10, 'DepanBati', 'Alex', '0610111213', 'alex@depanbati.fr');

/* =========================================================
   7 . TABLE PRODUIT
   ========================================================= */

INSERT INTO Produit
(id_produit_Produit, nom_produit_Produit)
VALUES
(1, 'Tuyau PVC'),
(2, 'Robinet'),
(3, 'Câble électrique'),
(4, 'Interrupteur'),
(5, 'Ciment'),
(6, 'Peinture blanche'),
(7, 'Tuiles'),
(8, 'Planche de bois'),
(9, 'Climatiseur'),
(10, 'Engrais');

/* =======================================================
   8. TABLE VENDRE
   ========================================================= */
   
INSERT INTO vendre
(id_fournisseur_Fournisseur, id_produit_Produit)
VALUES
(1, 1),
(1, 5),
(2, 5),
(2, 7),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(5, 8),
(6, 6),
(7, 7),
(8, 9),
(9, 10),
(10, 5);

/* =========================================================
   9. TABLE S_APPROVISIONNER
   ========================================================= */
INSERT INTO s_approvisionner
(id_fournisseur_Fournisseur, Id_artisan_Artisan, id_produit_Produit,
 Quantite_livree, date_approvisionnement)
VALUES
(1, 1, 1, 20, '2026-01-15'),
(2, 1, 2, 15, '2026-01-25'),
(3, 2, 3, 30, '2026-02-05'),
(4, 2, 4, 25, '2026-02-18'),
(5, 3, 5, 50, '2026-03-02'),
(6, 4, 6, 10, '2026-03-15'),
(7, 5, 7, 35, '2026-03-28'),
(8, 6, 8, 40, '2026-04-10'),
(9, 7, 9, 18, '2026-04-22'),
(10, 8, 10, 22, '2026-05-05'),
(1, 9, 1, 12, '2026-05-18'),
(2, 10, 2, 45, '2026-06-01'),
(3, 11, 3, 28, '2026-06-14'),
(4, 12, 4, 16, '2026-06-27'),
(5, 13, 5, 32, '2026-07-05'),
(6, 14, 6, 20, '2026-07-12'),
(7, 15, 7, 14, '2026-07-20'),
(8, 16, 8, 25, '2026-07-28'),
(9, 17, 9, 30, '2026-08-03'),
(10, 18, 10, 18, '2026-08-10'),
(1, 19, 2, 40, '2026-08-15'),
(2, 20, 3, 15, '2026-08-18'),
(3, 21, 4, 27, '2026-08-20'),
(4, 22, 5, 35, '2026-08-22'),
(5, 23, 6, 20, '2026-08-25'),
(6, 24, 7, 45, '2026-08-27'),
(7, 25, 8, 12, '2026-08-29'),
(8, 26, 9, 30, '2026-09-01'),
(9, 27, 10, 22, '2026-09-03'),
(10, 28, 1, 17, '2026-09-05');

/* =========================================================
   10. TABLE STOCKER
   ========================================================= */

INSERT INTO stocker
(id_produit_Produit, Id_artisan_Artisan, quantite, seuil_critique)
VALUES
(1,1,25,10),
(2,1,15,10),
(3,2,30,10),
(4,2,20,10),
(5,3,50,10),
(6,4,25,10),
(7,5,40,10),
(8,6,18,10),
(9,7,8,10),
(10,8,22,10),
(1,9,12,10),
(5,10,35,10),
(6,11,16,10),
(7,12,28,10),
(8,13,14,10),
(9,14,7,10),
(10,15,30,10),
(2,16,20,10),
(3,17,25,10),
(4,18,18,10);

/* =========================================================
   11. TABLE DISPONIBILITE
   ========================================================= */
INSERT INTO Disponibilite
(jour_Disponibilite, 
heure_fin_Disponibilite, Id_artisan_Artisan)
VALUES
('2026-09-14','08:00:00','17:00:00',1),
('2026-09-15','09:00:00','18:00:00',2),
('2026-09-16','08:00:00','16:00:00',3),
('2026-09-17','10:00:00','18:00:00',4),
('2026-09-18','08:00:00','17:00:00',5),
('2026-09-19','09:00:00','17:00:00',6),
('2026-09-20','08:00:00','16:00:00',7),
('2026-09-21','08:00:00','18:00:00',8),
('2026-09-22','09:00:00','17:00:00',9),
('2026-09-23','08:00:00','17:00:00',10),
('2026-09-24','10:00:00','18:00:00',11),
('2026-09-25','08:00:00','16:00:00',12),
('2026-09-26','09:00:00','17:00:00',13),
('2026-09-27','08:00:00','18:00:00',14),
('2026-09-28','08:00:00','17:00:00',15);

/* =========================================================
   12. TABLE PRESTATION
   ========================================================= */

INSERT INTO Prestation
(Date_debut_Prestation, Date_fin_prevue_Prestation,
statut_prestation_Prestation, montant_Prestation,
date_fin_reele_Prestation, cause_retard_Prestation)
VALUES
('2026-09-01','2026-09-03','Achevée',450.00,'2026-09-03',NULL),
('2026-09-02','2026-09-05','Achevée',600.00,'2026-09-05',NULL),
('2026-09-04','2026-09-08','En cours',850.00,NULL,NULL),
('2026-09-05','2026-09-10','En cours',500.00,NULL,NULL),
('2026-09-06','2026-09-12','Achevée',1200.00,'2026-09-12',NULL),
('2026-09-08','2026-09-15','En cours',750.00,NULL,NULL),
('2026-09-09','2026-09-14','En retard',900.00,NULL,'Retard de livraison'),
('2026-09-10','2026-09-16','En cours',650.00,NULL,NULL),
('2026-09-11','2026-09-18','Achevée',1100.00,'2026-09-17',NULL),
('2026-09-12','2026-09-20','En cours',950.00,NULL,NULL);


/* =========================================================
   13. TABLE FAIRE
   ========================================================= */

INSERT INTO faire
(Id_artisan_Artisan, id_prestation_Prestation)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,3),
(12,5),
(13,6),
(14,8),
(15,10);

/* =========================================================
   14. TABLE DEVIS
   ========================================================= */

INSERT INTO Devis
(date_devis_Devis, date_validite_Devis,
montant_total_Devis, statut_devis_Devis,
description_Devis, Id_client_Client)
VALUES
('2026-09-01','2026-09-15 23:59:59',450.00,'Accepté','Travaux de plomberie',1),
('2026-09-02','2026-09-16 23:59:59',600.00,'Accepté','Installation électrique',2),
('2026-09-03','2026-09-17 23:59:59',850.00,'Accepté','Travaux de maçonnerie',3),
('2026-09-04','2026-09-18 23:59:59',500.00,'Accepté','Travaux de peinture',4),
('2026-09-05','2026-09-19 23:59:59',1200.00,'Accepté','Réfection toiture',5),
('2026-09-06','2026-09-20 23:59:59',750.00,'En attente','Travaux de menuiserie',6),
('2026-09-07','2026-09-21 23:59:59',900.00,'Accepté','Travaux de climatisation',7),
('2026-09-08','2026-09-22 23:59:59',650.00,'Refusé','Travaux de jardinage',8),
('2026-09-09','2026-09-23 23:59:59',1100.00,'Accepté','Dépannage général',9),
('2026-09-10','2026-09-24 23:59:59',950.00,'Accepté','Travaux de chauffage',10);

/* =========================================================
   15. TABLE COMMANDE
   ========================================================= */

INSERT INTO Commande
(Type_commande_Commande, duree_Commande,
Statut_commande_Commande, Id_client_Client,
id_adresse_Adresse, devis_id_devis_devis)
VALUES
('Immédiat','2 jours','Achevée',1,1,1),
('Normal','3 jours','Achevée',2,2,2),
('Normal','5 jours','En cours',3,3,3),
('Urgent','5 jours','En cours',4,4,4),
('Normal','7 jours','Achevée',5,5,5),
('Normal','7 jours','En cours',6,6,6),
('Urgent','5 jours','En retard',7,7,7),
('Normal','6 jours','En cours',8,8,8),
('Normal','7 jours','Achevée',9,9,9),
('Urgent','8 jours','En cours',10,10,10);

/* =========================================================
   16. TABLE CONTENIR
   ========================================================= */

INSERT INTO contenir
(id_commande_Commande, id_travaux_Type_travaux)
VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6),
(4,7),
(4,8),
(5,9),
(5,10),
(6,1),
(7,3),
(8,5),
(9,7),
(10,10);

/* =========================================================
   17. TABLE COMPRENDRE
   ========================================================= */
INSERT INTO comprendre
(id_commande_Commande, id_prestation_Prestation)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

/* =========================================================
   18. TABLE FACTURE
   ========================================================= */
   
INSERT INTO Facture
(Nom_materiaux_Facture, prix_materiau_Facture,
montant_total_Facture, Id_client_Client,
id_commande_Commande)
VALUES
('Tuyau PVC',80.00,450.00,1,1),
('Câble électrique',120.00,600.00,2,2),
('Ciment',200.00,850.00,3,3),
('Peinture',100.00,500.00,4,4),
('Tuiles',350.00,1200.00,5,5),
('Bois',180.00,750.00,6,6),
('Climatiseur',400.00,900.00,7,7),
('Engrais',90.00,650.00,8,8),
('Matériel dépannage',150.00,1100.00,9,9),
('Matériel chauffage',250.00,950.00,10,10);


/* =========================================================
   19. TABLE PAIEMENT
   ========================================================= */
   
INSERT INTO paiement
(type_paiement_paiement, type_compte_paiement,
Id_client_Client, id_facture_Facture)
VALUES
('Carte bancaire','Fidélité',1,1),
('PayPal','Fidélité',2,2),
('Espèces','Non fidélité',3,3),
('Carte bancaire','Non fidélité',4,4),
('PayPal','Fidélité',5,5),
('Carte bancaire','Fidélité',6,6),
('Espèces','Non fidélité',7,7),
('Carte bancaire','Fidélité',8,8),
('PayPal','Non fidélité',9,9),
('Carte bancaire','Fidélité',10,10);

/* =========================================================
   20. TABLE AVIS_CLIENT
   ========================================================= */

INSERT INTO Avis_client
(Note_Avis_client, Commentaire_Avis_client,
Date_avis_Avis_client, Id_client_Client,
Id_artisan_Artisan)
VALUES
(5,'Excellent travail','2026-09-04',1,1),
(4,'Travail sérieux','2026-09-06',2,2),
(5,'Très professionnel','2026-09-09',3,3),
(3,'Travail correct','2026-09-11',4,4),
(5,'Très satisfait','2026-09-13',5,5),
(4,'Bon travail','2026-09-14',6,6),
(2,'Travail en retard','2026-09-15',7,7),
(5,'Très bonne prestation','2026-09-16',8,8),
(4,'Artisan compétent','2026-09-17',9,9),
(5,'Je recommande','2026-09-18',10,10);





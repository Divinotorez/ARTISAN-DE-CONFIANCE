/*=========================================================
   EMPECHER les doublons de données
=========================================================*/
USE artisans_de_confiance;

-- CLIENT
ALTER TABLE Client
ADD CONSTRAINT uq_client_nom_prenom
UNIQUE (Nom_client_Client, Prenom_client_Client);

-- ARTISAN
ALTER TABLE Artisan
ADD CONSTRAINT uq_artisan_telephone
UNIQUE (Telephone_Artisan);

-- TYPE DE TRAVAUX
ALTER TABLE Type_travaux
ADD CONSTRAINT uq_type_travaux
UNIQUE (nom_travaux_Type_travaux);

-- FOURNISSEUR
ALTER TABLE Fournisseur
ADD CONSTRAINT uq_fournisseur_telephone
UNIQUE (Telephone_Fournisseur);

-- ADRESSE
ALTER TABLE Adresse
ADD CONSTRAINT uq_adresse
UNIQUE (
    Numero_rue_Adresse,
    Nom_rue_Adresse,
    code_postal_Adresse,
    Ville_Adresse
);

-- DISPONIBILITÉ
ALTER TABLE Disponibilite
ADD CONSTRAINT uq_disponibilite
UNIQUE (
    Id_artisan_Artisan,
    Date_debut_Disponibilite,
    Date_fin_Disponibilite
);

-- OFFRIR
-- Déjà protégé par la clé primaire composée :
-- (id_travaux_Type_travaux, Id_artisan_Artisan)

-- STOCKER
-- Déjà protégé par la clé primaire composée :
-- (id_produit_Produit, Id_artisan_Artisan)

-- S'APPROVISIONNER
-- Déjà protégé par la clé primaire composée :
-- (Id_artisan_Artisan, Id_fournisseur_Fournisseur)

-- FAIRE
-- Déjà protégé par la clé primaire composée :
-- (Id_artisan_Artisan, Id_prestation_Prestation)

-- COMPRENDRE
-- Déjà protégé par la clé primaire composée :
-- (id_commande_Commande, id_prestation_Prestation)

-- CONTENIR
-- Déjà protégé par la clé primaire composée :
-- (id_commande_Commande, id_travaux_Type_travaux)
# Module 164 2023.03.25 USER Managment app


## Database: allemann_fady_info1c_usermanagement_164_2023


## Lancement du projet

1. veuillez d'abord aller dans requirement.txt pour télécharger module nécéssaire au bon lancement du projet
2. puis ensuite rendez-vous dans database/ALLEMANN_FADY_INFO1C_USERMANAGER_164_2023.SQL et lancer le fichier 
    ce qui vous permetra de récuprérer toute la base de données
    si vous obtener une erreur comme quoi la base de donnée n'existe pas veuillez appuillez sur "skip warning"
3. Lancer "run_mon_app.py" qui se trouve dans le dossier APP_UserManagement ce qui devrait lancer l'application 







## Dictionnaire de données 

### Table: t_departement

| Column            | Type         | Null | Default | Extra          |
|-------------------|--------------|------|---------|----------------|
| ID_departement    | int          | NO   |         | AUTO_INCREMENT |
| nom_departement   | varchar(255) | YES  | NULL    |                |
| type_departement  | varchar(255) | YES  | NULL    |                |

### Table: t_person

| Column       | Type         | Null | Default | Extra          |
|--------------|--------------|------|---------|----------------|
| ID_Person    | int          | NO   |         | AUTO_INCREMENT |
| First_Name   | varchar(255) | YES  | NULL    |                |
| Last_name    | varchar(255) | YES  | NULL    |                |
| Birth_date   | date         | YES  | NULL    |                |
| gender       | varchar(1)   | YES  | NULL    |                |

### Table: t_personne_avoir_compte

| Column                  | Type         | Null | Default | Extra |
|-------------------------|--------------|------|---------|-------|
| id_personne_avoir_compte| int          | NO   |         | AUTO_INCREMENT |
| fk_personne             | int          | YES  | NULL    |                |
| fk_compte               | int          | YES  | NULL    |                |

### Table: t_personne_avoir_role

| Column                  | Type         | Null | Default | Extra |
|-------------------------|--------------|------|---------|-------|
| id_personne_avoir_role  | int          | NO   |         | AUTO_INCREMENT |
| fk_role                 | int          | YES  | NULL    |                |
| fk_Personne             | int          | YES  | NULL    |                |

### Table: t_role

| Column       | Type         | Null | Default | Extra          |
|--------------|--------------|------|---------|----------------|
| ID_role      | int          | NO   |         | AUTO_INCREMENT |
| Role_name    | varchar(255) | YES  | NULL    |                |
| Access_level | int          | YES  | NULL    |                |

### Table: t_user_account

| Column       | Type         | Null | Default | Extra          |
|--------------|--------------|------|---------|----------------|
| ID_account   | int          | NO   |         | AUTO_INCREMENT |
| User_name    | varchar(255) | YES  | NULL    |                |
| password     | varchar(255) | NO   |         |                |

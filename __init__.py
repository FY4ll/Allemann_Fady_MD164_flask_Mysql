"""Initialisation des variables d'environnement
    Auteur : OM 2023.03.20 Indispensable pour définir les variables indispensables dans tout le projet.
"""
import sys

from environs import Env


try:
    obj_env = Env()
    obj_env.read_env()
    HOST_MYSQL = obj_env("HOST_MYSQL")
    USER_MYSQL = obj_env("USER_MYSQL")
    PASS_MYSQL = obj_env("PASS_MYSQL")
    PORT_MYSQL = int(obj_env("PORT_MYSQL"))
    NAME_BD_MYSQL = obj_env("NAME_BD_MYSQL")
    NAME_FILE_DUMP_SQL_BD = obj_env("NAME_FILE_DUMP_SQL_BD")

    ADRESSE_SRV_FLASK = obj_env("ADRESSE_SRV_FLASK")
    DEBUG_FLASK = obj_env("DEBUG_FLASK")
    PORT_FLASK = obj_env("PORT_FLASK")
    SECRET_KEY_FLASK = obj_env("SECRET_KEY_FLASK")

except Exception as e:
    print(f"45677564530 Erreur {type(e)} init application variables d'environnement {e.args}")
    sys.exit()

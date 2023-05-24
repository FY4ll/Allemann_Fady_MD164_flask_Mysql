"""Gestion des formulaires avec WTF pour les films
Fichier : gestion_films_wtf_forms.py
Auteur : OM 2022.04.11

"""
from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, DateField, SelectField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired, NumberRange, DataRequired
from wtforms.validators import Regexp
from wtforms.widgets import TextArea


class FormWTFAddFilm(FlaskForm):
    """
        Dans le formulaire "genres_ajouter_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_film_regexp = ""
    nom_film_add_wtf = StringField("Nom du film ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                               Regexp(nom_film_regexp,
                                                                      message="Pas de chiffres, de caractères "
                                                                              "spéciaux, "
                                                                              "d'espace à double, de double "
                                                                              "apostrophe, de double trait union")
                                                               ])
    prenom_personne_add_wtf = StringField("prénom de la personne ",
                                          validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                      Regexp(nom_film_regexp,
                                                             message="Pas de chiffres, de caractères "
                                                                     "spéciaux, "
                                                                     "d'espace à double, de double "
                                                                     "apostrophe, de double trait union")
                                                      ])
    date_naissance_wtf = DateField("Date de naissance",
                                   format="%Y-%m-%d",
                                   )
    genres_choices = [("H", "Homme"), ("F", "Femme"), ("X", "Autres")]
    genre_personne_wtf = SelectField("Genre", choices=genres_choices)

    submit = SubmitField("Enregistrer la personne")


class FormWTFUpdateFilm(FlaskForm):
    """
        Dans le formulaire "film_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """

    nom_film_update_wtf = StringField("Nom de famille", widget=TextArea())
    prenom_personne_update_wtf = IntegerField("Prénom de la personne", validators=[NumberRange(min=1, max=5000,
                                                                                               message=u"Min %(min)d et "
                                                                                                       u"max %(max)d "
                                                                                                       u"Selon Wikipédia "
                                                                                                       u"L'Incendie du "
                                                                                                       u"monastère du "
                                                                                                       u"Lotus rouge "
                                                                                                       u"durée 1620 "
                                                                                                       u"min")])

    description_film_update_wtf = StringField("Sexe de la personne", widget=TextArea())
    datesortie_film_update_wtf = DateField("Date de naiscance", validators=[InputRequired("Date obligatoire"),
                                                                            DataRequired("Date non valide")])
    submit = SubmitField("Update film")


class FormWTFDeleteFilm(FlaskForm):
    """
        Dans le formulaire "film_delete_wtf.html"

        nom_film_delete_wtf : Champ qui reçoit la valeur du film, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "film".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_film".
    """
    nom_film_delete_wtf = StringField("Effacer ce film")
    submit_btn_del_film = SubmitField("Effacer film")
    submit_btn_conf_del_film = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")

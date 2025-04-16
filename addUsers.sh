#!/bin/bash

# On verifie qu'il y à au moins 1 argument au scripte
if [ $# = 0 ]
then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

#On fait une boucle FOR pour créé des compte autant de fois qu'il y a d'argument
for user in "$@"
do
    #On verifie si l'utilisateur existe
    if [ id "$user" &>dev/null ]
    then
        echo "L'utilisateur $user existe déjà"
    else
        #On créé l'utilisateur
        sudo useradd -m $user
        #On verifie que la commande a bien fonctionner
        if [ $? -eq 0 ]
        then
            echo "L'utilisateur $user a été crée"
        else
            echo "Erreur à la création de l'utilisateur $user"
        fi
    fi
done

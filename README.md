guns
====

Scripts et données à partir de la copie du Registre des armes à feu rendue publique par La Presse le 21 novembre 2013 (http://files.lpcdn.ca/lapresse/donnees/grc/registre_armes_lapresse.zip)

La Presse a reçu un fichier «anonymisé», c'est-à-dire que le nom des propriétaires n'apparaît pas, bien sûr, et leur adresse a été effacée, sauf pour les deux premiers caractères de leur code postal.

Les trois premiers caractères des codes postaux correspondent à ce que Postes Canada appelle les «Régions de tri et d'acheminement (RTA)». Nous appellerons les deux premiers caractères du code postal un «RTA à 2 caractères».

#### FICHIERS ####

* rta_pop.csv => fichier de la population par RTA à 2 caractères, composé à partir de données du recensement de 2011 (Statistique Canada: http://www12.statcan.gc.ca/census-recensement/2011/dp-pd/hlt-fst/pd-pl/Table-Tableau.cfm?LANG=Fra&T=1201&SR=1&RPP=25&S=3&O=A)
* ArmesParCodePostal.csv => fichier produit par le script ci-dessous, contient le nombre d'armes à feu enregistrées pour chacun des RTA à 2 caractères.
* armesFinal.csv => fichier combinant les deux fichiers csv ci-haut et calculant en plus le nombre d'armes à feu par habitant et par ménage, pour chacun des RTA à 2 caractères au Canada.
* armesParCodePostal.rb => script ruby glanant l'énorme fichier csv du registre des armes à feu rendu accessible par La Presse et trop lourd pour être hébergé ici.

===

Scripts and data from a copy of the Canadian Firearms Registry obtained and made public by La Presse on Nov. 21, 2013 (http://files.lpcdn.ca/lapresse/donnees/grc/registre_armes_lapresse.zip)

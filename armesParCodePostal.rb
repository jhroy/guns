#!/usr/bin/env ruby

require "csv"

# construction d'une liste des codes postaux à 2 caractères
# en excluant les lettres initiales inutilisées
# par le système des codes postaux (D,F,I,O,Q et U)

lettre = ("A".."Y").to_a
lettre.delete("D")
lettre.delete("F")
lettre.delete("I")
lettre.delete("O")
lettre.delete("Q")
lettre.delete("U")
chiffre = (0..9).to_a

rta = []
rta2 = []

lettre.each do |a|
	chiffre.each do |i|
		rta = a + i.to_s
		rta2.push(rta)
	end
end

# retrait de la liste des deux premiers caractères
# ne correspondant à aucun code postal valide

rta2.delete("A3")
rta2.delete("A4")
rta2.delete("A6")
rta2.delete("A7")
rta2.delete("A9")
rta2.delete("B7")
rta2.delete("B8")
rta2.delete("C2")
rta2.delete("C3")
rta2.delete("C4")
rta2.delete("C5")
rta2.delete("C6")
rta2.delete("C7")
rta2.delete("C8")
rta2.delete("C9")
rta2.delete("E0")
rta2.delete("H0")
rta2.delete("H6")
rta2.delete("A3")
rta2.delete("K3")
rta2.delete("K5")
rta2.delete("M0")
rta2.delete("S1")
rta2.delete("S5")
rta2.delete("S8")
rta2.delete("X2")
rta2.delete("X3")
rta2.delete("X4")
rta2.delete("X5")
rta2.delete("X6")
rta2.delete("X7")
rta2.delete("X8")
rta2.delete("X9")
rta2.delete("Y2")
rta2.delete("Y3")
rta2.delete("Y4")
rta2.delete("Y5")
rta2.delete("Y6")
rta2.delete("Y7")
rta2.delete("Y8")
rta2.delete("Y9")

# déclaration des noms de fichiers
# le premier est le fichier source téléchargé du site de La Presse
# ici: http://files.lpcdn.ca/lapresse/donnees/grc/registre_armes_lapresse.zip
# le second est le fichier créé par ce script

fichier = "registre_armes.csv"
fichier2 = "ArmesParCodePostal.csv"

# boucle qui prend un code postal à 2 caractères à la fois
# et qui vérifie ensuite sa présence (ou non)
# dans chacune des 8 016 808 lignes du registre des armes à feu;
# s'il est présent, le compteur «nb» est augmenté de 1

rta2.each do |code|
	nb = 0 # compteur remis à zéro avec chacun des codes postaux à 2 caractères
	CSV.foreach(fichier, headers:true) do |ligne|
		if ligne["postal_code"] == code
			nb += 1
		end
	end
	puts code + " = " + nb.to_s # vérification en cours d'exécution

# ce qui suit ne fait qu'ajouter, à notre fichier final, une ligne avec deux colonnes:
# code postal à 2 caractères et nombre d'armes à feu enregistrées dans ce code

	armes =[]
	CSV.open(fichier3, "a") do |l|
		armes.push(code,nb)
		l << armes
	end
	p armes # vérification en cours d'exécution
end

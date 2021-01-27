# Test

Test de mise en place.

## Problème

Pour valider ce test, il faut déchiffrer le chiffre de Vigenère contenu
dans le fichier `input.txt`, sachant que
- on identifie les lettres `a-z` (codes ASCII de 97 à 122) et le
caractère espace (code ASCII 32) aux entiers modulo 27, l'espace étant
représenté par 0.
- la clef est "haricot"


## Format

Vous devez écrire un programme `main.gp` en Pari/GP dont l'exécution via
```
gp -fq < main.gp
```
affiche (uniquement) la solution cherchée.

taper `make check` permet de vérifier que votre solution est bonne.

Veillez à mettre des commentaires sur votre démarche et sa validité
dans le fichier ``main.gp``.

De manière alternative, vous pouvez écrire un programme `main.c` qui
fasse la même chose.

## Validation

Il reste à faire un commit et à envoyer votre solution pour l'enregistrer
```
git add main.gp
git commit -m 'ma solution'
git push
```


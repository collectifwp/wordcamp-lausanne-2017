# Obtenir le code du theme CampSite

Pour développer un thème custom pour un WordCamp, il peut être utile d'installer une version locale du site. 

Pour cela il est nécessaire d'obtenir le thème, ainsi que certaines des extensions (notamment celle créant les custom post types).

Voici une astuce donnée par @scottsweb dans [wceu-2016-css](https://github.com/scottsweb/wceu-2016-css)

- Ouvrez l'application Terminal
- Naviguez dans le dossier souhaité
- Effectuez la commande suivante, pour récupérer thèmes et extensions utilisées sur la plateform WordCamp.org

```
svn co https://meta.svn.wordpress.org/sites/trunk/wordcamp.org/public_html/wp-content/
```

erreurs possibles:

svn: E000060: Error running context: Operation timed out

Il est possible que malgré cette erreur, vous ayez tous les élément nécessaires.
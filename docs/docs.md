# Documentation du thème WordCamp Lausanne 2018

Le thème utilisé est le thème "CampSite2017". C'est l'un des thèmes disponibles pour les sites WordCamp.org. 

Une particularité est qu'il est fait pour fonctionner avec du CSS chargé depuis GitHub. Un code d'exemple est fourni par Lucijan Blagonic, sur le dépot Github https://github.com/lucijanblagonic/wceu-2017

Ce dépot contient toute une méthodologie de design CSS, avec un processus incluant Gulp, Sass, un Style Guide généré automatiquement...

Nous allons essayer de documenter notre exploration et prise en main de ce thème.

## Documentation du thème CampSite2017

Dans un premier temps, nous faisons un Fork du dépôt CSS de base, afin de faire nos modifications. Voici notre Fork:

https://github.com/wp-romandie/wp-lausanne-2018-css/

Ce dépôt est organisé selon une structure séparant:

1. le code source (dossier "source").
2. le code généré (dossier "build").
3. le dossier "styleguide", qui contient un Style Guide généré automatiquement.

Commençons par trouver le CSS final que nous souhaitons utiliser. Il se trouve logiquement dans le dossier "build", sous "assets/stylesheets/style.css". C'est ce fichier que nous allons inclure dans notre thème.

Pour cela, dans le backend du site 2018.lausanne.wordcamp.org, nous allons dans le réglage *Apparence > CSS distant (Remote CSS)*. Nous renseignons l'URL du CSS distant, en indiquant la feuille de style CSS de notre dépôt:

https://api.github.com/repos/wp-romandie/wp-lausanne-2018-css/contents/build/assets/stylesheets/style.css

Dans un premier temps, cela nous suffit. Nous commençons à construire le site ainsi. Pour appliquer nos images de fond, fontes et couleurs, nous utilisons le Customizer et la surcharge CSS.

Après un certaine quantité de modifications, cela commence à devenir ingérable. C'est le moment d'étudier de plus près la méthode de "build" proposée par L. Blagonic.

## La suite

- Voir le processus d'installation dans : [installation.md](installation.md)
- Voir la FAQ sur l'organisation du code CSS dans : [faq.md](faq.md)
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

### Mettre en place le processus de build

Il faut commencer par installer Node.js et Gulp. 

Je commence par aller chercher sur https://nodejs.org/en/ un installeur Node.js. Je choisis la version 8.11.1 LTS pour macOS (x64).

J'exécute l'installeur, qui me dit:

```
This package will install:
- Node.js v8.11.1 to /usr/local/bin/node
- npm v5.6.0 to /usr/local/bin/npm
Make sure that /usr/local/bin is in your $PATH.
```

Ensuite, je tente d'installer Gulp, en faisant cette commande dans le terminal: 

```
npm install gulp
```

Cela mouline pendant 9.207s, et m'installe 255 packages.

Je fais ensuite cette commande, qui va mettre à jour des paquets devant être mis à jour:

```
npm install
```

Là, ça prend du temps... Il semble que cette commande installe diverses librairies nécessaires pour le projet, qui vont être installées dans un dossier nommé "node_modules". Cela finit en me disant "added 816 packages in 149.99s".

J'exécute maintenant la commande "gulp". Le terminal me dit: "-bash: gulp: command not found". 

Je tente alors cette recommandation [de Stack Overflow](https://stackoverflow.com/questions/22224831/after-installation-of-gulp-no-command-gulp-found):

```
npm install --global gulp-cli
```

Résultat: des erreurs de droits d'accès. Je refais la commande avec sudo:

```
sudo npm install --global gulp-cli
```

Résultat:

```
/usr/local/bin/gulp -> /usr/local/lib/node_modules/gulp-cli/bin/gulp.js
+ gulp-cli@2.0.1
added 238 packages in 8.275s
```

Ça semble pas mal! Désormais si je fais "gulp", il se passe quelque chose....

Je fais maintenant 

```
gulp build
```

Ça marche! Cela regénère les dossiers "styleguide" et "build". Le CSS final est la, inchangé, donc tout fonctionne comme prévu.

Il est temps maintenant de migrer nos surchages CSS directement dans les fichiers Sass.



## Quelques analyses de code CSS

Ci-dessous, quelques analyses de fragments de code, en vrac.

Images de l'en-tête:

header-wceu17-hero-desktop.jpg = 702 x 1800

header-wceu17-hero-mobile.jpg = 700 x 1126 px

https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-mobile.jpg

## Où sont définies ces images?

Dans les styles:

1) Dans le SASS:

/source/assets/stylesheets/_settings.other.scss:

```
/* Logo size */

$site-logo-width:               360px; // Width of the image/element
$site-logo-height:              360px; // Height of the image/element
$site-logo-proportion:          .5; // Change the logo proportion in header e.g. .5 will reduce the logo size by half.
$site-logo-path:                url('https://2017.europe.wordcamp.org/files/2017/03/logo-wceu17-symbol.png'); // Logo image

/* Hero */

$site-hero-path-small:          url('https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-mobile.jpg'); // Background image
$site-hero-path-large:          url('https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-desktop.jpg'); // Background image
$site-hero-overlay:             .6; // Image overlay color opacity
```

2) Dans le CSS final:

Logo: 

```css
.site-title a:before{
    display:block;
    width:180px;
    height:180px;
    margin-left:auto;
    margin-right:auto;
    margin-bottom:1rem;
    background-repeat:no-repeat;
    background-position:50% 50%;
    background-image:url(https://2017.europe.wordcamp.org/files/2017/03/logo-wceu17-symbol.png);
    background-size:100%;
    content:""
}

.site-header{
    position:relative;
    background-repeat:no-repeat;
    background-position:50% 0;
    background-size:fixed;
    background-image:url(https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-mobile.jpg);
    transition:all .15s ease
}
@media (min-width:48em){
    .site-header{
        background-image:url(https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-desktop.jpg);
        background-position:50% 50%;
        background-size:cover
    }
}
```

Pour l'instant, nous modifions ce code à la main, et ajoutons le CSS dans la fenêtre "Personnaliser": [https://2018.lausanne.wordcamp.org/wp-admin/customize.php](https://2018.lausanne.wordcamp.org/wp-admin/customize.php)
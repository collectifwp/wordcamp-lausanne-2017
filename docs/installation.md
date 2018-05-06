# Installation

## Mettre en place le processus de build

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

Je peux maintenant définir les surcharges CSS directement dans les fichiers Sass.


# Thème WordCamp Lausanne 2018 - Foire aux Questions


## Où sont définies les images de l'en-tête?

Dans le fichier SASS suivant: [source/assets/stylesheets/_settings.other.scss](https://github.com/wp-romandie/wp-lausanne-2018-css/blob/master/source/assets/stylesheets/_settings.other.scss).

C'est là qu'on trouve les variables suivantes:

- $site-logo-path
- $site-hero-path-small
- $site-hero-path-large

Ces variables sont utilisées pour définir le chemin des images.

Les images originales : 

- https://2017.europe.wordcamp.org/files/2017/03/logo-wceu17-symbol.png
- https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-mobile.jpg = 700 x 1126 px
- https://2017.europe.wordcamp.org/files/2017/01/header-wceu17-hero-desktop.jpg = 702 x 1800

## Quels sont les breakpoints du CSS, et où sont-ils définis ?

Au même endroit, dans _settings.other.scss. Voilà la liste des breakpoints:

```
/* Media queries */
$extra-small-value:             24em; // 384px
$small-value:                   37.5em; // 600px
$medium-value:                  48em; // 768px
$large-value:                   62em; // 992px
$extra-large-value:             80em; // 1280px
```

Le basculement p.ex. du menu mobile vers desktop se fait avec `@include breakpoint(small) {}`.



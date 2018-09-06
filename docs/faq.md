# Thème WordCamp Lausanne 2018 - Foire aux Questions

## Où sont définies les couleurs?

Dans _settings.colors.scss

* Le rouge officiel: $local-gold: #D34516;
* Un rouge plus sombre: $local-copper: #9A0500; 
* Un bleu sombre: $local-thunder: #1C3F58;

On peut voir le résultat dans le style guide:
https://wp-romandie.github.io/wp-lausanne-2018-css/styleguide/section-1.html#kssref-1-colors


## Où sont définies les images de l'en-tête?

Dans le fichier SASS suivant: 

[source/assets/stylesheets/_settings.other.scss](https://github.com/wp-romandie/wp-lausanne-2018-css/blob/master/source/assets/stylesheets/_settings.other.scss)

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

Cette syntaxe est possible grâce à un Mixin SCSS. Ce mixin est défini dans: _tools.media-queries.scss.

## Comment se fait-il que les styles de base des liens (hover, visited) ne sont pas définis?

Excellente question. Les couleurs bleu / violet, etc, sont définis dans les styles minimalistes de CampSite:

```
a {
  color: royalblue;
}
a:visited {
  color: purple;
}
a:hover, a:focus, a:active {
  color: midnightblue;
}
```

Ils sont surchargés dans _elements.links.scss mais étrangement a:visited a été oublié.

## Où est défini le rouge du H1?

Dans _elements.headings.scss. Les headings ont des variables couleur: $color-text-heading-1, etc.

## Manu, où as-tu mis les styles de la sidebar latérale?

Dans le fichier _components.main.scss : c'est ici que la mise en page du bloc de contenu "Main" semblait logique. 

C'est notamment ici qu'est défini la largeur maximum du contenu, avec la variable $container-max-width... qui est définie (dans _settings.orther.scess) à rem(800), càd 800px exprimés en rem (donc 50rem, car 1 rem = 16px).

Pour passer en 2-colonnes, je double cela à rem(1600).

## Comment sont gérés les Sponsors?

Voir [sponsors.md](sponsors.md)
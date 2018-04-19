## Documentation du thème CampSite2017

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
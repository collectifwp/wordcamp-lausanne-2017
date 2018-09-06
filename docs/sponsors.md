# Sponsors

Dans un site WordCamp, les Sponsors sont un contenu spécial: wcb_sponsor.

On peut leur attribuer un niveau de partenariat, ajouter un descriptif, et assigner une "Image mise en avant".

## Comment se fait l'affichage sur le site?

Avec un shortcode, qui peut prendre des options. Comme ceci:

```
[sponsors link="website" content="none" title="none"]
```

Ce shortcode est placé dans un Wiget de texte. Pour WordCamp Lausanne 2018, le code se trouve dans le widget "Merci à nos sponsors", ajouté à la "Zone de widgets de pied 1".

Voici les options:

- link : Set the value to “website” to make the sponsor’s name and logo link to their website, or “post” to link to the sponsor’s post. Defaults to “none”.
- title : Defaults to “visible”. Any other values, like “none”, will omit the title.
- content : The default value “full” will print the content. The value “excerpt” will print the first 55 words of the content, adding a ‘continue reading’ (with hidden screen reader title) at the end. Any other value, like “none”, will hide the content, so only the logo and/or title will be shown.

Informations sur ce shortcode [sur make.wordpress.org](https://make.wordpress.org/community/handbook/wordcamp-organizer/first-steps/web-presence/custom-tools-for-building-wordcamp-content/#sponsors).
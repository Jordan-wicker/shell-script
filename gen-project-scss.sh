#!/bin/bash

mkdir $1
cd $1
touch index.html
mkdir scss css js images
mkdir ./css/lib
touch ./scss/main.scss ./js/app.js ./styles.css

cat <<EOT >> index.html
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title> --- </title>
      <link rel="stylesheet" href="./css/styles.css">
   </head>
   <body>
      <div id="app-container"></div>
   </body>
</html>
EOT

cat <<EOT >> ./scss/main.scss
*{ box-sizing: border-box }

img {
   width: 100%;
   display: block;
}

#app-container{
   max-width: 960px;
}
EOT


echo downloading $font_ext
curl https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/fonts/fontawesome-webfont.${font_ext}?raw=true > ./css/fonts/fontawesome-webfont.${font_ext}

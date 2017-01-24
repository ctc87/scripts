#!/bin/bash

#############################################################################
# Script: Estructura de directorios página web.                             #
# Autor: Cralos Troyano Carmona                                             #            
# Mail: carlos.troyano.carmona@gmail.com                                    #
# Descripcion: Crea la estructura:                                          #
#                                                                           #
#       audios: archivos de audio mp3.                                      #
#       css: hojas de estilo css.                                           #
#       descargas: archivos zip, exe, etc que se ofrecen para descarga.     #
#       imágenes jpg, gif o png.                                            #
#       pdf: documentos pdf.                                                #
#       scripts: archivos js con código javascript reutilizable.            #
#       swfs: archivos con animaciones flash (*.swf).                       #
#       vídeos: ficheros en distintos formatos de vídeo: *.wmv, *.flv       #
#                                                                           #
#       Uso: estructuraWeb.sh | [-d] (para elminar)                         #
#                                                                           #
#############################################################################

clear
directorios=(
     'audios'
     'css'
     'descargas'
     'images'
     'images/icons'
     'images/backgrounds'
     'images/sprites'
     'pdf'
     'scripts'
     'fonts'
     'swfs'
     'videos'
   )

explicaciones=(
     ': archivos de audio mp3."'
     ': hojas de estilo css.'
     ': archivos zip, exe, etc que se ofrecen para descarga.'
     ': imágenes jpg, gif o png.'
     ': iconos para la página.'
     ': fondos para la página.'
     ': sprites sheets para la página.'
     ': archivos pdf que se ofrecen para descarga.'
     ': archivos js con código javascript reutilizable.'
     ': fuentes para la página.'
     ': archivos con animaciones flash (*.swf).'
     ': ficheros en distintos formatos de vídeo: *.wmv, *.flv'
   )
CREANDO="Creando carpeta" ;

creado() {
    echo "El directorio ${1} ya existía";
}

if [ "$1" = "-d" ]; then
    echo "Borrando estructura de directorios"
    count=0
    while [ "x${directorios[count]}" != "x" ]
    do   
        if [ ! -d $directorios[count] ]; then
            echo "Borrando ${directorios[count]}"
            rm -rf ${directorios[count]}
        fi
       count=$(( $count + 1 ))
    done
else
    echo "Creando estructura de directorios";
    count=0
    while [ "x${directorios[count]}" != "x" ]
    do   
        if [ ! -d $directorios[count] ]; then
            echo "${CREANDO} ${directorios[count]} ${explicaciones[count]}";
            mkdir ${directorios[count]}
        else
             creado ${directorios[count]}
        fi
      count=$(( $count + 1 ))
    done
fi

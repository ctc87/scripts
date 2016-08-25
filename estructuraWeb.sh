#!/bin/bash
clear
directorios=(
     'audios'
     'css'
     'descargas'
     'images'
     'pdf'
     'scripts'
     'swfs'
     'videos'
   )

explicaciones=(
     ': archivos de audio mp3."'
     ': hojas de estilo css.'
     ': archivos zip, exe, etc que se ofrecen para descarga."'
     ': imágenes jpg, gif o png.'
     ': archivos js con código javascript reutilizable.'
     ': archivos js con código javascript reutilizable.'
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
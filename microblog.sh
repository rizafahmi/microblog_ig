#!/usr/bin/env bash
set -euo pipefail

TEXT=""
AUTHOR=""
BGCOLOR="#FFFFFF"
FONT=""
FILENAME="ig.png"

display_help() {
    echo "Usage: $0 [flags...]" >&2
    echo
    echo "     --author=\"@rizafahmi\"                            pesan tulisan atau nama yang akan muncul di kanan bawah gambar"
    echo "     --bgcolor=\"#f8f9fc\"                              warna latar dari gambar."
    echo "     --filename=\"output/ig-1.png\"                     nama file yang diinginkan."
    echo "     --font=\"fonts/sans.ttf\"                          jenis font yang ingin digunakan."
    echo "     --text=\"Tulislah pesanmu disini.\"                pesan yang ingin ditulis di gambar."
}

for arg in "$@"
do
    case $arg in
        --text=*)
            TEXT="${arg#*=}"
            shift
            ;;
        --author=*)
            AUTHOR="${arg#*=}"
            shift
            ;;
        --bgcolor=*)
            BGCOLOR="${arg#*=}"
            shift
            ;;
        --font=*)
            FONT="${arg#*=}"
            shift
            ;;
        --filename=*)
            FILENAME="${arg#*=}"
            ;;
        -h|--help)
            display_help
            exit 0
            ;;


    esac
done



convert -size 1080x1080 -background "$BGCOLOR" -fill black -font "$FONT" -pointsize 100 -gravity Center caption:"$TEXT" -pointsize 36 -annotate +400+500 "$AUTHOR" output/"$FILENAME"
exit 0

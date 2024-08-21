#!/bin/bash

# ImageMagickをインストールしていない場合は、以下のコマンドでインストールします
# brew install imagemagick

# PNGファイルをEPSファイルに変換し、pictures/epsディレクトリに保存する
mkdir -p pictures/eps
for file in pictures/png/*.png; do
  magick convert "$file" "pictures/eps/$(basename "${file%.png}.eps")"
done




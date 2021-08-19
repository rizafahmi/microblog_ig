# Microblog Generator

## [Bahasa Indonesia](#indonesia) [English](#english)

## <a name="english"></a> English

### What

Command line utility to generate image for Instagram. So called #microblog. Wrapper around [imagemagick](https://imagemagick.org/index.php).

### Installation

This tool depend on [imagemagick cli](https://imagemagick.org/script/download.php) which can be installed via [homebrew](https://brew.sh/) on macos or other package tool on linux system.

```shell
$ brew install imagemagick # on macos
$ sudo apt install imagemagick # on debian based linux
```

Then run this command to verify the installation.

```shell
$ convert -version
Version: ImageMagick 7.0.11-3 Q16 x86_64 2021-03-06 https://imagemagick.org
Copyright: (C) 1999-2021 ImageMagick Studio LLC
License: https://imagemagick.org/script/license.php
Features: Cipher DPC HDRI Modules OpenMP(4.5)
Delegates (built-in): bzlib freetype gslib heic jng jp2 jpeg lcms lqr ltdl lzma openexr png ps tiff webp xml zlib
```

Download file [microblog.sh]() atau clone this repo.

```shell
$ git clone https://github.com/rizafahmi/microblog_ig
$ cd microblog_ig
$ chmod +x microblog.sh
```

### Usage

```shell
$ ./microblog.sh or sh microblog.sh

Usage: ./microblog.sh [flags...]

     --author="@rizafahmi"                            pesan tulisan atau nama yang akan muncul di kanan bawah gambar
     --bgcolor="#f8f9fc"                              warna latar dari gambar.
     --filename="output/ig-1.png"                     nama file yang diinginkan.
     --font="fonts/sans.ttf"                          jenis font yang ingin digunakan.
     --text="Tulislah pesanmu disini."                pesan yang ingin ditulis di gambar.

```

For example, use this setting below to produce such beautiful image.

```shell
$ ./microblog.sh \
--text="Produktif bukan berarti berbuat lebih, melainkan mengerjakan yang PENTING." \
--author="@rizafahmi" \
--background="#f9f8fc" \
--font=fonts/AmaticSC-Bold.ttf \
--filename="ig.png"
```

![](./ig.png)

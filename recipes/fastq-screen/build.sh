#!/bin/bash

fastqscreen=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $fastqscreen
sed -i.bak '1 s|^.*$|#!/usr/bin/env perl|g' fastq_screen
cp -rf ./* $fastqscreen
rm -rf $fastqscreen/fastq_screen.bak
mkdir -p $PREFIX/bin
ln -sf $fastqscreen/fastq_screen $PREFIX/bin/fastq_screen

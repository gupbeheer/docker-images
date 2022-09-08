#!/bin/bash
cd OracleDatabase/SingleInstance/dockerfiles
./buildContainerImage.sh -x -v 18.4.0 -o "--platform linux/amd64"


#!/bin/bash
IFS=$'\n'
touch F.txt
du -h $HOME/*>F.txt

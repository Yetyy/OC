#!/bin/bash
echo -n "Введите название статьи: "
read article_name
echo -n "Введите автора: "
read author
echo -n "Введите научное направление: "
read field
echo -n "Введите год написания: "
read year
echo -n "Введите научный журнал: "
read journal
echo -n "Введите путь к файлу статьи (.pdf): "
read article_path
mkdir "${article_name}"
cp "$article_path" "$article_name/"
echo "${author}" > "${article_name}/author.txt"
echo "${field}" > "${article_name}/field.txt"
echo "${year}" > "${article_name}/year.txt"
echo "${journal}" > "${article_name}/journal.txt"
mkdir -p "Авторы/${author}"
ln -P "${PWD}/${article_name}/${article_name}.pdf" "Авторы/${author}/${article_name}.pdf"
mkdir -p "Направления/${field}"
ln -P "${PWD}/${article_name}/${article_name}.pdf" "Направления/${field}/${article_name}.pdf"
mkdir -p "Годы/${year}"
ln -P "${PWD}/${article_name}/${article_name}.pdf" "Годы/${year}/${article_name}.pdf"
mkdir -p "Журналы/${journal}"
ln -P "${PWD}/${article_name}/${article_name}.pdf" "Журналы/${journal}/${article_name}.pdf"

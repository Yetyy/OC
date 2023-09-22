#!/bin/bash
echo "Удаление файлов и директорий"
echo -n "Выберите опцию: 1) Удалить конкретную статью; 2) Удалить все статьи по критерию "
read option

if [ $option -eq 1 ]; then
      echo -n "Введите название удаляемой статьи: "
    read article_name
    autor=$(cat "$article_name/author.txt")
    field=$(cat "$article_name/field.txt")
    journal=$(cat "$article_name/journal.txt")
    year=$(cat "$article_name/year.txt")
    echo $autor
    # Remove the directories containing the specified article and its links in author/field/year/journal folders.
    rm Авторы/"$autor"/"$article_name.pdf"
    rm "Направления/$field/$article_name.pdf"
    rm "Журналы/$journal/$article_name.pdf"
    rm "Годы/$year/$article_name.pdf"
    rm -r "$article_name"
elif [ $option -eq 2 ]; then
 # Запрос у пользователя критерия поиска.
read -p "Введите критерий для поиска: " search_criteria

# Поиск файлов в текущей директории и её подпапках,
# содержащих нужный критерий и удаление папки, если найдено совпадение.
find . -type f -exec grep -q "$search_criteria" {} \; \
    -exec sh -c 'rm -rf "$(dirname "{}")"' \; \
    2>/dev/null


else
    echo "Опция недействительна. Выход из скрипта."
fi

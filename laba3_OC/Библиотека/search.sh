#!/bin/bash
echo -n "Введите научное направление: "
read search_field
echo -n "Введите научный журнал: "
read search_journal
echo "Ищем статьи..."
find "Направления/${search_field}" -maxdepth 1 -type f -printf "%f\n" > temp_field.txt
find "Журналы/${search_journal}" -maxdepth 1 -type f -printf "%f\n" > temp_journal.txt
grep -F -f temp_journal.txt temp_field.txt > results.txt

if [[ $? -eq 1 ]]; then
    echo "Статьи не найдены."
else
    while read -r line; do
        echo "${line}"
        xdg-open "Направления/${search_field}/${line}"
    done < results.txt
fi

rm temp_field.txt
rm temp_journal.txt
rm results.txt

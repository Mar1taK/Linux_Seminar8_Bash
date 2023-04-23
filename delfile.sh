#!/bin/bash

read -p "Введите путь к дирректории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Указанная дирректория найдена'
                cd $DELDIR
                echo 'Производится удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление завершено успешно'
        else
                echo 'Указанная дирректория не найдена!'
                exit 2
fi
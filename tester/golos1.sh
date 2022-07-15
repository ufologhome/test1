#! /bin/bash

# №1 ЗАПИСЫВАНИЕ ГОЛОСОВОГО ФАЙЛА

golo=$(sudo arecord -f dat -d 5 -r 44100 -D default output.wav)

echo $golo

# №1-1 ПРЕОБРАЗОВАНИЕ ФАЙЛА В СПЕКТРОГРАММУ

golo1=$(sudo python3 '/root/tester/norm1.py')

echo $golos1

# №2 ЗАПИСЬ ПРОВЕРОК В ОДИН ФАЙЛ

gol=$(sudo '/root/tester/zapis_v_odin_fail.sh')

echo $gol 

#echo "ВСЕ ПРОШЛО ХОРОШО ФАЙЛ СОЗДАН . . ."

# №3 ОБНАРУЖЕНИЕ СХОЖЕСТИ C КОМАНДАМИ ЗАТКНУТЬСЯ

if grep -q -w -e 1 -e 2 -e 3 -e 4 -e 5 /root/golos.txt; then

sleep 1

echo "ФАЙЛ ПРОВЕРЕН И ОБНАРУЖЕНО ЧТО ЕСТЬ СХОЖЕТЬ, ЩАС ПРОИГРАЕТ КОМАНДА"

dirk2=$(mplayer '/root/zat.wav')

echo $dirk2

sleep 1

echo "ПРОИГРАНА КОМАНДА ЗАТКНУТЬСЯ"

else 

echo "ФАЙЛ ПРОВЕРЕН И ОБНАРУЖЕНО ЧТО СХОЖЕСТИ НЕТ"

sleep 1

echo "НЕ БУДЕТ ПРОИГРАНА КОМАНДА ЗАТКНУТЬСЯ"

fi

# №4 СТИРАНИЕ НЕНУЖНЫХ ФАЙЛОВ

dirk3=$(shred -z -u -n 10 /root/golos.txt)

echo $dirk3

sleep 2

dirk4=$(shred -u -z -n 10 /root/output.wav)

echo $dirk4

dirk5=$(shred -u -z -n 10 /root/tester/tes0.jpg)

echo $dirk5

echo "КОЕ-КАКИЕ ФАЙЛЫ НАДЁЖНО УДАЛЁНЫ, СПАСИБО ЗА ВНИМАНИЕ ! ! !"

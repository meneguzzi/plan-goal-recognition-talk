#!/usr/bin/env gnuplot
#Ramon Fraga Pereira

# reset

set terminal pdf enhanced

set xrange [0:100]
set yrange [0:100]

set key bottom right
set key font ",18"

set xlabel "False Positive Rate" font ", 18"
set ylabel "True Positive Rate" font ", 18"

set size square
set pointsize 1.2

set ytics font ", 18"
set xtics font ", 18"

set style line 1 lc rgb "black" lt 2 lw 1 pt 1 dashtype '..'

set style line 2 lt rgb "dark-green" lw 2 pt 2
set style line 3 lt rgb "orange" lw 2 pt 4
set style line 4 lt rgb "purple" lw 2 pt 66

set out 'rocspace-all_domains-online.pdf'

plot 'RandomGuess.txt' using 1:2 t'{/*0.8 Random Guess}' with lines ls 1,\
'GoalMirroring.txt' using 2:1 t '{/*0.8 Goal Mirroring}' with points ls 2,\
'GoalMirroringWithLandmarks.txt' using 2:1 t '{/*0.8 Goal Mirroring With Landmarks}' with points ls 3,\
'LandmarksOnly.txt' using 2:1 t '{/*0.8 Online Recog. With Landmarks}' with points ls 4
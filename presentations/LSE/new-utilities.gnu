#!/usr/bin/gnuplot
#
# Luke's plot for book version of ST discussion
#
# AUTHOR: Hagen Wierstorf, but seriously modified by Luke Elson

reset

# qt
#set terminal qt size 350,262 enhanced font 'Verdana,10' persist

# eps
set terminal svg #postscript eps color
set output 'new-utilities.svg'

# Line styles
load 'styles.gnu'

# Legend
set key inside top right
# Axes label 
set xlabel 'Stage in Self-Torture series'
set ylabel 'Utility'


# Axis ranges
set xrange[0:100]
set samples 101
#set yrange[-15:20]

# Axis labels
set xtics nomirror
set ytics nomirror
#set tics scale 0.75
# Functions to plot
f(x) = x -11*floor(x/8)
g(x) = x -11*floor(x/9)
h(x) = x -11*floor(x/10)

# Plot
plot f(x) title 'life-altering pain is... 8 dial turns' with lines ls 1, \
     g(x) title '9 dial turns' with lines ls 2, \
     h(x) title '10 dial-turns' with lines ls 3


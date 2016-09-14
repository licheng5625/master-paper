set terminal postscript enhanced monochrome 
set grid
set output '| ps2pdf - ./index-sizes-ukgov.pdf
set key spacing 6.0 font "Helvetica, 18"

set yrange [0:300]
set ytics 20
set xlabel
set ylabel "Index Size (GBytes)\n"  font "Helvetica, 18"

set xtics border nomirror rotate by 90 offset 0.0, -5.0 font "Helvetica, 16"
set ytics border nomirror norotate scale 0 font "Helvetica, 16"


set style data histogram
set style histogram clustered gap 1
set style fill solid border -1
set boxwidth 0.8 relative
plot "index-sizes-ukgov.dat" index 0 using 2:xtic(1) title "Non-Coalesced" fs solid 0.75 lt -1,\
     "index-sizes-ukgov.dat" index 0 using 3:xtic(1) title "Coalesced" fs pattern 6 lt -1
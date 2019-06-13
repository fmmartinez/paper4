set autoscale fix
set size 1,1
set origin 0,0

set ylabel "Energy (kcal/mol)"
set xlabel "Volume scaling, V/Vmin"
set term pdf enhanced size 2,5 linewidth 2 font "Helvetica,10"
set output "three-La-eos.pdf"

set multiplot

set size 1,0.33
set origin 0,0.66
p 'La-EoS.txt' u 1:2 w l lw 2 t "ReaxFF", 'La-EoS.txt' u 1:3 w l lw 2 t "DFT"

set size 1,0.33
set origin 0,0.33
p 'La-EoS.txt' u 4:5 w l lw 2 t "ReaxFF", 'La-EoS.txt' u 4:6 w l lw 2 t "DFT"

set size 1,0.33
set origin 0,0
p 'La-EoS.txt' u 4:7 w l lw 2 t "ReaxFF", 'La-EoS.txt' u 4:8 w l lw 2 t "DFT"

unset multiplot
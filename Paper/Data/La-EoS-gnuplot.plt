set autoscale fix
set size 1,1
set origin 0,0

set ylabel "Energy (kcal/mol)"
set xlabel "Volume scaling, V/Vmin"
set term pdf enhanced size 2,5 linewidth 1 font "Helvetica,10"
set output "three-La-eos.pdf"

set multiplot

set size 1,0.33
set origin 0,0.66
p 'La-EoS.txt' u 1:2 w lp lw 2 t "ReaxFF", 'La-EoS.txt' u 1:3 w lp lw 2 t "DFT"

set size 1,0.33
set origin 0,0.33
p 'La-EoS.txt' u 1:4 w lp lw 2 t "ReaxFF", 'La-EoS.txt' u 1:5 w lp lw 2 t "DFT"

set size 1,0.33
set origin 0,0
p 'La-EoS.txt' u 1:6 w lp lw 2 t "ReaxFF", 'La-EoS.txt' u 1:7 w lp lw 2 t "DFT"

unset multiplot
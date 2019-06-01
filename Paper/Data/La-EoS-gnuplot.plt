set size 3,1
set ylabel "Energy (kcal/mol)"
set xlabel "Volume scaling, V/Vmin"
set term pdf
set output "three-La-eos.pdf"
set multiplot layout 3,1
p 'La-EoS.txt' u 1:2 w l lw 2 t "ReaxFF", 'La-EoS.txt' u 1:3 w l lw 2 t "DFT"
p 'La-EoS.txt' u 4:5 w l lw 2 t "ReaxFF", 'La-EoS.txt' u 4:6 w l lw 2 t "DFT"
p 'La-EoS.txt' u 4:7 w l lw 2 t "ReaxFF", 'La-EoS.txt' u 4:8 w l lw 2 t "DFT"
unset multiplot
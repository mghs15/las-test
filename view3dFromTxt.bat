wsl mkdir merge -p

wsl perl mergeTxt.pl

txt2las.exe -i merge/merge.txt -o merge/merge.las -parse sxyz -drop_z_below 0.5

lasview.exe merge/merge.las

pause
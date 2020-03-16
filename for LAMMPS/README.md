For example you want to *run LAMMPS many times and save each result of this programm*.
I take for example `in.crack`. You can look at this file and see that there enable to save pictures 
("If you uncomment the dump image line(s) in the input script a series of JPG images will be produced by the run" 
it is from LAMMPS web-manual).

For example you going to change the `mass		1` from `50.0` to `100.0` with 6 steps 
(50, 60, 70, 80, 90, 100) and save each results in folder with name like `mass1_50`, `mass1_60` etc.

Results I mean: 
- images
- movie
- log.lammps
- dump.crack

You write script at once and it works for you all day, all night. Yes my parametres from 1 to 100 is may be stupid, 
but it is just template for you. This case could be usefull template for you routine. Because it include main tasks 
like:
- search parametres in input file
- change this parametres in input file
- save it there you need with name which you need

Opportunities of PowerShell more cool than this simple script. It have API and could convert your results in csv for example. 
If you have good imagination you have possability to figure out how to use it.

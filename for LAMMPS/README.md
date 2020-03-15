For example you want to run LAMMPS many times and save each result of this programm.
I take for example `in.crack`. You can look at this file and see that there enable to save pictures 
("If you uncomment the dump image line(s) in the input script a series of JPG images will be produced by the run" 
it is from LAMMPS web-manual). For example you going to change the `mass		1` from `1.0` to `100` with 11 steps 
(1, 10, 20 ... 80, 90, 100) and save each results in folder with name like `mass1_1`, `mass1_10` etc. Results I mean 
images, movie, log.lammps, dump.crack. Yes my parametres from 1 to 100 is may be stupid, but it is just template for you.

You write script at once and it works for you all day, all night. This case could be usefull template for you routine. 
Because it include main tasks like search in file, change file, save it there you need with name which you need.

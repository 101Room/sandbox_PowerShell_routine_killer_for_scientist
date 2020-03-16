For example you want to *run LAMMPS many times and save each result of this programm*. I take for example `in.crack`. You can look at this file and see that there enable to save pictures ("If you uncomment the dump image line(s) in the input script a series of JPG images will be produced by the run" it is from LAMMPS web-manual).

**IMPORTANT! In directory with input must be ONLY input file!** It is because I just move all that have name not equal `in.crack`, because I'm not sure which output you will allow in input file and which you will get. So easiest way just move all that not eqal input file. This script need to know: where is your script, where is input file and which name set for each directories. For example you going to change the `mass		1` from `50.0` to `100.0` with 6 steps (50, 60, 70, 80, 90, 100) and save each results in folder with name like `mass1_50`, `mass1_60` etc. So this `mass1` it is that you will set in script (which name set for each directories) by answering on `Enter name for folders with results`.

What are results or outputs? I mean exactly this items: 
- images
- movie
- log.lammps
- dump.crack

You write script at once and it works for you all day, all night. Yes my parametres from 1 to 100 is may be stupid, but it is just template for you. This case could be usefull template for you routine. Because it include main tasks
like:
- ask input from user
- search parametres in input file
- change this parametres in input file
- save it there you need with name which you need (using make dir and move)

Opportunities of PowerShell more cool than this simple script. It have API and could convert your results in csv for example. 
If you have good imagination you have possability to figure out how to use it.



# Lab Manual for Transition States and Molecular Motors: Internal Coordinates and Molecular Mechanics


Herein you should find your notebook for doing the lab, and all the files that you will need to calculate the transition states


## Lab Setup


We will need to use Anaconda, which is a python (and more) package manager in order to run all the programs today. We will also need to download programs from Github, a distributed version control repository. Finally, we will need a way to visualize our results. Somehow the class of 2019 was able to override the Universities Computers to install all the below programs while in Powershell (a rudimentary programming environment), so I have faith in you all today. 


We will need to navigate around the "directories" in the terminal here is a small cheat sheet:

|  Command | Description  |
|--|--|
| ls  | list content of the current directory |
|  cd arg   | change to argument directory (if no argument is given change directory to home) |
|  cd ..   | backup one level from current directory |
| cp  arg1 arg2    | copy |
|  tail –f arg   | lists file output as it runs |
| mkdir    | make directory |
| pwd |print current working directory |
| vi |opens vim |
| rm | remove file (use -r to remove folder) |


 - [ ] Install Anaconda Navigator [MacOS](https://docs.anaconda.com/anaconda/install/mac-os/) or [Windows](https://docs.anaconda.com/anaconda/install/windows/)
 - [ ]  Download GSM from [github](https://github.com/ZimmermanGroup/pyGSM) using git, on MacOS this can be done using d, on Windows this is probably most easily done by downloading and unzipping file the Zip file.
 - [ ] Open Anaconda Navigator, and press the cube in the left upper corner that says Environments. Make a new environment for today, call it `py3` 
 - [ ] Press Install Jupyter Lab, and then launch
 - [ ] On the landing page start a "Terminal" launcher
 - [ ] `source activate py3`
 - [ ] Navigate to the folder where you installed pyGSM
 - [ ] Install pyGSM `python setup.py install` 
 - [ ] Verify pyGSM installed correctly by typing `gsm -h` if it gives an error it was not successful. Windows users may need to use a different version of numpy: `pip install numpy=1.19.3`
 - [ ] Install OpenMM 
	 - [ ] `conda install -c omnia parmed`
	 - [ ] `conda install -c omnia openmm`
 - [ ] Install additional packages and functionality to visualize molecules
	 - [ ] `pip install py3dmol`
	 - [ ] `conda install -c conda-forge widgetsnbextension`
	 - [ ] `conda install -c conda-forge ipywidgets` 
	 - [ ] `conda istall -c conda-forge nodejs`
	 - [ ] `jupyter nbextension enable --py --sys-prefix widgetsnbextension`
 - [ ] Download CHEM462 lab materials from [github](https://github.com/craldaz/CHEM462)
 - [ ] Examine and Rename `YourName_Notebook.ipynb` to your name, this is where you will complete your lab/
 - [ ]  Examine the READMEs 

==You are now ready to start the lab==


## Run The Calculations
Run transition state optimization for each structure 1 through 5

You will need to create folders for each molecule 1 through 5.
In each you will need to add the appropriate files:

1) some initial_geometry
2) parameter file motor.prmtop
3) inpcrd file motor.inpcrd
4) simulation.txt file for pyGSM
5) run.sh

The template folder can help you start

Most important you will need a driving coordinate file
which I sometimes call isomers (the name can be whatever you want).

 
It's actually pretty difficult to choose driving coordinates for the motors. 
The best combination I've found is actually 3 TORSIONS

TORSION 23 22 3 2 60.\
TORSION 31 24 22 3 60.\
TORSION 4 3 22 24 60.

TORSION 4 3 22 24 can be lowered to 10 degrees.
Also the first TORSION can be increased to 90 if you have trouble converging. 
For example, molecule 3 in  struggled to converge but changing this to 90 degrees helped.


Using the Terminal Launcher change directory to the molecule you want to run. Make sure the proper files are in place, and then execute the GSM command as demonstrated in `run.sh`e.g. by copy pasting it into the terminal.

Monitor the jobs while they run by visualizing the `scratch/growth_iters_*` and `scratch/opt_iters_*`files and by also looking at the log file. 

Plot the energy of the reaction path using matplotlib in the jupyter notebook, the energies are printed in the scratch/opt_iters_* files and can be retrieved using the functions provided.

Repeat the process until they are completed. 





## Here is a tree of this folder

    └── lab_materials
        ├── Force_Field_Prep
        │   ├── 01_resp
        │   │   ├── resp
        │   │   ├── scr
        │   │   └── scr.opt
        │   ├── 02_resp
        │   │   ├── resp
        │   │   ├── scr
        │   │   └── scr.opt
        │   ├── 03_resp
        │   │   ├── resp
        │   │   ├── scr
        │   │   └── scr.opt
        │   ├── 04_resp
        │   │   ├── resp
        │   │   ├── scr
        │   │   └── scr.opt
        │   └── 05_resp
        │       ├── resp
        │       ├── scr
        │       └── scr.opt
        ├── Q-CHEM-optimization
        │   └── optimized_geometries
        └── template




## Analysis

Calculate $\Delta G$, $E_a$ and $t_{1/2}$

$k = \frac{k_b*T}{h}exp(-\frac{E_a}{RT})$; $t_{1/2} = \frac{ln(2)}{k}$

|Constants|  Values|
|--|--|
| $k_b$ |1.38 x10^-23 J/s  |
| $h$  | 6.626x10^-45 J*K	|
| R | 1.98*10^-3 kcal mol$^{-1}$ K$^{-1}$ |   


 - [ ] Compare  $\Delta G$,  $E_a$ and $t_{1/2}$  to the literature
       values and your own expectation. ==Which is the fastest motor?==
     
 - [ ] Using the values of the internal coordinates (hint: GSM produces a file called IC_DATA which shows the changes in internal coordinates or by getting values for select internal coordinates) Reproduce the energies with the MM parameters and these values. You will need to use the parameters in the prmtop parameterfile. 



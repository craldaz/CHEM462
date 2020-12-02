# Welcome!!!


Herein you should find your notebook for doing the lab, and all the files that you will need to calculate the transition states

You will need to create folders for each molecule 1 through 5.
In each you will need to add the appropriate files:

1) some initial_geometry
2) parameter file
3) inpcrd file
4) simulation.txt file for pyGSM
5) run.sh

The template folder can help you start

Most important you will need a driving coordinate file
which I sometimes call isomers (the name can be whatever you want).


## Hint: 
it's actually pretty difficult to choose driving coordinates for the motors. 
The best combination I've found is actually 3 TORSIONS

TORSION 23 22 3 2 60.\
TORSION 31 24 22 3 60.\
TORSION 4 3 22 24 60.

TORSION 4 3 22 24 can be lowered to 10 degrees.
Also the first TORSION can be increased to 90 if you have trouble converging. 
For example, molecule 3 in  struggled to converge but changing this to 90 degrees helped.



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


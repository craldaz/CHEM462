gsm -xyzfile 02.motor.xyz \
    -mode SE_GSM     \
    -isomers isomer.txt     \
    -package OpenMM     \
    -lot_inp_file simulation.txt     \
    -coordinate_type DLC     \
    -linesearch backtrack     \
    -ADD_NODE_TOL 0.005     \
    -optimizer eigenvector_follow > log 2>&1 &

import residue

residue.prep_residue(
    residue_pdbfile='01.motor.pdb',
    amber_names=[],
    amber_types=[],
    amber_residues=[],
    ace_cap=False,
    nme_cap=False,
    do_optimization=False,
    do_resp=False, 
    antechamber_j='-j 5',
    )


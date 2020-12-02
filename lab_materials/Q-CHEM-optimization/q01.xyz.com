 $rem
 JOBTYPE OPT
 EXCHANGE B3LYP
 SCF_ALGORITHM diis
 SCF_MAX_CYCLES 300
 BASIS 6-31G**
 GEOM_OPT_MAX_CYCLES 300
 scf_convergence 8
 SYM_IGNORE TRUE
 SYMMETRY   FALSE

molden_format true
 $end

$molecule
0 1
C         -1.68471       -0.32692        0.21228
C         -1.29532       -1.65983        0.20567
C          0.19736       -1.73096        0.33335
C          0.60764       -0.29807        0.48174
C         -0.51543        0.50953        0.38999
C         -3.01847        0.06183        0.07060
C         -3.98765       -0.93146       -0.11021
C         -3.61174       -2.28291       -0.16101
C         -2.26590       -2.65465       -0.01660
H         -3.30337        1.10530        0.09179
H         -5.02770       -0.65566       -0.22656
H         -4.36487       -3.04325       -0.32299
H         -2.01925       -3.69901       -0.09295
C         -0.44849        1.89901        0.51496
C          1.84239        0.28610        0.81575
C          0.79517        2.48583        0.77776
C          1.93354        1.68075        0.94264
H          2.72403       -0.30674        0.99383
H          2.88455        2.13771        1.18378
H         -1.33549        2.51293        0.43292
H          0.87312        3.55980        0.88634
C          0.99306       -2.85316        0.37271
C          0.48657       -4.22927        0.79437
C          2.46252       -2.99543        0.11634
C          1.76808       -5.03348        1.13675
C          2.87794       -4.21414        0.61392
H          1.71822       -6.04358        0.67615
H          1.97000       -5.13635        2.22707
C          4.21096       -4.61899        0.59877
C          5.16442       -3.80024        0.00060
C          3.39958       -2.21342       -0.62935
C          4.76902       -2.61884       -0.64596
H          4.50335       -5.56764        1.03102
H          6.19878       -4.12308       -0.01623
C          5.72472       -1.86252       -1.34304
C          3.03724       -1.09962       -1.41495
C          3.99779       -0.36444       -2.11302
C          5.33937       -0.73384       -2.06333
H          2.01257       -0.79199       -1.52013
H          3.69748        0.49316       -2.70135
H          6.76743       -2.15778       -1.34985
H          6.07855       -0.16095       -2.60827
H         -0.05533       -4.68121       -0.06215
C         -0.35561       -4.22397        2.09492
H          0.22474       -3.77982        2.93304
H         -0.63002       -5.26609        2.36563
H         -1.29087       -3.64999        2.04069
$end
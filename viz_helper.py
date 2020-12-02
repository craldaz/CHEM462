import py3Dmol

def geom_to_3dview(geom,scale=1.):
    """ Converts geom to a 3d view which can viewed with show()

    Params:
        geom ((natoms,4) np.ndarray) - system geometry (atom symbol, x,y,z)

    Returns:
        3dview - py3Dmol object
        
        
        s = '''4
        * (null), Energy   -1000.0000000
        N     0.000005    0.019779   -0.000003   -0.157114    0.000052   -0.012746
        H     0.931955   -0.364989    0.000003    1.507100   -0.601158   -0.004108
        H    -0.465975   -0.364992    0.807088    0.283368    0.257996   -0.583024
        H    -0.465979   -0.364991   -0.807088    0.392764    0.342436    0.764260
        '''

    """
        
    s = str(len(geom)) + "\n\n"

    for line in geom:
        for i in range(4):
            s+= str(line[i]) + ' ' 
            if i==3:
                s+= '\n'
    

    xyzview = py3Dmol.view(width=400,height=400)
    xyzview.addModel(s,'xyz')
    xyzview.setStyle({'stick':{}})
    xyzview.zoomTo()

    labelsize=12

    for i in range(len(geom)):
        label_posits=[geom[i][1],geom[i][2],geom[i][3]]
        xyzview.addLabel("{}".format(i+1), {'position':{'x':'{}'.format(label_posits[0]),
                        'y':'{}'.format(label_posits[1]),'z':'{}'.format(label_posits[2])},
                        'backgroundColor':"'black'",'backgroundOpacity':'.0',
                        'fontOpacity':'1','fontSize':'{}'.format(labelsize),
                        'fontColor':"black",'inFront':'true',})
    return xyzview


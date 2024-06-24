# Run the calculations in the following way:

# 1. Calculate the Hubbard U parameter for Co-3d states
pw.x < CoO.scf.in > CoO.scf.out
hp.x < CoO.hp.in > CoO.hp.out

# 2. Perform the variable-cell structural optimization (vc-relax) using 
# the Hubbbard U parameter determined in the previous step
pw.x < CoO.vcrelax.in > CoO.vcrelax.out

# 3. Iteratae these steps until the self-consistency is reached for
# the Hubbard U parameter and the crystal structure

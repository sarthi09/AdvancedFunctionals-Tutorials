# Run the calculations in the following way:

# 1. Task 1 
# Perform convergence tests of the total energy of Si using the 
# PBE0 functional and x_gamma_extrapolation = .true.
# Use q-point meshes 1x1x1, 2x2x2, 4x4x4, 8x8x8.

  pw.x < Si.scf.in > Si.scf.out

# 2. Task 2
# Perform convergence tests of the total energy of Si (as above) 
# using the PBE0 functional and x_gamma_extrapolation = .false.
# In which case the convergence is faster?

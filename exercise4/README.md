# Run the calculations in the following way:

# Task 1
# Perform convergence tests of the band gap of Si using the SCAN functional 
# with the SCAN-generated pseudopotential (Si.SCAN.UPF).
# Consider the kinetic-energy curoff ecutwfc from 20 to 200 Ry (with a 10 Ry step).
# What is the converged band gap value? 
# What is the optimal cutoff (with the accuracy of the band gap of ~0.001 eV)?
 
  pw.x < Si.scf.in > Si.scf.out

# Task 2
# Calculate the band gap of Si using the SCAN functional with the PBE-generated
# pseudopotentials (Si.pbe_PseudoDojo.UPF and Si_ONCV_PBE-1.2.upf) and using the 
# optimized cutoff from the previous exercise. Compare these band gap values
# with the one obtained in the previous exercise.

# Task 3
# Calculate the band gap of Si using the rSCAN and r2SCAN functionals with the
# PBE-generated pseudopotential Si_ONCV_PBE-1.2.upf. Compare the computed band
# gap value with the one obtaned from SCAN and experiments. Which meta-GGA
# functional gives the closest agreement with experiments for the band gap of Si?


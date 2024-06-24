# Run the following calculations using the job.sh script:

# 1. Run the ground-state DFT self-consistent field (scf) calculation
pw.x < CoO.scf.in > CoO.scf.out

# 2. Run the ground-state DFT non-self-consistent field (nscf) calculation
pw.x < CoO.nscf.in > CoO.nscf.out

# 3. Run the calculation of the projected density of states (PDOS)
projwfc.x < CoO.projwfc.in > CoO.projwfc.out

# 4. Plot the PDOS for Co-3d and O-2p states
# This will generate a file called CoO_PDOS.eps
gnuplot plot_pdos.gp

# 5. Convert the PDOS file from the eps to pdf format
ps2pdf CoO_PDOS.eps CoO_PDOS.pdf

# 6. Copy the file CoO_PDOS.pdf to your laptop and visualize it
Adobe -> CoO_PDOS.pdf

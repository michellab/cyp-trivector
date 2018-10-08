for pert in *~*
do
    echo $pert
    cd $pert
    cd bound/run001/sim/output
    sbatch ../somd-gpu.sh
    cd ../../../../
    cd free/run001/sim/output
    sbatch ../somd-gpu.sh
    cd ../../../../../

done

for folder in *~*; do

	echo $folder
	cd $folder/bound/run001/sim/output/
	bunzip2 -d lambda-*/simfile.dat.bz2
	~/sire.app/bin/analyse_freenrg mbar -i lambda-*/simfile.dat -o mbar.pmf --temperature 298.0 --percent 95 --overlap --subsampling > freenrg-MBAR.dat
	cd ../../../../../
	cd $folder/free/run001/sim/output/
	bunzip2 -d lambda-*/simfile.dat.bz2
	~/sire.app/bin/analyse_freenrg mbar -i lambda-*/simfile.dat -o mbar.pmf --temperature 298.0 --percent 95 --overlap --subsampling > freenrg-MBAR.dat
	cd ../../../../../
done

setup:
	echo "source /home/thgamble/apps/miniconda3/etc/profile.d/conda.sh"
	python run_experiment --dump_data
	export JYTHON_HOME=/home/thgamble/apps/jython

run-all: backprop ga rhc sa flipflop continouspeaks tsp 

backprop:
	jython NN-Backprop.py

ga:
	jython NN-GA.py

rhc:
	jython NN-RHC.py

sa:
	jython NN-SA.py

flipflop:
	jython flipflop.py
	
continouspeaks:
	jython continouspeaks.py
	
tsp:
	jython tsp.py

clean:
	rm -rf ./output

help:
	cat Makefile

sep:
	@echo "---------------------------------------------------"

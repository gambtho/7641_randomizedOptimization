setup:
	echo "source /home/thgamble/apps/miniconda3/etc/profile.d/conda.sh"
	python run_experiment --dump_data
	export JYTHON_HOME=/home/thgamble/apps/jython

run-all:
	jython NN-Backprop.py
	jython NN-GA.py
	jython NN-RHC.py
	jython NN-SA.py
	jython flipflop.py
	jython continouspeaks.py
	jython tsp.py

clean:
	rm -rf ./output

help:
	cat Makefile

sep:
	@echo "---------------------------------------------------"

load:
	module load cuda-10.2 python-3.8
	source pytorch_env/bin/activate

enve:
	python3 -m venv pytorch_env
	pip3 install -r requirement.txt

run:
	python3 mnist/main_prof.py --epochs 1
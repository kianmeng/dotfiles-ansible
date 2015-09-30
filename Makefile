# Some build target to reduce typing. 

# Check for syntax errors.
check:
	ansible-playbook localhost.yml --syntax-check

# Test run the privisioning and unified diffs of the templates files.
dryrun:
	ansible-playbook localhost.yml --check --diff --ask-sudo-pass

# Getting information about the host machine, which is localhost.
facts:
	ansible all -m setup

# Privision the machine.
install:
	ansible-playbook localhost.yml --ask-sudo-pass 

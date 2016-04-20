# Some build target to reduce typing. 
.DEFAULT_GOAL :=dryrun

# Check for syntax errors.
check:
	ansible-playbook localhost.yml --syntax-check

# Test run the privisioning and unified diffs of the templates files.
dryrun:
	ansible-playbook localhost.yml --check --diff --ask-sudo-pass --tags core

# Getting information about the host machine, which is localhost.
facts:
	ansible all -m setup

# Privision the machine.
install:
	ansible-playbook localhost.yml --ask-sudo-pass 

# @see http://stackoverflow.com/a/32490846
# @see https://groups.google.com/d/msg/ansible-project/h-SGLuPDRrs/7iCfsItYod0J
role:
	ansible-playbook -v run_role.yml --ask-sudo-pass -e "ROLE=$(filter-out $@,$(MAKECMDGOALS))"

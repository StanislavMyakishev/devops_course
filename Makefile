ping:
	ansible metagroup -i inventory.ini -u root -m ping
install_git:
	ansible-playbook ./playbooks/install_git.yml -i inventory.ini -u root
uninstall_git:
	ansible-playbook ./playbooks/uninstall_git.yml -i inventory.ini -u root
tags:
	ansible-playbook --check ./playbooks/tags.yml -i inventory.ini -u root -t create_users
nginx:
	ansible-playbook --check ./playbooks/nginx.yml -i inventory.ini -u root
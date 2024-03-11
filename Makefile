ping:
	ansible metagroup -i inventory.ini -u root -m ping --vault-password-file .vault_pass
install_git:
	ansible-playbook ./playbooks/install_git.yml -i inventory.ini -u root --vault-password-file .vault_pass
uninstall_git:
	ansible-playbook ./playbooks/uninstall_git.yml -i inventory.ini -u root --vault-password-file .vault_pass
tags:
	ansible-playbook ./playbooks/tags.yml -i inventory.ini -u root -t create_users --vault-password-file .vault_pass
nginx:
	ansible-playbook ./playbooks/nginx.yml -i inventory.ini -u root --vault-password-file .vault_pass
create_users:
	ansible-playbook ./playbooks/create_users.yml -i inventory.ini -u root --vault-password-file .vault_pass
project_setup:
	ansible-playbook ./setup/main.yml -i inventory.ini -u root --vault-password-file .vault_pass
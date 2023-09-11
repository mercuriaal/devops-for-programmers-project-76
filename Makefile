install_roles:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook playbook.yml --vault-password-file ./.vault-password -i inventory.ini --skip-tags deploy

deploy:
	ansible-playbook playbook.yml --vault-password-file ./.vault-password -i inventory.ini -t deploy

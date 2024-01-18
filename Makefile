requirements:
	ansible-galaxy install -r requirements.yml

rabbitmq:
	ansible-playbook main.yml --tags 'rabbitmq'

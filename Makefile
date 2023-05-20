HOSTS=hosts
EXEC=/usr/bin/env

deploy:
	$(EXEC) ansible-playbook -i hosts playbook.yml

trust:
	$(EXEC) grep -o '^[^#]*[0-9]\{1,3\}\(\.[0-9]\{1,3\}\)\{3\}' $(HOSTS) | xargs -I{} ssh-keyscan {} >> ~/.ssh/known_hosts

.PHONY: deploy trust

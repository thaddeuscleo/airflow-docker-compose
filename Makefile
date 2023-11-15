.PHONY: gen-env
gen-env:
	@chmod +x scripts/generate-env.bash
	@chmod +x scripts/init.bash
	@scripts/generate-env.bash

.PHONY: airflow-init
airflow-init: gen-env
	@scripts/init.bash

.PHONY: init
init: airflow-init
	@docker compose up -d
	@echo ""
	@echo "airflow location: http://localhost:8080"
	@echo "------------------------"
	@echo "| Host     : localhost |"
	@echo "| Port     : 8080      |"
	@echo "| Username : airflow   |"
	@echo "| password : airflow   |"
	@echo "------------------------"

.PHONY: start
start:
	@docker compose up -d
	@echo ""
	@echo "airflow location: http://localhost:8080"
	@echo "------------------------"
	@echo "| Host     : localhost |"
	@echo "| Port     : 8080      |"
	@echo "| Username : airflow   |"
	@echo "| password : airflow   |"
	@echo "------------------------"

.PHONY: stop
stop:
	@docker compose down

.PHONY: destroy
destroy:
	@docker compose down -v

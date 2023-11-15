#! /bin/bash
echo -e "AIRFLOW_UID=$(id -u)" > .env
mkdir -p ./dags ./logs ./plugins
python -m venv venv
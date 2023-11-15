# Airflow Docker Compose

This repository is designed to facilitate the development of Apache Airflow DAGs. It provides a set of Makefile commands that streamline environment setup, initialization, starting, stopping, and destruction of the Airflow environment.

## Prerequisites

Before getting started, ensure you have the following installed:

- Docker
- Bash
- Make

## Installation

To set up the Airflow environment, follow these steps:

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/thaddeuscleo/airflow-docker-compose.git
    cd airflow-docker-compose
    ```

2. **Initialize Airflow:**
    Initialize Airflow with the command:
    ```bash
    make init
    ```
    This command will start the Docker containers and provide login credentials.


## Usage

### Starting the Environment

To start the Airflow environment, use:
```bash
make start
```

### Stopping the Environment

To stop the Airflow environment, use:
```bash
make stop
```

### Destroying the Environment

To completely destroy the Airflow environment and associated volumes, use:
```bash
make destroy
```

## Notes

- **Username and Password:** 
    - Username: `airflow`
    - Password: `airflow`
  
- Ensure to modify and add DAGs, plugins, or configurations as required within the Airflow directory.

## Contributing

Feel free to contribute to improve this repository. Create issues for any problems encountered or submit pull requests to enhance functionality.

---

Feel free to expand upon this template by adding more specific instructions or details about your Airflow setup and any additional configurations that might be necessary for users to know.
# airflow-repo-design
Repositório para estudo e testes com Apache Airflow.

How-to: https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html

# Comandos gerais

Comando para instalar as dependências:
`
docker compose up airflow-init
`

Comando para subir os containers:
`
docker compose up
`

Comando para destruir todos os containers utilizados:
`
docker compose down --volumes --rmi all
`

# Scripts
Para os casos onde é necessário sincronização automática com o repositório remoto do git, foi criado um script shell que pode ser agendado no crontab OS.

Dando permissão de execução para o script:
`chmod +x /caminho/para/o/script.sh`

Agendando no crontab:
`crontab -e`

Adicione isso na última linha, para um agendamento à cada 5 minutos:
> 5 * * * * /caminho/para/o/script.sh

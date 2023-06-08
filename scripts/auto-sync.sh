#!bin/bash

# Define o diretório do repositório local
repo_dir="/caminho/para/o/repositório"

# Acessa o diretório do repositório local
cd "$repo_dir"

# Verifica se existem alterações no repositório remoto
if git fetch origin --quiet && git diff --quiet HEAD origin/master; then
    echo "O repositório está atualizado. Nenhuma ação necessária."
else
    echo "Encontradas alterações no repositório remoto. Sincronizando..."

    # Faz o pull das alterações do repositório remoto
    git pull origin master

    echo "Sincronização concluída."
fi
# Use a imagem oficial do Python
FROM python:3.10

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY requirements.txt requirements.txt

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copia os arquivos do projeto para dentro do contêiner
COPY . .

# Define o comando padrão ao iniciar o contêiner
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

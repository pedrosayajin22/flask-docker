# Usar uma imagem base do Python
FROM python:3.11-slim

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Copiar os arquivos da aplicação para o diretório de trabalho
COPY . .

# Instalar as dependências da aplicação
RUN pip install flask

# Expor a porta 8080 para acessar o serviço
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["python", "app.py"]

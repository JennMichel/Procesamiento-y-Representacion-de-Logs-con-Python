
# Usa la imagen base de Jupyter con Python 3.9
FROM jupyter/base-notebook:python-3.9

# Establece el directorio de trabajo
WORKDIR /home/jovyan

# Actualiza pip y instala las dependencias
RUN pip install --upgrade pip
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Expone el puerto 8888 (para Jupyter)
EXPOSE 8888

# Comando para iniciar Jupyter Notebook sin token
CMD ["start-notebook.sh", "--NotebookApp.token=''"]

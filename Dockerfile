# Usa una imagen base de Jupyter con soporte para Python 3.9
FROM jupyter/base-notebook:python-3.9

# Establece el directorio de trabajo
WORKDIR /home/jovyan/work

# Copia los archivos del repositorio al contenedor
COPY . /home/jovyan/work

# Instala las dependencias desde el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto por defecto de Jupyter
EXPOSE 8888

# Inicia Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''"]

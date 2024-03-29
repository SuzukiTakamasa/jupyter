FROM continuumio/anaconda3:latest

WORKDIR /working-directory

COPY requirements.txt /working-directory/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

CMD ["--notebook-dir=/working-directory"]
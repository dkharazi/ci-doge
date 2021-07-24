FROM jupyter/minimal-notebook:python-3.8.8
USER root
EXPOSE 8888

RUN mkdir /notebooks
WORKDIR /notebooks
COPY . /notebooks

RUN pip install -r ./requirements.txt

CMD ["jupyter", "notebook", "--allow-root"]

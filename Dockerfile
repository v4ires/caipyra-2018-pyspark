FROM ubuntu:latest

ENV PATH="/opt/gtk/bin:${PATH}"
ENV SPARK_HOME="/opt/spark-3.0.1-bin-hadoop2.7"
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
ENV ANACONDA_HOME="/root/miniconda3"
ENV PYSPARK_DRIVER_PYTHON="${ANACONDA_HOME}/bin/jupyter"
ENV PYSPARK_DRIVER_PYTHON_OPTS="notebook --notebook-dir=/caipyra-2018-pyspark --ip='*' --port=8888 --no-browser --allow-root"
ENV PATH="${SPARK_HOME}/bin:${PATH}"
ENV PATH="${ANACONDA_HOME}/bin:${PATH}"

EXPOSE 8888
VOLUME $HOME/caipyra-2018-pyspark
ADD . $HOME/caipyra-2018-pyspark

# Update APT Repository
RUN apt-get -y update
RUN apt-get install -y curl unzip htop wget nano vim

# Install OpenJDK 8
RUN apt-get install -y openjdk-8-jdk

# Install Anaconda
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b

# Install Python Packages
RUN conda install numpy matplotlib jupyter pandas seaborn scikit-learn

# Setup Jupyter Notebook
RUN mkdir -p ~/.jupyter/
RUN echo "c.NotebookApp.token = u''" >> ~/.jupyter/jupyter_notebook_config.py

# Install Spark
RUN wget https://downloads.apache.org/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz
RUN tar -zxvf spark-3.0.1-bin-hadoop2.7.tgz -C /opt

WORKDIR $HOME/caipyra-2018-pyspark

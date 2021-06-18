FROM ubuntu:latest

ENV PATH="/opt/gtk/bin:${PATH}"
ENV SPARK_HOME="/opt/spark-3.1.2-bin-hadoop3.2"
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
ENV PYSPARK_DRIVER_PYTHON="/usr/local/bin/jupyter"
ENV PYSPARK_DRIVER_PYTHON_OPTS="notebook --notebook-dir=/caipyra-2018-pyspark --ip='*' --port=8888 --no-browser --allow-root"
ENV PATH="${SPARK_HOME}/bin:${PATH}"
ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 8888
VOLUME $HOME/caipyra-2018-pyspark
ADD . $HOME/caipyra-2018-pyspark

# Update APT Repository
RUN apt-get -y update
RUN apt-get install -y curl unzip htop wget nano vim python3-pip

# Install OpenJDK 8
RUN apt-get install -y openjdk-8-jdk

# Install Python Packages
RUN pip3 install numpy matplotlib jupyter pandas seaborn scikit-learn pyspark

# Setup Jupyter Notebook
RUN mkdir -p ~/.jupyter/
RUN echo "c.NotebookApp.token = u''" >> ~/.jupyter/jupyter_notebook_config.py

# Install Spark
RUN wget https://ftp.unicamp.br/pub/apache/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
RUN tar -zxvf spark-3.1.2-bin-hadoop3.2.tgz -C /opt

WORKDIR $HOME/caipyra-2018-pyspark

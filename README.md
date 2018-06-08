# Tutorial Caipyra 2018 - Desenvolvendo Aplicações baseadas em Big Data com PySpark

Esta repositório é uma coleção de [IPython notebook](http://ipython.org/notebook.html)/[Jupyter](https://jupyter.org/) notebooks destinados a treinar o leitor em diferentes conceitos [Apache Spark](http://spark.apache.org/), do básico ao avançado, usando a linguagem **Python**.

*Nota: Este repositório é uma tradução e adaptação do repositório [Spark Py Notebooks](https://github.com/jadianes/spark-py-notebooks) desenvolvido por [@jadianes](https://github.com/jadianes).*

## Instruções

Este repositório disponibiliza uma imagem em docker para execução dos notebooks disponíveis no tutorial. Para executar a imagem do docker, primeiro temos que compilar o arquivo Dockerfile. Neste arquivo, todas as instruções necessárias para a geração do contêiner. Execute o seguinte comando:

```bash
~$ docker build -f Dockerfile -t caipyra-2018-pyspark:latest .
```

Depois de compilar a imagem, basta executar o seguinte comando para execução do container e do Notebook Jupyter.

```bash
~$ docker run -dp 8888:8888 -v $(pwd):/caipyra-2018-pyspark caipyra-2018-pyspark pyspark
```

Depois de executar o comando, basta abrir o navegador e acessar o URL:

```
http://localhost:8888
```

## Datasets

Neste tutorial nós usaremos alguns conjuntos de dados da [KDD Cup 1999](http://kdd.ics.uci.edu/databases/kddcup99/kddcup99.html). Os resultados
desta competição pode ser encontrada [aqui](http://cseweb.ucsd.edu/~elkan/clresults.html).

## Referências

O livro de referência para esses e outros tópicos relacionados ao Spark é:

- *Learning Spark* by Holden Karau, Andy Konwinski, Patrick Wendell, and Matei Zaharia.

## Notebooks

Os seguintes notebooks podem ser examinados individualmente, embora haja um
ou menos uma sequência linear. Foi utilizado um mesmo conjunto de dados
para resolver um conjunto de problemas relacionado com o Spark.

### [Criação do RDD](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb1-rdd-creation/nb1-rdd-creation.ipynb)

Sobre a leitura de arquivos e paralelizar.

### [Operações Básicas RDD](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb2-rdd-basics/nb2-rdd-basics.ipynb)

Exemplos de utilização das operações `map`,` filter` e `collect`.

### [Sampling RDDs](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb3-rdd-sampling/nb3-rdd-sampling.ipynb)

Exemplificação da operação RDD sampling.

### [Operação set RDD](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb4-rdd-set/nb4-rdd-set.ipynb)

Breve introdução a algumas das operações do pseudo-conjunto de RDD.

### [Agregações de dados em RDDs](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb5-rdd-aggregations/nb5-rdd-aggregations.ipynb)  

Exemplos de aplicação das Actions RDD `reduce`,` fold` e `aggregate`.

### [Trabalhando com RDDs de pares chave/valor](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb6-rdd-key-value/nb6-rdd-key-value.ipynb)    

Como lidar com pares chave/valor para agregar e explorar dados.

### [MLlib: Estatística Básica e Análise Exploratória de Dados](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb7-mllib-statistics/nb7-mllib-statistics.ipynb)    

Um notebook introduzindo tipos de Local Vector, estatísticas básicas em MLlib para Análise Exploratória de Dados e seleção de modelos.

### [Spark SQL e Data Frames](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/nb10-sql-dataframes/nb10-sql-dataframes.ipynb)  

Neste notebook, um esquema é inferido para nosso conjunto de dados de interações de rede. Com base nisso, usamos a abstração SQL `DataFrame` do Spark para executar uma análise de dados exploratória mais estruturada.

## Aplicações  

Além do básico. Perto de aplicativos reais usando o Spark e outras tecnologias.  

### [Olssen: On-line Spectral Search ENgine for proteomics](https://github.com/jadianes/olssen)  

A mesma pilha de tecnologia, desta vez, com um aplicativo cliente AngularJS.

### [An on-line movie recommendation web service](https://github.com/jadianes/spark-movie-lens)  

Este tutorial pode ser usado independentemente para criar um modelo de recomendação de filme com base no conjunto de dados MovieLens. A maior parte do código na primeira parte, sobre como usar o ALS com o conjunto de dados público MovieLens, vem da minha solução para um dos exercícios propostos no [CS100.1x Introdução ao Big Data com o Apache Spark de Anthony D. Joseph no edX ](https://www.edx.org/course/introduction-big-data-apache-spark-uc-berkeleyx-cs100-1x), que também está [**disponível publicamente desde 2014 no Spark Summit**](https://databricks-training.s3.amazonaws.com/movie-recommendation-with-mllib.html).

## Contribuições

Contribuições são bem vindas! Para relatórios de bugs ou solicitações, por favor [envie um problema](https://github.com/v4ires/caipyra-2018-pyspark/issues).

## Contato  

Sinta-se à vontade para entrar em contato comigo para discutir quaisquer questões, perguntas ou comentários.

* Twitter: [@v4ires](https://twitter.com/v4ires)
* GitHub: [@v4ires](https://github.com/v4ires)
* LinkedIn: [Vinícius Aires Barros](https://www.linkedin.com/in/v4ires)
* Website: [viniciusaires.me](http://viniciusaires.me)

## Licença

Este repositório contém uma variedade de conteúdo; alguns desenvolvidos por Jose A. Dianes e alguns de terceiros. O conteúdo de terceiros é distribuído sob a licença fornecida por essas partes.

O conteúdo desenvolvido por Vinícius Aires Barros é distribuído sob a seguinte licença [MIT](https://github.com/v4ires/caipyra-2018-pyspark/blob/master/LICENSE) Licença.
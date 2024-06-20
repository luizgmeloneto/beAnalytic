# beAnalytic


Repositório com o código e recursos necessários.

### Descrição da Arquitetura

A arquitetura do projeto é composta por várias partes:

- **main**: É aqui que vamos fazer o carregamento dos nossos dados vindos do arquivo bh_data.csv e onde faremos todas as nossas chamadas de funções.
- **config**: Contém as credenciais necessárias do Google Cloud Platform (GCP).
- **controller**: É aqui onde está todo o racional do projeto. Nela faremos nossa requisição e validação dos dados vindos do arquivo.
- **data_request**: Contém todos os parâmetros que iremos precisar para o consumo da API do bigquery.
- **database**: Nesta parte do código iremos fazer nossa autenticação do BigQuery e exportação dos dados para a tabela escolhida.
- **sql**: Aqui são todos os SQLs que usamos no processo de data quality no GCP e para enviarmos os dados em forma de parquet para o Google Cloud Storage.

## Como usar este projeto

Siga as instruções abaixo para clonar e executar este projeto em sua máquina local.

### Pré-requisitos

Antes de começar, certifique-se de ter instalado em sua máquina:

- Python 3
- Google Cloud SDK

### Clonar o repositório

```bash
git clone 'https://github.com/luizgmeloneto/beAnalytic.git'  
```

## Executar o código

    Certifique-se de configurar suas credenciais do GCP na pasta Credentials.
    Execute o código main.py para coleta dos dados e envio para o BigQuery.

## Códigos SQL

    - Rotina_1 : Aqui iremos pegar nossa tabela bruta e iremos atribuir os tipos corretos de cada coluna junto com os nomes adequados.

    - Rotina 2 : Aqui iremos transformar nossos dados do BigQuery em parquet e enviar para o Google Cloud Storage.

    - Data_quality : Aqui iremos fazer uma tabela rodar diariamente e armazenar dados de cada uma das tabelas na camada raw e com isso conseguiremos analizar caso haja algum alteração muito grande nos dados e identificar erros com mais facilidade.


## Autor

Luiz Guimarães

import boto3
import pandas as pd

#Criar cliente para interagir com o AWS S3
s3_client = boto3.client('s3')

s3_client.download_file('datalake-teste-alef',
                        'data/ITENS_PROVA_2020.csv',
                        'arquivo_baixado.csv')

df = pd.read_csv('arquivo_baixado.csv', sep = ';')
print(df.head())

s3_client.upload_file('arquivo_baixado.csv',
                    'datalake-teste-alef',
                    'data/nome_arquivo_2.csv')
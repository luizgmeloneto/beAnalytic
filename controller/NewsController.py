import requests
import json
import pandas as pd
from pandas import DataFrame
from oauth2client.service_account import ServiceAccountCredentials
from datetime import datetime
from datetime import timedelta
from google.cloud import bigquery
import pandas_gbq
import os
from requests import get
from requests import get
from json import load
import json
import numpy as np


class NewsController:
    
    def __init__(self, project_id, destination_table,if_exists):
    
        self.project_id = project_id
        self.destination_table = destination_table
        self.if_exists = if_exists
    
    
    def request_report(self, df):   
        

        self.df = pd.read_csv('bh_data.csv',dtype=str, index_col=False)
        self.df = self.df.head(100)
        

        print(self.df)
        return self.df
    


import matplotlib.pyplot as plt
import pandas as pd
import numpy as np


data = r"C:\Users\Nobre\Documents\Ciencia da Computacao - UNIPE\Fábrica\Git\WorkshopDados-25.2\atividade_1109\dados_nao_tratados.csv"
df = pd.read_csv(data, nrows= 5)
print(df)

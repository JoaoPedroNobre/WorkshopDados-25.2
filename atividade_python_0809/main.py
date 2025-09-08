import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

array_dias = np.array(["Domingo", "Segunda", "Terça", "Quarta", "Quinta","Sexta", "Sábado"])
array_temperatura = np.array([21, 22, 34, 34, 22, 34, 23])

data = {
    "Dia": array_dias,
    "Temperatura": array_temperatura
}

df = pd.DataFrame(data)
print(df)

media = float(np.mean(array_temperatura))
print(f"Média: {media:.2f}°C")
print(f"Média arredondada: {round(media)}°C")


plt.figure(figsize=(10, 6))
plt.plot(array_dias, array_temperatura, label="Temperatura.")
plt.xlabel("Dias da semana")
plt.ylabel("Temperaturas")
plt.title("Temperaturas durante a semana")
plt.grid(True, linestyle='--', alpha=0.6)
plt.axhline(y=media, color='red', linestyle='--', label=f'Média ({round(media)}°C)')
plt.legend()
plt.show()
library(dplyr)
library(lubridate)
library(stringr)

#? Vamos começar com os dados de pokemon
#? https://www.kaggle.com/datasets/igorcoelho24/pokemon-all-generations/versions/1?resource=download
dados <- read.csv("Dados/Pokemon_full.csv")
head(dados) 

#? Exemplo: contar o número de linhas de dados

nrow(dados)
dados %>% nrow()
dados %>% nrow(.)

#? Algumas funções da biblioteca dplyr:

#? A função filter seleciona linhas com base em um teste
df_grass <- filter(dados, type == "grass")
df_grass

#? podemos usar o seguinte comando também
dados %>% filter(type == "grass")

#TODO Vamos filtrar todos os pokemons do tipo fogo ou água
df_fogo_e_agua <- dados %>% filter(type == "fire" | type == "water")

#TODO Vamos filtrar todos os pokemons que tem  "fly"
dados %>% filter(grepl("fly", name))

#TODO Vamos filtrar todos os pokemons que tem  "bee" ou "saur"
dados %>% filter(grepl("bee", name))
dados %>% filter(grepl("saur", name))

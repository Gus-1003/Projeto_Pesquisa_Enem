#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2021
#--------------------------------------------------------
#  DESCRIÃÇÃO:
#           PROGRAMA PARA LEITURA DOS ITENS
#           ITENS_PROVA_2021
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar o arquivo                    
#     ITENS_PROVA_ENEM_2021.csv no diretório raiz. 
#     Ex. Windows C:\
#         Linux \home	                  
#------------------------------------------------------------------------

#------------------------------------------------------------------------
#                   ATENÇÃO             
#------------------------------------------------------------------------
# Este programa abre a base de dados com os rótulos das variáveis de	                    
# acordo com o dicionário de dados que compõem os microdados. 		  
#------------------------------------------------------------------------

#--------------------
# Intalação do pacote Data.Table
# Se não estiver instalado
#--------------------
if(!require(data.table)){install.packages('data.table')}

#--------------------
# Caso deseje trocar o local do arquivo, 
# edit a função setwd() a seguir informando o local do arquivo.
#Ex. Windows setwd("C:/temp")
#    Linux   setwd("/home")
#--------------------
setwd("C:/")  

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

itens_2021 <- data.table::fread(input='itens_prova_2021.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#itens_2021$SG_AREA <- factor(itens_2021$SG_AREA, levels = c('CH','CN','LC','MT'),  labels=c('Ciências Humanas','Ciências da Natureza','Linguagens e Códigos','Matemática'))
#itens_2021$TP_LINGUA <- factor(itens_2021$TP_LINGUA, levels = c(0,1),  labels=c('Inglês','Espanhol'))
#itens_2021$IN_ITEM_ADAPTADO <- factor(itens_2021$IN_ITEM_ADAPTADO, levels = c(1,0),  labels=c('Sim','Não'))
#itens_2021$IN_ITEM_ABAN <- factor(itens_2021$IN_ITEM_ABAN, levels = c(1,0),  labels=c('Sim','Não'))

#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2021
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2021
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este programa e o arquivo                    
#     MICRODADOS_ENEM_2021.csv no mesmo diretório.	                  
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
# Ex. Windows setwd("C:/temp")
#     Linux   setwd("/home")
#--------------------
setwd("C:/")  

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

ENEM_2021 <- data.table::fread(input='microdados_ENEM_2021.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#ENEM_2021$TP_FAIXA_ETARIA <- factor(ENEM_2021$TP_FAIXA_ETARIA, 
#                                    levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                               '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                               'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                               'Entre 66 e 70 anos','Maior de 70 anos'))

#ENEM_2021$IN_TREINEIRO <- factor(ENEM_2021$IN_TREINEIRO, levels = c(1,0),  labels=c('Sim','Não'))

#ENEM_2021$TP_DEPENDENCIA_ADM_ESC <- factor(ENEM_2021$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                           labels=c('Federal',
#                                                    'Estadual',
#                                                    'Municipal',
#                                                    'Privada'))

#ENEM_2021$TP_LOCALIZACAO_ESC <- factor(ENEM_2021$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))

#ENEM_2021$TP_SIT_FUNC_ESC <- factor(ENEM_2021$TP_SIT_FUNC_ESC, levels = c(1,2,3,4),
#                                    labels=c('Em atividade',
#                                             'Paralisada',
#                                             'Extinta',
#                                             'Escola extinta em anos anteriores'))

#ENEM_2021$TP_SEXO <- factor(ENEM_2021$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))

#ENEM_2021$TP_ESTADO_CIVIL <- factor(ENEM_2021$TP_ESTADO_CIVIL, levels = c(0,1,2,3,4),
#                                    labels=c('Não informado',
#                                             'Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Viúvo(a)'))

#ENEM_2021$TP_COR_RACA <- factor(ENEM_2021$TP_COR_RACA, levels = c(0,1,2,3,4,5,6),
#                                labels=c('Não declarado',
#                                         'Branca','Preta',
#                                         'Parda','Amarela',
#                                         'Indígena',
#                                         'Não dispõe da informação'))

#ENEM_2021$TP_NACIONALIDADE <- factor(ENEM_2021$TP_NACIONALIDADE, levels = c(0,1,2,3,4),
#                                     labels=c('Não informado',
#                                              'Brasileiro(a)',
#                                              'Brasileiro(a) Naturalizado(a)',
#                                              'Estrangeiro(a)',
#                                              'Brasileiro(a) Nato(a), nascido(a) no exterior'))

#ENEM_2021$TP_ST_CONCLUSAO <- factor(ENEM_2021$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                    labels=c('Já concluí o Ensino Médio',
#                                             'Estou cursando e concluirei o Ensino Médio em 2021',
#                                             'Estou cursando e concluirei o Ensino Médio após 2021',
#                                             'Não concluí e não estou cursando o Ensino Médio'))

#ENEM_2021$TP_ANO_CONCLUIU <- factor(ENEM_2021$TP_ANO_CONCLUIU, levels = c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
#                                    labels=c('Não informado','2020','2019','2018','2017','2016',
#                                             '2015','2014','2013',
#                                             '2012','2011','2010',
#                                             '2009','2008','2007',
#                                             'Anterior a 2007'))

#ENEM_2021$TP_ESCOLA <- factor(ENEM_2021$TP_ESCOLA, levels = c(1,2,3),
#                              labels=c('Não respondeu',
#                                       'Pública',
#                                       'Privada'))

#ENEM_2021$TP_ENSINO <- factor(ENEM_2021$TP_ENSINO, levels = c(1,2),
#                              labels=c('Ensino Regular',
#                                       'Educação Especial - Modalidade Substitutiva'))


#ENEM_2021$TP_PRESENCA_CN <- factor(ENEM_2021$TP_PRESENCA_CN, levels = c(0,1,2),
#                                    labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2021$TP_PRESENCA_CH <- factor(ENEM_2021$TP_PRESENCA_CH, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2021$TP_PRESENCA_LC <- factor(ENEM_2021$TP_PRESENCA_LC, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2021$TP_PRESENCA_MT <- factor(ENEM_2021$TP_PRESENCA_MT, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2021$CO_PROVA_CN <- factor(ENEM_2021$CO_PROVA_CN, levels = c(909, 910, 911, 912, 915, 916, 917, 989, 990, 991, 992, 996, 1011, 1012, 1013, 1014, 1045, 1046, 1047, 1048, 1052), 
#                                labels=c('Azul','Amarela','Cinza','Rosa','Laranja - Braille','Laranja - Adaptada Ledor',
#                                         'Verde - Videoprova - Libras','Azul (Reaplicação)','Amarela (Reaplicação)','Cinza (Reaplicação)',
#                                         'Rosa (Reaplicação)','Laranja - Adaptada Ledor (Reaplicação)','Azul (Digital)','Amarela (Digital)',
#                                         'Rosa (Digital)','Cinza (Digital)','Azul (Segunda oportunidade)','Amarela (Segunda oportunidade)',
#                                         'Cinza (Segunda oportunidade)','Rosa (Segunda oportunidade)','Laranja - Adaptada Ledor (Segunda oportunidade)'))

#ENEM_2021$CO_PROVA_CH <- factor(ENEM_2021$CO_PROVA_CH, levels = c(879, 880, 881, 882, 885, 886, 887, 959, 960, 961, 962, 966, 999, 1000, 1001, 1002, 1015, 1016, 1017, 1018, 1022), 
#                                labels=c('Azul','Amarela','Branca','Rosa','Laranja - Braille','Laranja - Adaptada Ledor',
#                                         'Verde - Videoprova - Libras','Azul (Reaplicação)','Amarela (Reaplicação)','Branca (Reaplicação)',
#                                         'Rosa (Reaplicação)','Laranja - Adaptada Ledor (Reaplicação)','Azul (Digital)','Amarela (Digital)',
#                                         'Branca (Digital)','Rosa (Digital)','Azul (Segunda oportunidade)','Amarela (Segunda oportunidade)',
#                                         'Branca (Segunda oportunidade)','Rosa (Segunda oportunidade)','Laranja - Adaptada Ledor (Segunda oportunidade)'))

#ENEM_2021$CO_PROVA_LC <- factor(ENEM_2021$CO_PROVA_LC, levels = c(889, 890, 891, 892, 895, 896, 897, 969, 970, 971, 972, 976, 1003, 1004, 1005, 1006, 1025, 1026, 1027, 1028, 1032), 
#                                labels=c('Azul','Amarela','Rosa','Branca','Laranja - Braille','Laranja - Adaptada Ledor',
#                                         'Verde - Videoprova - Libras','Azul (Reaplicação)','Amarela (Reaplicação)','Rosa (Reaplicação)',
#                                         'Branca (Reaplicação)','Laranja - Adaptada Ledor (Reaplicação)','Azul (Digital)','Amarela (Digital)',
#                                         'Branca (Digital)','Rosa (Digital)','Azul (Segunda oportunidade)','Amarela (Segunda oportunidade)',
#                                         'Rosa (Segunda oportunidade)','Branca (Segunda oportunidade)','Laranja - Adaptada Ledor (Segunda oportunidade)'))

#ENEM_2021$CO_PROVA_MT <- factor(ENEM_2021$CO_PROVA_MT, levels = c(899, 900, 901, 902, 905, 906, 907, 979, 980, 981, 982, 986, 1007, 1008, 1009, 1010, 1035, 1036, 1037, 1038, 1042), 
#                                labels=c('Azul','Amarela','Rosa','Cinza','Laranja - Braille','Laranja - Adaptada Ledor',
#                                         'Verde - Videoprova - Libras','Azul (Reaplicação)','Amarela (Reaplicação)',
#                                         'Rosa (Reaplicação)','Cinza (Reaplicação)','Laranja - Adaptada Ledor (Reaplicação)',
#                                         'Azul (Digital)','Amarela (Digital)','Rosa (Digital)','Cinza (Digital)',
#                                         'Azul (Segunda oportunidade)','Amarela (Segunda oportunidade)','Cinza (Segunda oportunidade)',
#                                         'Rosa (Segunda oportunidade)','Laranja - Adaptada Ledor (Segunda oportunidade)'))

#ENEM_2021$ TP_LINGUA <- factor(ENEM_2021$ TP_LINGUA, levels = c(0,1),
#                                labels=c('Inglês','Espanhol'))

#ENEM_2021$TP_STATUS_REDACAO <- factor(ENEM_2021$TP_STATUS_REDACAO, levels = c(1,2,3,4,5,6,7,8,9),
#                                      labels=c('Sem problemas',
#                                               'Anulada','Cópia Texto Motivador',
#                                               'Em Branco','Fere Direitos Humanos',
#                                               'Fuga ao tema',
#                                               'Não atendimento ao tipo',
#                                               'Texto insuficiente',
#                                               'Parte desconectada'))

#ENEM_2021$Q001 <- factor(ENEM_2021$Q001, levels = c('A','B','C','D','E','F','G','H'),
#                         labels=c('Nunca estudou',
#                                  'Não completou a 4ª série/5º ano do ensino fundamental',
#                                  'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental',
#                                  'Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio',
#                                  'Completou o Ensino Médio, mas não completou a Faculdade',
#                                  'Completou a Faculdade, mas não completou a Pós-graduação',
#                                  'Completou a Pós-graduação','Não sei'))

#ENEM_2021$Q002 <- factor(ENEM_2021$Q002, levels = c('A','B','C','D','E','F','G','H'),
#                         labels=c('Nunca estudou',
#                                  'Não completou a 4ª série/5º ano do ensino fundamental',
#                                  'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental',
#                                  'Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio',
#                                  'Completou o Ensino Médio, mas não completou a Faculdade',
#                                  'Completou a Faculdade, mas não completou a Pós-graduação',
#                                  'Completou a Pós-graduação','Não sei'))

#ENEM_2021$Q003 <- factor(ENEM_2021$Q003, levels =  c('A','B','C','D','E','F'),
#                         labels=c('Grupo 1 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 2 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 3 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 4 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 5 (Verificar a definição no dicionário de dados)',
#                                  'Não Sei'))

#ENEM_2021$Q004 <- factor(ENEM_2021$Q004, levels =  c('A','B','C','D','E','F'),
#                         labels=c('Grupo 1 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 2 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 3 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 4 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 5 (Verificar a definição no dicionário de dados)',
#                                  'Não Sei'))

#ENEM_2021$Q005 <- factor(ENEM_2021$Q005, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                         labels=c('1','2','3','4','5','6','7','8','9','10',
#                                  '11','12','13','14','15','16','17','18','19','20'))

#ENEM_2021$Q006 <- factor(ENEM_2021$Q006,levels =  c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q'),
#                         labels=c('Nenhuma Renda','Até R$ 1.100,00','De R$ 1.100,01 até R$ 1.650,00',
#                                  'De R$ 1.650,01 até R$ 2.200,00','De R$ 2.200,01 até R$ 2.750,00',
#                                  'De R$ 2.750,01 até R$ 3.300,00','De R$ 3.300,01 até R$ 4.400,00',
#                                  'De R$ 4.400,01 até R$ 5.500,00','De R$ 5.500,01 até R$ 6.600,00',
#                                  'De R$ 6.600,01 até R$ 7.700,00','De R$ 7.700,01 até R$ 8.800,00',
#                                  'De R$ 8.800,01 até R$ 9.900,00','De R$ 9.900,01 até R$ 11.000,00',
#                                  'De R$ 11.000,01 até R$ 13.200,00','De R$ 13.200,01 até R$ 16.500,00',
#                                  'De R$ 16.500,01 até R$ 22.000,00','Acima de R$ 22.000,00'))

#ENEM_2021$Q007 <- factor(ENEM_2021$Q007, levels = c('A','B','C','D'),
#                         labels=c('Não','Sim, um ou dois dias por semana',
#                                  'Sim, três ou quatro dias por semana',
#                                  'Sim, pelo menos cinco dias por semana'))

#ENEM_2021$Q008 <- factor(ENEM_2021$Q008, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q009 <- factor(ENEM_2021$Q009, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))


#ENEM_2021$Q010 <- factor(ENEM_2021$Q010, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q011 <- factor(ENEM_2021$Q011, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q012 <- factor(ENEM_2021$Q012, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q013 <- factor(ENEM_2021$Q013, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q014 <- factor(ENEM_2021$Q014, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q015 <- factor(ENEM_2021$Q015, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q016 <- factor(ENEM_2021$Q016, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q017 <- factor(ENEM_2021$Q017, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q018 <- factor(ENEM_2021$Q018, levels = c('A','B'), labels=c('Não','Sim'))

#ENEM_2021$Q019 <- factor(ENEM_2021$Q019, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q020 <- factor(ENEM_2021$Q020, levels = c('A','B'), labels=c('Não','Sim'))
#ENEM_2021$Q021 <- factor(ENEM_2021$Q021, levels = c('A','B'), labels=c('Não','Sim'))

#ENEM_2021$Q022 <- factor(ENEM_2021$Q022, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q023 <- factor(ENEM_2021$Q023, levels = c('A','B'), labels=c('Não','Sim'))

#ENEM_2021$Q024 <- factor(ENEM_2021$Q024, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))

#ENEM_2021$Q025 <- factor(ENEM_2021$Q025, levels = c('A','B'), labels=c('Não','Sim'))

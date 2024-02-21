#PREGUNTA 1
#Tabla de frecuencias Absolutas

tabla_Rating <- table(Banco_calidad$Rating)

tabla_Rating

# Tabla de Freccuencias relativas

tabla_Relativa_Rating <- prop.table(tabla_Rating)

tabla_Relativa_Rating

# Tabla de Frecuencias 

tabla_frecuencias <- cbind(tabla_Rating,tabla_Relativa_Rating)

tabla_frecuencias

# Gráfico de Barras

barplot(tabla_Rating,
        col="cyan4",
        main="Gráfica de Barras: Calidad de Servicio",
        xlab="Rating",
        ylab="Frecuencia")

# Mas del 46% de los clientes que respondieron en la encuentas perciben el  
# servicio como nuetro, ni bueno y ni malo; mas de del 28% de clientes 
# encuestados calificaron la calidad del servicio como malo; si bien 
# el banco tiene una calificacion de la calidad del servicio como neutro,
# este deberia mejorar la calidad de sus servicios asi para atraer clientes y no perderlos


# Pregunta 2

muestra <- c(10,20,12,17,16)
muestra

datos <- data.frame(muestra)
datos

mean(datos$muestra)
median(datos$muestra)
quantile(datos$muestra, 0.60)
sd(datos$muestra)

# PREGUNTA 3

tabla_Pagos <- table(Clothing$MetodoPago)

tabla_Pagos

tabla_Relativa_Pagos <- prop.table(tabla_Pagos)

tabla_Relativa_Pagos

tabla_frecuencias <- cbind(tabla_Pagos,tabla_Relativa_Pagos)

tabla_frecuencias

tapply(Clothing$Compras, Clothing$MetodoPago, mean)

tapply(Clothing$Compras, Clothing$MetodoPago, sd)

boxplot(Compras~MetodoPago,
        data=Clothing,
        main="Metodo de Pago por Compras",
        sub="Analitica de Datos 2024",
        col="red4",
        xlab="Compras",
        ylab="Metodos de Pagos")

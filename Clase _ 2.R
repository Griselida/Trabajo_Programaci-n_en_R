#R basico

#alt + -  <- 

nombre <- "Flavio"
saludo <- "Hola"

paste(saludo, nombre, sep = "_")

?paste

(nth <- paste0(1:12, c("st", "nd", "rd", rep("th", 9))))

# Base

notas <-c(15, 17, 18, 16)
?c
newnota <-notas + 1
nota_p <- mean(newnota)


# Tydiverse

library(tidyverse)

#pipe  => %<%  (ctrl + shift + m)
notas <- c(15, 16, 18, 14 ,17, 13) %>% 
  +1 %>% 
  mean(.)

notas


# Comparacion -------------------------------------------------------------


#base
# Crear un conjunto de datos de ejemplo
categorias <- c("A", "B", "C", "D", "E")
cantidades <- c(10, 23, 15, 8, 30)

# Crear el gráfico de barras
barplot(cantidades, 
        names.arg = categorias,  # Nombres de las categorías
        col = "lightblue",        # Color de las barras
        main = "Gráfico de barras", # Título del gráfico
        xlab = "Categoría",        # Etiqueta del eje X
        ylab = "Cantidad",         # Etiqueta del eje Y
        border = "black")          # Color del borde de las barras

#tydiverse

# Crear un conjunto de datos de ejemplo
data <- data.frame(
  Categoria = c("A", "B", "C", "D", "E"),
  Cantidad = c(10, 23, 15, 8, 30)
)

# Crear el gráfico de barras
ggplot(data, aes(x = Categoria, y = Cantidad)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Gráfico de barras",
       x = "Categoría",
       y = "Cantidad")









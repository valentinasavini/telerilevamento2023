# My first code in Git Hub
# Let's install the raster package
install.packages("raster")
library(raster)
# Import data, setting the working directory
setwd("C:/lab/")
#per altri software abbiamo altri codici 

# tramite questa funzione riesco a racchiuddere tutte
# le informazioni ricavate dal satellite
l2011 <- brick("p224r63_2011_masked.grd")

#plotting the data n a savage manner
plot(l2011)
# oggetti che assorbono il blu in basso, 
# che riflettono il blu in alto e così via con altri colori
# B4 infrarosso vicino

# palette colori 
cl <- colorRampPalette(c("red", "orange", "yellow")) (100) # per avere le sfumature aggiungo un numero (100), gradazione colori 
plot(l2011, col= cl) # rifaccio il plot cambiando la palette tramite col=

# per plottare un elemento: vicino infrarosso l2011[[4]]
plot(l2011[[4]], col= cl)
plot(l2011$B4_sre, col= cl)
nir <- l2011[[4]] #or: nir <- l2011$B4_sre
plot(nir, col= cl)

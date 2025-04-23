# Usar la imagen oficial de Node.js basada en Alpine (LTS version)
FROM node:20-alpine

# Establecer el directorio de trabajo
WORKDIR /opt/cronicle

# Instalar Cronicle usando el script oficial
RUN curl -s https://raw.githubusercontent.com/jhuckaby/Cronicle/master/bin/install.js | node

# Exponer el puerto por defecto de Cronicle (3012)
EXPOSE 3012

# Configurar el comando para iniciar Cronicle
CMD ["/opt/cronicle/bin/cronicle", "--port", "3012"]
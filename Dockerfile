# Mengambil base image dari node
FROM node:14
 
# Membuat direktori aplikasi pada container
WORKDIR /app

# Memindahkan seluruh berkas ke dalam direktori container
COPY . ./

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host
ENV NODE_ENV production 
ENV DB_HOST item-db

# Menginstall dependency
RUN npm install --production --unsafe-perm && npm run build

# Mengatur container untuk membuka dan menggunakan port 5000
EXPOSE 8080
 
# Perintah untuk menjalankan aplikasi
CMD [ "npm", "start" ]
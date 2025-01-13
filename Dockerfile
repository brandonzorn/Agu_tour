FROM nginx:alpine
COPY app/3D_TYR.html /usr/share/nginx/html/
COPY app/3D_TYRdata /usr/share/nginx/html/3D_TYRdata

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

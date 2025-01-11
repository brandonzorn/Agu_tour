FROM nginx:alpine
COPY app/ITO7OBblU_l7r0eKT.html /usr/share/nginx/html/
COPY app/ITO7OBblU_l7r0eKTdata /usr/share/nginx/html/ITO7OBblU_l7r0eKTdata

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

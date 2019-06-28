FROM nginx:1.10-alpine

# 
# This is a docker image that listens on port 80 and simply redirects all httpRequest to replace http with https
# This image can be placed in a task definition as a second container to force https. 
# We won't need this if AWS ever adds support to an ELB to auto redirect traffic from one port to another (which seems like a reasonable request)
#

# Override the container port
ENV NGINX_PORT=80 \
    NGINX_BACKEND_HOST=localhost \
    NGINX_BACKEND_PORT=8080

ADD nginx.template.conf /etc/nginx/nginx.template.conf
ADD startNginx.sh /

CMD /startNginx.sh
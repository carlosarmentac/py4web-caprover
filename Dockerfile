# please change :
# password.txt with your desire filename
# password_admin with your desire password admin
# 80 with your available port
ARG user=py4web
ARG password=none

FROM debian:bookworm-slim AS py4web-latest
ARG user
RUN touch /etc/apt/apt.conf.d/proxy.conf
RUN apt update && apt install -y git python3 python3-pip memcached
RUN service memcached restart
RUN groupadd -r $user && useradd -m -r -g $user $user
RUN python3 -m pip install -U py4web

FROM py4web-latest
ARG user
ARG password
COPY ./ /home/$user/
USER $user
RUN cd /home/$user/ && py4web setup --yes apps
RUN cd /home/$user/ && \
    if [ "$password" = "none" ]; then echo "no admin"; else py4web set_password --password "$password"; fi
RUN cd /home/$user/ && pip install -r requirements.txt
EXPOSE 80
WORKDIR /home/$user/
CMD py4web run --password_file password.txt --host 0.0.0.0 --port 80 apps

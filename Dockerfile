FROM hasholding/alpine-base:3.8
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"
VOLUME /shared
RUN apk add nginx
RUN mkdir -p /run/nginx
ENV CONF "/shared/local.conf"
EXPOSE 80 443
COPY entrypoint.sh /bin/entrypoint.sh
COPY local.conf /shared/local.conf
ENTRYPOINT ["/bin/entrypoint.sh"]

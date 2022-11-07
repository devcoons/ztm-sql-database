# builder image
FROM woahbase/alpine-mysql:latest
RUN mkdir /build
WORKDIR /build
COPY .configs/my.cnf /etc/my.cnf
EXPOSE 3306 33060
# executable
ENTRYPOINT ["/init"]
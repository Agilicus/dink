FROM alpine:latest as build
LABEL maintainer="don@agilicus.com"

COPY pause.c /pause.c
RUN apk add gcc musl-dev \
    && gcc -static -o /usr/local/bin/pause /pause.c

FROM alpine
COPY --from=build /usr/local/bin/pause /usr/local/bin/pause
RUN apk add docker bash rxvt-unicode-terminfo

CMD /usr/local/bin/pause
WORKDIR /root

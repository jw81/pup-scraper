FROM alpine:3.17.3
RUN apk --no-cache add curl
RUN curl \
 -sL \
 -o pup_v0.4.0_linux_amd64.zip \
 https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip
RUN unzip -q pup_v0.4.0_linux_amd64.zip -d /bin
ENV URL 'https://news.ycombinator.com/'
ENV FILTER "table table tr:nth-last-of-type(n+2) td.title a"
ENTRYPOINT curl -s ${URL} | pup ${FILTER}
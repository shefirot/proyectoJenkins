FROM nginx:latest
MAINTAINER David Gonzalez Pozo <davidgpozo@gmail.com>
COPY startbootstrap-resume-gh-pages /usr/share/nginx/html
EXPOSE 80

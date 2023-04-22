FROM  redhat/ubi9
RUN yum install httpd vim unzip -y
add https://www.free-css.com/assets/files/free-css-templates/download/page290/cryptop.zip /var/www/html
WORKDIR /var/www/html
RUN unzip crypto.zip
RUN rm -rf crypto.zp &&/
    mv crypto/* . &&/
    rm -rf crypto &&/
EXPOSE  80
CMD ["usr/sbin/httpd","-DEFORGROUND"]

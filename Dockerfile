FROM nginx

ADD default.conf /etc/nginx/conf.d/

WORKDIR /app
RUN echo "<h1>Add your SPA build result to <code>/app</code></h1><h2>see <a href="https://github.com/keyama4/docker-nginx-spa">here</a>.</h2>" > index.html

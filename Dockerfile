FROM nginx

ADD default.conf /etc/nginx/conf.d/

RUN mkdir /app
RUN echo "<h1>Add your SPA build result to <code>/app</code></h1><h2>see <a href="">here</a>.</h2>" > /app/index.html

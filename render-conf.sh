#! /bin/bash

if ! [ -z "$REDIRECT_HTTPS" ] ; then
  REDIRECT_HTTPS_SETTING="if (\$http_x_forwarded_proto = \"http\") { return 301 https://\$host\$request_uri;}"
fi

if ! [ -z "$PROXY_LOCATION" ] && ! [ -z "$PROXY_PASS" ]; then
  PROXY_SETTING="location $PROXY_LOCATION { proxy_pass $PROXY_PASS; proxy_redirect off; }"
fi

cat /etc/nginx/conf.d/default.conf.template | \
sed -e "s#__REDIRECT_HTTPS_SETTING__#$REDIRECT_HTTPS_SETTING#g" \
    -e "s#__PROXY_SETTING__#$PROXY_SETTING#g" \
    > /etc/nginx/conf.d/default.conf

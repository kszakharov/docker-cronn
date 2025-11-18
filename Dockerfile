ARG CRONN_VERSION=latest
FROM umputun/cronn:${CRONN_VERSION}

RUN apk add --no-cache bash rsync openssh-client moreutils

CMD ["/srv/cronn", "-f", "/srv/crontab"]
ENTRYPOINT ["/init.sh"]

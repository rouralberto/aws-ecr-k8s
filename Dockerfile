FROM xynova/aws-kubectl

COPY docker-login /
WORKDIR /
ENTRYPOINT ["/docker-login"]

FROM alpine:3.12

COPY default-policy.json /etc/containers/policy.json
RUN apk add --no-cache ca-certificates skopeo

ENTRYPOINT [ "skopeo" ]
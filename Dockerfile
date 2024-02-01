FROM alpine

LABEL "name"="VK Share"
LABEL "description"="Share GitHub repository in VK."
LABEL "maintainer"="Kai Kimera <mail@kai.kim>"
LABEL "repository"="https://github.com/ghastore/vk-share.git"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl jq

ENTRYPOINT ["/entrypoint.sh"]

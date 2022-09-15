# Based on the last image created the dockerpi Dockerfile
# https://github.com/lukechilds/dockerpi/blob/6c1ac8edab988dca8bb36dddc5388e8c4123c824/Dockerfile
# Replaced image with COEX Clover drone image
FROM lukechilds/dockerpi:vm

LABEL maintainer="Artem Vasiunik <artem30801@gmail.com>"

ARG FILESYSTEM_IMAGE_URL="https://github.com/CopterExpress/clover/releases/download/v0.23/clover_v0.23.img.zip"
ADD $FILESYSTEM_IMAGE_URL /filesystem.zip

# entrypoint.sh has been added in the parent lukechilds/dockerpi:vm
ENTRYPOINT ["/entrypoint.sh"]

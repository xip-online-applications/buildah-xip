FROM quay.io/buildah/stable

RUN dnf install -y curl git-crypt tzdata which && \
    dnf clean all

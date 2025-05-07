FROM ghcr.io/gitleaks/gitleaks:latest AS gitleaks

FROM quay.io/buildah/stable

RUN dnf install -y curl git-crypt tzdata which && \
    dnf clean all

COPY --from=gitleaks /usr/bin/gitleaks /usr/bin/gitleaks

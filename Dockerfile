FROM ghcr.io/gitleaks/gitleaks AS gitleaks

FROM quay.io/buildah/stable

RUN dnf install -y awscli2 curl gawk git-lfs git-crypt rsync tzdata which && \
  dnf clean all

COPY --from=gitleaks /usr/bin/gitleaks /usr/bin/gitleaks

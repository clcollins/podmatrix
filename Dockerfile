FROM fedora:30
RUN dnf install -y cmatrix

FROM registry.access.redhat.com/ubi8/ubi
COPY --from=0 /usr/bin/cmatrix /usr/bin/cmatrix

ENTRYPOINT ["/usr/bin/cmatrix"]

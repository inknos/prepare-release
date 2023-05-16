FROM quay.io/packit/packit:latest

COPY scripts/ /scripts/

RUN git config --system --add safe.directory /github/workspace

RUN chmod +x /scripts/prepare_release.py

ENTRYPOINT ["/scripts/prepare_release.py"]

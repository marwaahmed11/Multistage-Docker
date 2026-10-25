FROM registry.access.redhat.com/ubi9/ubi
RUN adduser \
--no-create-home \
--system \
--shell /usr/sbin/nologin \
python-server
USER python-server
CMD ["python3", "-m", "http.server"]

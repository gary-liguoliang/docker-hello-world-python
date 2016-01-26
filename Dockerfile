FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
CMD ["bash"]

RUN apt-get update
RUN apt-get install -y python

WORKDIR /app
ADD /app /app


EXPOSE 8000
# CMD python -m SimpleHTTPServer 8000
CMD python test.py

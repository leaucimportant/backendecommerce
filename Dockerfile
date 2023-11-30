FROM python:3.10.13 as builder

WORKDIR /app
COPY . .
RUN python setup.py bdist_wheel


FROM python:3.10.13
WORKDIR /app
ENV http_proxy pfrie-std.ftp.proxy.e2.rie.gouv.fr:8080
ENV https_proxy pfrie-std.ftp.proxy.e2.rie.gouv.fr:8080

#RUN apk add mariadb-connector-c-dev

COPY --from=builder /app/dist/Breizhsport_e_commerce_API-*.whl /app/requirements.txt ./
RUN pip install *.whl -r requirements.txt && rm *

CMD breizhsportapi

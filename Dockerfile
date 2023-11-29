FROM python:3.10.13-alpine as builder

WORKDIR /app
COPY . .
RUN python setup.py bdist_wheel


FROM python:3.10.13-alpine
WORKDIR /app

COPY --from=builder /app/dist/Breizhsport_e_commerce_API-*.whl /app/requirements.txt ./
#RUN pip install *.whl -r requirements.txt && rm *
#
#CMD breizhsportapi

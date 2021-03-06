FROM python:3.6.9-slim
COPY . /app
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
WORKDIR app
ENV PATH="/root/.local/bin:${PATH}"
RUN pip install --user -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "app.py" ] 


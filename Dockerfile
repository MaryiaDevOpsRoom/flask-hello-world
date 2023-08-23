FROM python:3-slim

WORKDIR /usr/src/app

# Create a non-root user
RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser

COPY  requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt 

COPY . .

#switch to the non-root user
USER appuser

CMD [ "python", "app.py" ]

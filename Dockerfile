FROM squidfunk/mkdocs-material

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

RUN playwright install --with-deps

COPY . .

CMD ["pytest", "-n", "3", "-m", "availability", "--maxfail=2", "--capture=sys", "--alluredir=reports/allure-results"]

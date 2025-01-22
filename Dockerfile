FROM python:3.11.11-bookworm

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN pip install gradio sentencepiece konoha openai

EXPOSE 7860

CMD ["python", "/app/app_tsuka.py"]

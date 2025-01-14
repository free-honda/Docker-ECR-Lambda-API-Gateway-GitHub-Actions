FROM public.ecr.aws/lambda/python:3.9

# 必要なパッケージのインストール（例: requests）
RUN pip install requests

# ハンドラファイルをコピー
COPY app.py ${LAMBDA_TASK_ROOT}

CMD ["app.lambda_handler"]


# Use the AWS Lambda Python runtime as a parent image
FROM python:3.10-slim

# Install the required packages
ENV LAMBDA_TASK_ROOT=/tmp
ENV PYTHONPATH=/tmp

# Copy the function code
COPY src/ ${LAMBDA_TASK_ROOT}


ENTRYPOINT ["python3", "/tmp/sample_serverless/app.py"]


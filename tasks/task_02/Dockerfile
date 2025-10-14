# The base image is Linux with Python 3.12 preinstalled
FROM python:3.12
LABEL authors="Roman"

# Environment variables
ENV APP_HOME=/app

# The working directory inside the container
WORKDIR $APP_HOME

# Copy the files into the container’s working directory
COPY . .

# Install the dependencies inside the container
RUN pip install -r requirements.txt

# Specify the port where the application operates inside the container
EXPOSE 8000

# Run our application inside the container
ENTRYPOINT ["python", "main.py"]
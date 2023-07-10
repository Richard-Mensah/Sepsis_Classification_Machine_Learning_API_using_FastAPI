FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install -r /code/requirements.txt

COPY . .

# Expose the port on which the application will run
EXPOSE 7860

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7860"]


# # Use the official Python base image
# FROM python:3.9-slim

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the requirements file to the working directory
# COPY requirements.txt .

# # Install the Python dependencies
# RUN pip install -r requirements.txt

# # Copy the application code to the working directory
# COPY . .

# # Expose the port on which the application will run
# EXPOSE 8080

# # Run the FastAPI application using uvicorn server
# CMD ["uvicorn", "main_fastapi:app", "--host", "0.0.0.0", "--port", "8080"]

# #Run 
# #docker build -t sepsis-fastapi-app .
# #docker run -p 8000:8000 sepsis-fastapi-app
 
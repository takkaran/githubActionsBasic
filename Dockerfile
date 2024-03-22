# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Jupyter Notebook file into the container
COPY docker.ipynb /app

# Install required libraries from requirements.txt
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter
RUN pip install notebook

# Command to run the Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

# Official Jupyter base image
FROM jupyter/base-notebook

# Set the working directory to /app
WORKDIR /app

# Install necessary packages including notebook (to generate password hash)
RUN pip install --no-cache-dir notebook

# Copy the requirements.txt into the container
COPY requirements.txt /app/

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory content into the container
COPY . /app/

# Expose port for Jupyter Notebook
EXPOSE 8888

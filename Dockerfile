# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Flask
RUN pip install Flask

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]


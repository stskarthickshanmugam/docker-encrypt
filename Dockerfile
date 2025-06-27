# Use lightweight base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Create a simple index.html file
RUN echo "<h1>Hello from Encrypted Docker Image</h1>" > index.html

# Expose a port
EXPOSE 8000

# Start a simple HTTP server
CMD ["python3", "-m", "http.server", "8000"]

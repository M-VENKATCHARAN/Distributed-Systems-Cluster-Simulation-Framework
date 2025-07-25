# 1. Use a lightweight Python base image
FROM python:3.10-slim

# 2. Set working directory in the container
WORKDIR /app

# 3. Copy all files from the current directory into the container
COPY . .

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose the port your Flask app will run on
EXPOSE 5005

# 6. Run the Flask app
CMD ["python", "Model.py"]

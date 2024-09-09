# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the project_part2 directory into the container at /app
COPY project_part2 /app/project_part2

# Set the working directory to where the app code resides
WORKDIR /app/project_part2/book_catalog

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Dockerfile
ENV DATABASE_URL=postgresql://faisal_sit722_user:moFli73AhSCotqIU1hHe0NO2ZDyTO1FE@dpg-cres48ogph6c73ev673g-a.oregon-postgres.render.com/faisal_sit722



# Run main.py using uvicorn when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

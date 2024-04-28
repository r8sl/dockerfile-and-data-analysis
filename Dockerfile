# Use the Official Jupyter Docker image as the base image
FROM jupyter/base-notebook

# Set the working directory in the container
WORKDIR /app

# Copy the Jupyter Notebook file into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which Jupyter Notebook will run
EXPOSE 8888

# Define environment variable
ENV NAME World

# Command to run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
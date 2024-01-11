# Use the official Golang image
FROM golang:latest

# ARG REDIS-PASSWORD=""

# ENV PASSWORD=REDIS-PASSWORD

# Set the working directory inside the container
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Build the Go application
RUN go build -o server main.go

# Expose the port on which the application will run
EXPOSE 9090

ENV REDIS_HOST="music-album-redis-headless"
ENV REDIS_PORT="6379"

# Command to run the executable
CMD ["/bin/sh", "-c", "./server $REDIS_HOST:$REDIS_PORT"]
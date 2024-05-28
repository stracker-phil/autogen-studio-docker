# AutoGen Studio

This repository contains a Docker Compose setup for running Autogen Studio. The Docker Compose setup allows for more flexibility and easier management of environment variables through an .env file.

## Prerequisites

Ensure you have Docker and Docker Compose installed on your machine.

When using a Mac, OrbStack is the recommended solution.

## Setting up Environment Variables

Create a .env file in the root of this repository and add the following environment variables:

```sh
HOST_PORT=8081
OPENAI_API_KEY=sk-1234567   # Insert your OpenAI API key
```

Replace sk-1234567 with your actual OpenAI API key.

**Building and Running the Docker Compose Setup**

To build and run the Autogen Studio using Docker Compose, run the following command in the root of this repository:

```sh
# First time only: Build the container:
docker-compose up --build

# Starting the already built container:
docker-compose up
```

This will build the Docker image and start the Autogen Studio in a Docker container. The Autogen Studio will be available at `http://localhost:${HOST_PORT}`.

**Stopping the Docker Compose Setup**

To stop the Docker Compose setup, press Ctrl+C in the terminal where docker-compose up is running, or run the following command in the root of this repository:

```sh
docker-compose down
```

## Custom Initialization Logic

During the container setup, a script modifies the database path in the application's entry script to point to a mounted directory on the host machine. This ensures that the SQLite database is mirrored to the host, mainly to persist your data when rebuilding the container.

See `config/boot.sh` for the relevant code.

## Summary

With this Docker Compose setup, you can easily run Autogen Studio on your local machine.
Custom `.env` variables and the persisted SQLite database provide additional convenience.
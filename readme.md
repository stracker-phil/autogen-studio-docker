# AutoGen Studio

This repository contains a Docker Compose setup for running Autogen Studio. The Docker Compose setup allows for more flexibility and easier management of environment variables through an .env file.

## TLDR

1. Clone this repo: `git clone github.com:stracker-phil/autogen-studio-docker.git`
2. Copy `.env.example` to `.env` and insert your OpenAI API key
3. Run `docker compose up --build`
4. Navigate to `http://localhost:8081`

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

## Customization

If a custom [Skill](docs/skills.md) requires an API key or other private data, add those items to the `.env` file and restart the docker container:

```sh
docker compose down
docker compose up
```

Use the `os.getenv()` Python function in the Skill to access the values from your `.env` file: 
```py
import os
api_base = os.getenv('SMART_CONNECT_URL')
...
```

## Summary

With this Docker Compose setup, you can easily run Autogen Studio on your local machine.
Custom `.env` variables and the persisted SQLite database provide additional convenience.

---

## Usage Notes

Video introduction to AutoGen Studio: https://www.youtube.com/watch?v=4ZqJSfV4818
- Note: Ignore all the Conda and ENV-variable setup. This is handled by Docker.

[Models](docs/models.md) | [Skills](docs/skills.md) | [Agents](docs/agents.md) | [Workflows](docs/workflows.md)

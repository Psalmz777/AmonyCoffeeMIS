# Instructions

Languages used: C#

Web framework: .NET 7

To run this project, do The following:

Download .NET 7 SDK here - https://dotnet.microsoft.com/en-us/download/dotnet/7.0

Run the installer and in the terminal run: 

```dotnet --version```

Output should show the dotnet version installed



Within VS code terminal, run the following commands:

Build the app:

```dotnet build```

Install certs required for the app to run:

```dotnet dev-certs https --trust```

NB: After running this command, reopen your browser


Run the app: 

```dotnet run```

Access the application on this URL: https://localhost:7208/

To run this project using docker/docker compose, do The following

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

Follow these steps to build and run the application using Docker and Docker Compose:

```docker build -t amonycoffeemis```

Start the Docker containers using Docker Compose

 ```docker compose up -d```

 The -d flag runs the containers in detached mode, allowing you to continue using your terminal.

Access the application in your web browser at http://localhost:5200.

To stop and remove the Docker containers, use the following command

```docker-compose down```
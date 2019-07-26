# Collaborative Code Editing [![Build Status](https://travis-ci.org/hpi-swa-teaching/CollaborativeCodeEditing.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/CollaborativeCodeEditing)

> Group 6

## (Local) Development

Start by cloning this git repository.

All code in it should adhere to our [style guide](https://docs.google.com/document/d/11PfOTymUnovjca5ExAI6-6-cC16f6q5mQ8juo9Wn13I/edit?usp=sharing).

If something does not seem to work, try consulting our [FAQ](https://docs.google.com/document/d/1lXzYKoR7LiMkkjJhhem9VC7O6nKe4I4-cIUyLseF06U/edit?usp=sharing).

### Client

You can start the collaborative code editing client by clicking the `Collaborative Coding` button in the `Apps` menu.

### Server

You can start the application server in your local image by running:
```smalltalk
CCEServer breakdown start
``` 

Additionally, the project has a separate deployment agent (see below) that can also be launched locally:
```smalltalk
CCEDeployAgent breakdown start
```

## (Remote) Deployment

### Set Up

The server can easily be deployed to a Digital Ocean droplet. To create one, run:
```sh
export DO_TOKEN="YOUR_DIGITAL_OCEAN_API_TOKEN"
docker-machine create --driver=digitalocean --digitalocean-access-token=$DO_TOKEN --digitalocean-region=fra1 --digitalocean-size=s-1vcpu-1gb swt-cce
```

You can then activate the newly created Docker host using:
```sh
eval $(docker-machine env swt-cce)
```

Now it is just a matter of (re-)building and deploying the Docker Compose config.
```sh
docker-compose down
docker-compose build
docker-compose up -d
```

*Note: The Squeak version used in the build is specified in `server/lib.sh`. If necessary, it should be updated there.*

You can view the IP address of the host you just deployed to using:
```sh
docker-machine ip swt-cce
```

The corresponding ports, the application binds to, are defined in the `.env` file.
They can also be customized using the respective environment variables in your deployment.

And finally, the host can be shut down and destroyed:
```sh
docker-machine stop swt-cce
docker-machine rm swt-cce
```

### Deployment Agent

To facilitate continuous integration and deployment, the server package provides a separate REST API that allows remote control and monitoring of the application server.

Currently, the deployment agent supports the following routes (all methods are allowed):

- `/` - Answers a status page
- `/restart` - (Re-)starts the application server
- `/stop` - Stops the application server
- `/update` - Updates the server to the latest git commit from the branch specified in `CCEDeployAgent class>>updateBranch` (or by setting `CCE_DEPLOY_BRANCH` in the environment)
- `/update/:commitHash` - Updates the server to the specified commit
- `/deploy` - Stops, updates & restarts the application server (see `/update`)
- `/deploy/:commitHash` - Stops, updates & restarts the application server to the specified commit (see `/update/:commitHash`)

The user name and password required for API interactions can also be configured over the environment (using e.g. the `.env` file).

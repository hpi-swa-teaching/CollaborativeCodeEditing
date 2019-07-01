# Collaborative Code Editing [![Build Status](https://travis-ci.org/hpi-swa-teaching/CollaborativeCodeEditing.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/CollaborativeCodeEditing)

Group 6

## Deployment

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

You can view the ip adress of the host you just deployed to using:
```sh
docker-machine ip swt-cce
```

And finally, the host can be shut down and destroyed:
```sh
docker-machine stop swt-cce
docker-machine rm swt-cce
```

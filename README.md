# walmart-challenge

This repository contains subfolders that redirect to the front-end and back-end repositories, allowing the palindrome search discount application to be deployed more easily.

## To run locally

The first step is to clone the repository with the following command:

### `git clone --recurse-submodules https://github.com/vrborjasm/walmart-challenge.git`

The second step you must use the console inside the root foldes and run the following command:

### `make build`

The third step will be to run the following command:

### `make up`

The fourth step is to open another console with location in the root folder and execute the following command:

### `make database-setup`

At the end of these steps you will find the application working with the front-end at http://localhost:3001/ and the server at http://localhost:3000/.

Other commands that may be of interest to you are:

this command allows to unmount the containers

### `make cleanup`

This command allows clearing the cache and unmounting the containers.

### `full-cleanup`

this command performs database cleanup

### `database-cleanup`
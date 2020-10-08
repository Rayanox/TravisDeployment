[![Build Status](https://travis-ci.org/Rayanox/TravisDeployment.svg?branch=master)](https://travis-ci.org/Rayanox/TravisDeployment)

This repo gives you a script YAML of deployment onto a linux server using Travis CI. You just have to adapt the environment variables to your project case.

The only limit is that your program must be a single program running. That means that only one process maximum  of this program can be running on the server (because of the kill). A future improvment would be to add a new environment variable to parameterize the possibility to kill the existing process or not (you can contribute, just PR).

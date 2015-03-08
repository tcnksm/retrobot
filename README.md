# retrobot

This is twitter bot which tweets what [deeeet](https://twitter.com/deeeet) tweets in 1 year ago.

## Setup

Download your [tweet zip file](https://blog.twitter.com/2012/your-twitter-archive) and extract,

```bash
$ unzip ~/tweets.zip -d tweets
```

Configure your bot,

```bash
$ $EDITOR retrobot.yml
```

Create docker image and push it on Dockerhub,

```bash
$ docker build -t tcnksm/retrobot .
$ docker push tcnksm/retrobot
```

You should make it private repository. 

## Deploy on CoreOS

After setup your CoreOS cluster, just run below,

```bash
$ fleet start retrobot.service
```

To use private repostory on CoreOS, see [Using Authentication for a Registry](https://coreos.com/docs/launching-containers/building/registry-authentication/). 


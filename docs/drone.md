## Drone

[Drone](https://drone.io) is a self hosted CICD platform. It's fairly simple,
all things considered and not too difficult to set up, once you actually know what
you're doing. That being said, there's a lot of sharp edges, Yak shaving and poor
documentation along the way.

In my lab I'm running CICD, CICD runners, source control, and a container registry all
on the same host. In production, this would NOT be done. But since this lab exists
for basically one person, it's not a big deal.

Initial set up: as usual we're using Ansible, and we're directly deploying the container
instead of Docker compose.

The main issue is the sparseness of Drone's docs. And their layout can be a bit recursive.

But essentially the deployment is like this for Gitea.

1. Create a user account in Gitea and add an OAuth2 application, with a login callback to
your Drone instance.

2. Add the OAuth2 token and user ID to as environment variables to the container deployment

3. Mount your certificates inside of the container. Fun fact, if Drone can't locate the certs,
it won't fault. It'll keep rigth on running. It'll redirect HTTP requets to :443. But it won't
answer. And there won't be any indications in the logs either. Even with debug. So if you can't
connect and you're running HTTPS, check that your cert path is correct.

4. If you are running Gitea locally, then you'll need to override the DNS in tne Drone server
container. 

5. Navigate to your Drone instance. You'll authenticate through Gitea with OAuth2.

6. More fun and sharp edges. When drone runs the pipeline, it clones the source code of your repo with
another separate container, `drone/git`. This will also need to have it's DNS overridden, if you're
running local DNS.

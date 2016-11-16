import os
from fabric.api import local, env, settings
from fabric.colors import cyan, green, red

env.repo = 'nemd'

def alpine_glibc():
	env.service = 'alpine_glibc'

def build():
	local("docker build -t %(repo)s/%(service)s --rm=true ." % (
		{
			"service": env.service,
			"repo": env.repo
		}
	))

def pull():
	local("docker pull %s/%s" % (env.repo, env.service))

def push():
	local("docker push %s/%s" % (env.repo, env.service))

def rmi():
    print(cyan("Deleting image: " + env.service))
    local("docker rmi $(docker images | grep " + env.service + " | awk '{print $1}')")
    print(green("Image successfully removed.\n"))

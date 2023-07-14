## Repository URL: https://github.com/GreenDeploy-io/hello-world-docker-django-lucio
Docker build:
docker build -t lucioric/hello-world-docker-django-lucio .
docker push lucioric/hello-world-docker-django-lucio
Docker run:
docker run -p 8000:8000 -it lucioric/hello-world-docker-django-lucio

In both commands you can change lucioric/hello-world-docker-django-lucio to your own docker hub username and repository name.

# Learn docker volumes and bind mounts

- build image:

```powershell
docker build -t docker-volumes-practice:latest .
```

- run container:

```powershell
docker run -p 3000:3000 -it --rm --name vol-app -v ${PWD}:/app -v /app/node_modules -e CHOKIDAR_USEPOLLING=true docker-volumes-practice:latest
```
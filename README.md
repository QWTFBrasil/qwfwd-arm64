Build qwfwd:

```
docker build --tag=qwfwd .
```


Run qwfwd:

```sh
docker run --interactive --tty --init --publish 30000:30000/udp qwfwd
```


Stop qwfwd:

```sh
docker container ls
docker container stop <hash>
```


Deploy qwfwd:

```sh
docker tag qwfwd fortressone/qwfwd:latest
docker push fortressone/qwfwd:latest
```

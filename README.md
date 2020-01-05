Build qwfwd:

```
docker build --tag=qwfwd .
```


Run qwfwd:

```sh
docker run qwfwd
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

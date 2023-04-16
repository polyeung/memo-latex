docker stop memos && docker rm memos

docker build -t memos .

docker run -d \
  --init \
  --name memos \
  --publish 5230:5230 \
  --volume ~/.memos/:/var/opt/meos_local \
  docker.io/library/memos

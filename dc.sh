if ! [ -e BUDGET-code/ ]; then
  mkdir BUDGET-code
fi
docker stop BUDGET
cp -f BUDGET-init.sh BUDGET-code/
docker-compose up -d #--build
docker exec -it BUDGET /bin/bash

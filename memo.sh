curl -X POST http://localhost:8888/app -H 'Content-Type: application/json' -d '{"hoge":[1,2,3]}'

docker exec -it lua-nginx /bin/bash
vim /etc/nginx/nginx.conf
nginx -s reload

curl -X POST http://lua-nginx/app -H 'Content-Type: application/json' -d '{"hoge":[1,2,3]}'
curl -X POST http://lua-nginx/app --data "foo=bar&pass=abc123"


curl -X POST http://localhost:8888/app -H 'Content-Type: application/json' -d '{"hoge":[1,2,3]}'
curl -X POST http://localhost:8888/chat -H 'Content-Type: application/json' -d '{"hoge":[1,2,3]}'
curl -X POST http://localhost:8888/app -H 'Content-Type: application/json' -d '{"hoge":["1234 5678 9012 3456","1234-5678-9012-3456","1234567890123456","1234 5678 9012 345"]}'


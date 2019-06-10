install :
	docker run --rm -t -v $PWD:/app node:8 npm i --prefix /app
	docker run --rm -t -i -v $PWD:/app composer global require hirak/prestissimo && composer install
	docker-compose up -d

1. Git clone
2. docker-compose up
3. From the App container: `serverless deploy --stage dev``
4. From the localstack container:

````
awslocal apigateway get-rest-apis
````

Copy the API ID

````
curl 0.0.0.0:4566/restapis/rl09yipy9n/dev/_user_request_/marketplace -X POST -H 'Content-Type: application/json' -d'{"names": "aaaa"}' -v
````
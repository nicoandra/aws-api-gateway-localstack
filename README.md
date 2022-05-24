1. Git clone
2. docker-compose up
3. From the App container: `serverless deploy --stage dev``
4. From the localstack container:

````
awslocal apigateway get-rest-apis
````

Copy the API ID

````
curl 0.0.0.0:4566/restapis/rl09yipy9n/dev/_user_request_/ -X POST -H 'Content-Type: application/json' -d'{"names": "aaaa"}' -v
````



References:
* https://velocity.apache.org/engine/devel/vtl-reference.html
* https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-gatewayResponse-definition.html
* https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference
* https://docs.aws.amazon.com/apigateway/latest/developerguide/request-response-data-mappings.html#mapping-request-parameters
* https://aws.plainenglish.io/simple-example-of-lambda-backed-custom-resource-in-aws-cloudformation-6cf2f9f1a101
* https://gist.github.com/narenranjit/1672345
* https://www.tabnine.com/code/javascript/functions/aws-sdk/APIGateway
* https://aws.amazon.com/premiumsupport/knowledge-center/cloudformation-lambda-resource-delete/
* https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/crpg-ref-responses.html
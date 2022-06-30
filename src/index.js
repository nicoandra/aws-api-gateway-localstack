console.log("eeee")

const handler = (a,b,c) => {
    console.log("Request handled ....", a, b, c)
    const response = {
        statusCode: 200,
        body: JSON.stringify({result: "It worked. Thanks."})
    }
    c(null, response)
}


module.exports.handler = handler
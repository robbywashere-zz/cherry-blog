@app.factory('Post', ($resource) -> $resource("/api/posts/:id", {id: "@id"}, {update: {method: "PUT"}} ))

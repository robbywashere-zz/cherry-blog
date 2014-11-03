@app.controller 'PostsIndexCtrl', ($scope, Post) ->
  $scope.posts = do Post.query


@app.controller 'PostsShowCtrl', ($scope, $routeParams, Post) ->
  $scope.post = Post.get({ id: $routeParams.id })


@app.controller 'PostsNewCtrl', ($scope, Post) =>
  $scope.post = new Post

  #This has a tendency to clobber input
  #$scope.saveAndUpdate = -> if $scope.post.id then do $scope.post.$update else do $scope.post.$save 

  #This will not clobber input and  is being used soley in this special case
  $scope.saveAndUpdate = -> if $scope.post.id then Post.update($scope.post) else Post.save $scope.post, (post) -> $scope.post.id = post.id

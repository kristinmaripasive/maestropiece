"use strict";

(function(){
  angular
    .module("maestropiece", [
      "ui.router",
    ])
    .config([
      "$stateProvider",
      RouterFunction
    ])


    function RouterFunction($stateProvider){
      $stateProvider
      .state("artistMain", {
        url: "/artists",
        templateUrl: "js/artists/index.html",
        controller: "ArtistIndexController",
        controllerAs: "ArtistIndexViewModel"
      });
      // .state("musicianMain", {
      //   url: "/musicianss",
      //   templateUrl: ""
      // })

    }



})();

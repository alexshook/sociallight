$().ready(function() {
  console.log('loaded bro');
  var socialLightRouter = new SocialLightRouter();
  Backbone.history.start();
});

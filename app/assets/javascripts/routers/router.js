var SocialLightRouter = Backbone.Router.extend({
  initialize: function() {
    console.log('router');
    this.auctionSearchView = new AuctionSearchView({ el: $(".container") });
  },
  routes: {
    '': '',
  }
})

var SocialLightRouter = Backbone.Router.extend({
  initialize: function() {
    console.log('router');
    this.auctionSearchView = new AuctionSearchView({ el: $(".container") });
    this.auction = new Auction();
  },
  routes: {
    'auction': 'index',
    // 'auction/:id': 'showAuction'
  },
  index: function() {
    console.log('index');
    this.auctionCollection = new AuctionCollection();
  }
})

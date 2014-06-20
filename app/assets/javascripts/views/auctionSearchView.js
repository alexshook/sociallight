var AuctionSearchView = Backbone.View.extend({
  el: 'div.container',

  initialize: function() {
    console.log('AuctionSearchView');
    this.render;
  },

  render: function() {
    var auctionSearchForm = _.template($('#auction-search-form').html());
    console.log(this.$el);
    this.$el.html(auctionSearchForm);
  }
});

class AuctionsController < ApplicationController

  def index
    # @user = current_user
    if params[:search].present?
      @auctions = Auction.near(params[:search], 50, :order => :distance)
    else
      @auctions = Auction.all
    end
  end

  def show
    @auction = Auction.find params[:id]
  end

  def show
    @message.update(viewed: true)
  end

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new
    if @auction.save
      redirect_to @auction
    else
      render 'new'
    end
  end

  def edit
  end

end

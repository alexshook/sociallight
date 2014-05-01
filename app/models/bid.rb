class Bid < ActiveRecord::Base

  belongs_to :user
  belongs_to :auction

  has_many :categories

  validates :user_id, :auction_id, presence: true

  def accept
    update(won: true)
  end

  def mark_as_viewed
    update(viewed: true)
  end

  def archive_bid
    update(archived: true)
  end

  def self.retrieve_user_bids(user)
    where(user: user)
  end

  #TODO
  # VALIDATE UNIQUENESS OF BID WITHIN SCOPE OF THE AUCTION_ID

end

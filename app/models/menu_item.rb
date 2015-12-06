class MenuItem < ActiveRecord::Base
  has_many :reviews

  def avg_review
    return 0.0 if self.reviews.empty?
    self.reviews.collect(&:star).sum.to_f / self.reviews.length
  end 
end

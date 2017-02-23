class Portfolio < ApplicationRecord
  
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
      where subtitle: "Angular"
  end
  
<<<<<<< HEAD
  scope :ruby_on_rails_portfolio_items, ->{where subtitle: 'Ruby on Rails'  }
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
 
 
=begin
yes 
meaning of ||=

if self.main_image == nil
  self.main_image = "http://placehold.it/600x400"
=======
  scope :ruby_on_rails_portfolio_items, ->{
      where subtitle: 'Ruby on Rails'
  }
>>>>>>> parent of 06d7b1d... Implemented image defaults for portfolio items
end

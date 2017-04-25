class Portfolio < ApplicationRecord
  has_many :technologies
  
  # data vailidation for technologies. If it is blank, does not let it go 
  # through 
  accepts_nested_attributes_for :technologies,
                              reject_if: lambda { |attrs| attrs['name'].blank?}
  
   
  validates_presence_of :title, :body
  
  #mapping uploader to the thumb and main images
  #it can be different uploader for different 
  #format like just accepting pdf
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
  
  def self.angular
      where subtitle: "Angular"
  end
  
  
   # above function has the same effect has the blow scope that 
   # uses lambda 

  scope :ruby_on_rails_portfolio_items, ->{where subtitle: 'Ruby on Rails'  }
  
  
  def self.by_position
    order("position ASC")
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
 
=end

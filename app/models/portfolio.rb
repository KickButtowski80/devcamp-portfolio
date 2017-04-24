class Portfolio < ApplicationRecord
  has_many :technologies
  
  # data vailidation for technologies. If it is blank, does not let it go 
  # through 
  accepts_nested_attributes_for :technologies,
                              reject_if: lambda { |attrs| attrs['name'].blank?}
  
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
      where subtitle: "Angular"
  end
  
  
   # above function has the same effect has the blow scope that 
   # uses lambda 

  scope :ruby_on_rails_portfolio_items, ->{where subtitle: 'Ruby on Rails'  }
  
  
  def self.by_position
    order("position ASC")
  end
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    
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

class GuestUser < User
  # id is for the actioncable when the guest user cannot comment
  # and app throws an error, watch lecture 183 udemy disect ror
  attr_accessor :name, :first_name, :last_name, :email, :id 
end
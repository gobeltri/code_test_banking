class Bank < ActiveRecord::Base
  has_many :accounts
  #has_many :transfers, through :accounts
end

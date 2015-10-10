class Couple < ActiveRecord::Base
  has_many :contracts
    has_many :vendors, through: :contracts
end

class Vendor < ActiveRecord::Base
  has_many :contracts
    has_many :couples, through: :contracts
end

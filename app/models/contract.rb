class Contract < ActiveRecord::Base
  belongs_to :couple
  belongs_to :vendor
end

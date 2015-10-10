class AcDemo < ActiveRecord::Base
  validates :title, presence: true
end

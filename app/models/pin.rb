class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :decription, presence: true
end

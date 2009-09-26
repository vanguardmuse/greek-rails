class User < ActiveRecord::Base
  belongs_to :semester
  has_many :events
  validates_presence_of :name
  validates_presence_of :semester
end

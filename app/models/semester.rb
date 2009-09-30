class Semester < ActiveRecord::Base
  has_many :users
  validates_presence_of :name
  validates_presence_of :class
end

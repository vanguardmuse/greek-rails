class User < ActiveRecord::Base
  belongs_to :semester
  validates_presence_of :name
  validates_presence_of :semester
end

class Event < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :date
  validates_presence_of :location
  validates_presence_of :title
  validates_presence_of :summary
  validates_presence_of :description
  validates_presence_of :user_id
  alias_method :contact,:user
  alias_method :contact=,:user=
end

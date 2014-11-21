class Show < ActiveRecord::Base
  validates :location, :presence => :true
  validates :date, :presence => :true
  belongs_to :artist


end

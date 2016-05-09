class TvSeries < ActiveRecord::Base
	validates :name, :season, :episode, presence: true
	validates :season, :episode, :numericality => { :greater_than => 0 }
end

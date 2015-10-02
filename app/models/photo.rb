class Photo < ActiveRecord::Base
	belongs_to :caption
	belongs_to :place_id
end

class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
  
 	RATINGS = {
  	  '1 Star'    => '1_star',
  	  '2 Stars'   => '2_stars',
  	  '3 Stars' => '3_stars',
  	  '4 Stars'  => '4_stars',
  	  '5 Stars'  => '5_stars'
  	}

  	def humanized_rating
  		RATINGS.invert[self.rating]
  	end
end

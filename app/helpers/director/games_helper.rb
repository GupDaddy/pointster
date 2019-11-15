module Director::GamesHelper
	def get_points(hole,score)
		@course.attributes.each do |attr_name, attr_value|
			if attr_value != nil
				if attr_name.start_with?("par_hole_") && attr_name.end_with?(hole.to_s)
					@points = attr_value.to_i - score
					@pointval
					case @points
						when 1
							@pointval = 4
						when @points >= 2
							@pointval = 8
						when 0
							@pointval = 2
						when @points = (-1)
							@pointval = 1
						else 
							@pointval = 0
					end
					return @pointval
				end
			else 
				return 0
			end			
		end	
	end

	def hole_output(holepoints, score)
		if @game.points?
			return holepoints
		elsif @game.score?
			return score
		end
	end
end

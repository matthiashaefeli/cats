module MapHelper

	def user_array
		array = []
		users = User.all
		users.each do |user|
			if user.id != current_user.id
				array.push([user.latitude, user.longitude, user.email])
			end
		end
		array
	end


end

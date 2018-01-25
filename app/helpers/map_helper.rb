module MapHelper

	def user_array
		array = []
		users = User.all
		users.each do |user|
			if user.id != current_user.id && user.getcat == true
				if user.first_name && user.last_name
					fullname = user.first_name + "," + user.last_name
					array.push([user.latitude, user.longitude, fullname, user.id])
				else
					array.push([user.latitude, user.longitude, user.email, user.id])
				end
			end
		end
		array
	end


end

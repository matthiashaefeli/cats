module MessagesHelper

	def allusers
		userarray = []
		users = User.all
		users.each do |user|
			userarray.push(user.email)
		end
		userarray
	end

	def catcareuser
		userarray = []
		users = User.all
		users.each do |user|
			if user.getcat
				userarray.push(user.email)
			end
		end
		userarray
	end

	def cats
		catsarray = []
		cats = Cat.all
		cats.each do |cat|
			if cat.user.id == current_user.id
				catsarray.push(cat.name)
			end
		end
		catsarray
	end

end

module MessagesHelper

	def allusers
		userarray = []
		users = User.all
		users.each do |user|
			userarray.push(user.email)
		end
		userarray
	end

end

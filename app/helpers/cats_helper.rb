module CatsHelper

	def stars(catname)
		total = 0
		cat = Cat.find_by(name: catname)
		if cat.catvotes.count == 0
			result = 0
		else
			cat.catvotes.each do |vote|
				total += vote.catstars
			end
			result = total / cat.catvotes.count
		end
		result
	end

	def eventwithuser(id)
		current_user.events.each do |event|	
			return true if event.care_user_id == id
		end
		false
	end


end

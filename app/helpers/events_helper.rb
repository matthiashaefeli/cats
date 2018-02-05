module EventsHelper

	def eventtake
		eventarray = []
		events = Event.all
			events.each do |ev|
			if ev.care_user_id == current_user.id
				eventarray.push(ev)
			end
		end
		eventarray.count
	end

end

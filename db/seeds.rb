100.times do |p|
	Post.create!(date: Date.today, rationale: "#{p} rationale content")
end

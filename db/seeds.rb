3.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )
end
10.times do |blog|
  Blog.create!(
      title: "My blog post #{blog}",
      body: "Lorem ipsum",
      topic_id: Topic.offset(rand(Topic.count)).first.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
           title: "Rails #{skill}",
           percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio|
  Portfolio.create!(
      title: "Portfolio tile: #{portfolio}",
      subtitle: "My great service",
      body: "Next lorem ipsum",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end

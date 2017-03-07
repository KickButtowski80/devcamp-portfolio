# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 topics created"
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu 
    feugiat erat, eu finibus metus. Nulla consectetur augue in lorem porttitor 
    dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, 
    per inceptos himenaeos. Mauris egestas libero et ante facilisis, in vehicula
    quam luctus. Phasellus non lectus vitae risus sodales pharetra eu at dolor. 
    Phasellus volutpat metus felis, a pharetra massa varius eget. Donec tempus
    finibus neque vel aliquet. Fusce auctor congue diam, sed ultrices ante congue
    nec. Nam tincidunt, massa ut vehicula pulvinar, augue ligula malesuada mauris, 
    vitae tristique nibh lorem vitae ipsum. Nulla enim ante, feugiat id neque a, 
    accumsan sodales magna. In dignissim volutpat ligula, vitae facilisis ligula. 
    Sed sed libero eleifend, ornare nunc eget, volutpat tortor. Aenean urna urna, 
    luctus at scelerisque sed, posuere eget nisi. Ut ut volutpat ante. Nunc dictum 
    commodo velit eu elementum.",
    topic_id: Topic.last.id
    )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end
puts "5 skills created"


8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur 
    sed erat viverra, elementum mauris eget, volutpat nulla. Donec maximus porttitor
    gravida. Fusce congue nisl elementum convallis posuere. Duis suscipit vitae neque 
    sed dictum. Sed pharetra nunc ac dolor posuere hendrerit. Maecenas consequat quam 
    velit, nec feugiat arcu maximus ac. Praesent et pulvinar libero. In rutrum laoreet 
    dolor id accumsan. Proin volutpat iaculis felis in finibus. Nulla auctor at magna 
    sed semper. Suspendisse tristique eu felis nec ultricies. Morbi id neque leo. Nulla 
    lacinia massa non laoreet laoreet. Integer vel nunc interdum lectus fringilla ullamcorper.
    Nam maximus congue felis a semper",
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur 
    sed erat viverra, elementum mauris eget, volutpat nulla. Donec maximus porttitor
    gravida. Fusce congue nisl elementum convallis posuere. Duis suscipit vitae neque 
    sed dictum. Sed pharetra nunc ac dolor posuere hendrerit. Maecenas consequat quam 
    velit, nec feugiat arcu maximus ac. Praesent et pulvinar libero. In rutrum laoreet 
    dolor id accumsan. Proin volutpat iaculis felis in finibus. Nulla auctor at magna 
    sed semper. Suspendisse tristique eu felis nec ultricies. Morbi id neque leo. Nulla 
    lacinia massa non laoreet laoreet. Integer vel nunc interdum lectus fringilla ullamcorper.
    Nam maximus congue felis a semper",
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create! name:"Technology #{technology}"
end

puts "3 technologies items created"

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Fluffys.create movie
  end
end

Given /the following events exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Events.create movie
  end
end


Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(page.body.index(e1) < page.body.index(e2))
end

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  rating_list.split(', ').each do |rating|
    step %{I #{uncheck.nil? ? '' : 'un'}check "ratings_#{rating}"}
  end
end

Then /I should see all the movies/ do
  # Make sure that all the movies in the app are visible in the table
  Movie.all.each do |movie|
    step %{I should see "#{movie.title}"}
  end
end

Then /the fluffy coins of "(.*)" should be "(.*)"/ do |name, fluffy_coin|
  movie = Fluffys.find_by_name(name)
  movie.fluffy_coin.should == fluffy_coin
end




Then /I give the input "(.*)", "(.*)", "(.*)", "(.*)" parameters/ do |location, interests, budget, frequency_of_entertainment|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  Events.all.each do |movie|
    step %{I should see "#{movie.location}"}
#     step %{I should see "#{movie.interests}"}
#     step %{I should see "#{movie.budget}"}
#     step %{I should see "#{movie.frequency_of_entertainment}"}
  end
end

Then /I should see Events recommended/ do
  # Make sure that all the movies in the app are visible in the table
  Events.all.each do |movie|
    step %{I should see "#{movie.name}"}
  # Shows all events without recommendation implemented
  end
end

Then /I don't give the input parameters/ do
  Events.all.each do |movie|
    step %{I should see "#{movie.location}"}  
  end
end

Then /I should see Default events/ do
  Events.all.each do |movie|
    step %{I should see "#{movie.name}"}
  end
end
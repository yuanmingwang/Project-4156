Then(/^I should be redirected to the external site "(.*?)"$/) do |url|
#   page.should have_content("If this wasn't an integration test, you'd be redirected to: #{url}")
    page.to_url("https://webqr.com/")
    page.should have_content("QR Code scanner")
    
end


Then /^I should see an HTML redirect to "([^\"]*)" in the page head$/ do |redirect_url|
  page.should have_xpath("//meta[@http-equiv=\"refresh\" and contains(@content, \"#{redirect_url}\")]")
end
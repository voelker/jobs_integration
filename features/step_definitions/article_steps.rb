def known_good_doi
  "10.1038/nj7245-468a"
end

Given /^a viewable article has been syndicated$/ do
  visit "http://test-ps.naturejobs.com/articles/#{ known_good_doi }.json"
end

Then /^I should see an article$/ do
  page.should have_css("#content article")
end

Then /^it should have the heading "([^"]*)"$/ do |heading_text|
  page.should have_css("#content article h1.article-heading", heading_text)
end

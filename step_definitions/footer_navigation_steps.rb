######
# Scenario: Navigation visible
######

Then /^I must see the following footer navigation elements:$/ do |table|
  page = HomePage.new
  table.raw.each do |row|
    expect(page.has_footer_navigation?(item:row.first)).to be true
  end
end
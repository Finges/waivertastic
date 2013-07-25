require 'spec_helper'

feature 'Creating Businesses' do
  scenario 'can create a business' do
    visit '/business/'
    click_link 'New Business'
    fill_in 'Name', :with => 'Paintballers'
    fill_in 'Address', :with => '100 main street'
    fill_in 'City', :with => 'Paintville'
    fill_in 'State', :with => 'WA'
    fill_in 'Zip', :with => '98059'
    fill_in 'Phone', :with => '555-555-5555'
    fill_in 'Email', :with => 'paintball@example.com'
    click_button 'Create Business'
    page.should have_content('Business has been created')
  end
end

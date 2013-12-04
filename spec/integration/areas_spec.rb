require 'spec_helper'

feature 'The area of' do
  scenario 'a square with sides of length 3' do
    visit '/areas/square/3' #open.read on the page
    expect(page).to have_css 'p', text: '9.0' #nokogiri to parse page
  end

  scenario 'a square with sides of length 4' do
    visit '/areas/square/4'
    expect(page).to have_css 'p', text: '16.0'
  end

  scenario 'a circle with radius 3' do
    visit '/areas/circle/3'
    expect(page).to have_css 'p', text: '28.2744'
  end

  scenario 'a circle with radius 4' do
    visit '/areas/circle/4'
    expect(page).to have_css 'p', text: '50.2656'
  end

  scenario 'a triangle with base 3 and height 5' do
    visit '/areas/triangle/3/5'
    expect(page).to have_css 'p', text: '7.5'
  end

  scenario 'a triangle with base 4 and height 4' do
    visit '/areas/triangle/4/4'
    expect(page).to have_css 'p', text: '8.0'
  end

   scenario 'a rectangle with wdith 3 and height 5' do
    visit '/areas/rectangle/3/5'
    expect(page).to have_css 'p', text: '15'
  end

   scenario 'a rectangle with base 4 and height 6' do
    visit '/areas/rectangle/4/6'
    expect(page).to have_css 'p', text: '24'
  end

   scenario 'a trapezoid with base 5 top 3 and height 7' do
    visit '/areas/trapezoid/3/5/7'
    expect(page).to have_css 'p', text: '52.5'
  end

   scenario 'a trapezoid with top 2 base 4 and height 6' do
    visit '/areas/trapezoid/2/4/6'
    expect(page).to have_css 'p', text: '24'
  end

   scenario 'a ellipse with with 3 and height 5' do
    visit '/areas/ellipse/3/5'
    expect(page).to have_css 'p', text: '47.124'
  end
end


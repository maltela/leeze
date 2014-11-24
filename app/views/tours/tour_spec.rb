require 'rails_helper'

Rspec.describe 'Tours', :type => :model do
  context'start page' do
  let(:category) { Category.new name: 'Radwandern'}
  let(:tour)      { Tour.new title:'Test Tour', teaser:'My Teaser',description: 'My description', url:'http://www.google.com/maps/'}


  before(:each) do
    tour.categories << category
    tour.save

  end

  it 'shows all tours on the start page' do
    visit root_path
    expect(page).to have_content tour.title
  end
  end
end

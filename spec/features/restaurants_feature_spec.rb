require 'rails_helper'

feature 'posts' do
  context 'no posts have been made' do
    scenario 'should display a prompt to make a post' do
      visit '/posts'
      expect(page).to have_content 'No posts yet'
      expect(page).to have_link 'Make a post'
    end
  end
end

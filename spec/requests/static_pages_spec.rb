require 'spec_helper'

describe "Static pages" do

	describe 'Home page' do
		subject { page } #can be put outside for all static pages and have same format
		before { visit root_path }

		it { should have_selector('h1', :text => 'Sample App') }

		it { should have_selector('title', :text => full_title('')) }

		it { should_not have_selector('title', :text => 'Ruby on Rails - Home') }

	end

	describe 'Help page' do

		before { visit help_path }

		it "should have the h1 'Help'" do
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the right title" do
			page.should have_selector('title', :text => full_title('Help'))
		end
	end

	describe 'About page' do

		before { visit about_path }

		it "should have the h1 'About Us'" do
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the right title" do
			page.should have_selector('title', :text => full_title('About Us'))
		end
	end

	describe 'Contact page' do

		before { visit contact_path }

		it "should have the h1 'Contact'" do
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the right title" do
			page.should have_selector('title', :text => full_title('Contact'))
		end
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "Sign in"
		page.should have_selector 'title', text: full_title('Sign in')
		click_link "About"
		page.should have_selector 'title', text: full_title('About Us')
		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')
		click_link "Contact"
		page.should have_selector 'title', text: full_title('Contact')
		click_link "Home"
		click_link "Sign up now!"
		page.should have_selector 'title', text: full_title('Sign up')
	end
end

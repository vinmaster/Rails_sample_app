include ApplicationHelper

# Use to replace code in spec files ':have_error_message'
RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		page.should_selector('div.alert.alert-error', text: 'Invalid')
	end
end

def sign_in(user)
	visit signin_path
	fill_in "Email", with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
	# sign in when not using Capybara
	cookies[:remember_token] = user.remember_token
end
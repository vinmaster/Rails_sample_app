include ApplicationHelper

# Use to replace code in spec files ':have_error_message'
RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		page.should_selector('div.alert.alert-error', text: 'Invalid')
	end
end
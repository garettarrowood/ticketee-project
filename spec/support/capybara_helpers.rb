module CapybaraHelpers
	def assert_no_link_for(text)
		expect(page).to_not(have_css("a", :text => text))
	end

	def assert_link_for(text)
		expect(page).to(have_css("a", :text => text))
	end
end

RSpec.configure do |config|
	config.include CapybaraHelpers, type: :feature
end

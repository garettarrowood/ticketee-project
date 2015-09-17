class Ability
	include CanCan::Ability

#Don't understand what's really going on below. This is a necessity of the gem 'cancan'. It is required for the #can? and #cannot? methods to work. #cannot? is first used in the 'authorize_create!' method in the TicketsController. 
# #cannot? is also used on the 'authorize_update!' method in the same controller.
# and 'authorize_delete!'
# and RermissionsController - I'm stopping listing here.
	def initialize(user)
		user.permissions.each do |permission|
		  can permission.action.to_sym, permission.thing_type.constantize do |thing|
			  thing.nil? ||
			  permission.thing_id.nil? ||
			  permission.thing_id == thing.id
		  end
		end
	end
end	
module Admin::PermissionsHelper
	def permissions
		{ "view" => "View", "create tickets" => "Create Tickets", "edit tickets" => "Edit Tikets", "delete tickets" => "Delete Tickets" }
	end
end

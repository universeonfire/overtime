class StaticController < ApplicationController
	def homepage

		if admin_types.include?(current_user.try(:type))
			@pending_approvals = Post.submitted.page(params[:page]).per(15)
			 
			@recent_audit_items = Auditlog.last(9)
		else
			@pending_audit_confirmations = current_user.auditlogs.pending
		end

	end
end
class StaticController < ApplicationController
	def homepage

		if admin_types.include?(current_user.try(:type))
			@pending_approvals = Post.submitted.page(params[:page]).per(18)
			 
			@recent_audit_items = Auditlog.last(10)
		else
			@pending_audit_confirmations = current_user.auditlogs.pending
		end

	end
end
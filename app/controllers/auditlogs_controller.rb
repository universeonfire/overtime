class AuditlogsController < ApplicationController
	def index
		@auditlogs = Auditlog.page(params[:page]).per(20)
		authorize @auditlogs
	end
	def confirm
		auditlog = Auditlog.find(params[:id])
		authorize auditlog
		auditlog.confirmed!
		redirect_to request.referrer || root_path , notice: "Confirmation Successfull!"
	end
end

class AuditlogsController < ApplicationController
	 
	 
	def index
		@auditlogs = Auditlog.page(params[:page]).per(20)
		authorize @auditlogs
	end

	 
end

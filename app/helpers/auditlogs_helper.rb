module AuditlogsHelper
	def audit_status_label status

		audit_status_span_generator status
	end

	private

	def audit_status_span_generator status

		case status
			when 'pending'
				content_tag(:span, status.titleize, class: 'label label-primary')
			when 'confirmed'
				content_tag(:span, status.titleize, class: 'label label-success')
			 
		end

	end
end

module PostsHelper
	def status_label status
		status_span_generator status
	end
	def rationale_label status , rationale
		rationale_span_generator(status , rationale)
	end
	private

	def status_span_generator status
		case status
			when 'submitted'
				content_tag(:span, status.titleize, class: 'label label-primary')
			when 'approved'
				content_tag(:span, status.titleize, class: 'label label-success')
			when 'rejected'
				content_tag(:span, status.titleize, class: 'label label-danger')
			when 'pending'
				content_tag(:span, status.titleize, class: 'label label-primary')
			when 'confirmed'
				content_tag(:span, status.titleize, class: 'label label-success')
			 
		end
	end
	def rationale_span_generator status , rationale
		case status
			when 'submitted'
				content_tag(:div, rationale.titleize, class: 'alert alert-dismissable alert-info')
			when 'approved'
				content_tag(:div, rationale.titleize, class: 'alert alert-dismissable alert-success')
			when 'rejected'
				content_tag(:div, rationale.titleize, class: 'alert alert-dismissable alert-danger')
		end
	end
end

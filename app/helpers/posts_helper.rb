module PostsHelper
	def status_label status
		status_span_generator status
	end
	def work_performed_label status , work_performed
		work_performed_span_generator(status , work_performed)
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
	def work_performed_span_generator status , work_performed
		case status
			when 'submitted'
				content_tag(:div, work_performed.titleize, class: 'alert alert-dismissable alert-info')
			when 'approved'
				content_tag(:div, work_performed.titleize, class: 'alert alert-dismissable alert-success')
			when 'rejected'
				content_tag(:div, work_performed.titleize, class: 'alert alert-dismissable alert-danger')
		end
	end
end

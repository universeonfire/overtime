module ApplicationHelper
    def admin_types
        ["AdminUser"]
    end
	def active?(path)
		"active" if current_page?(path)
	end
	def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])
        
        if alert
            alert_gen alert
        end
    end

    def alert_gen msg
        js add_gritter(msg, :title => "Evren Nari", sticky: false)
    end
end

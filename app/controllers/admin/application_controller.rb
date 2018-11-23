
module Admin
  #kullanıcı yetki tiplerini içeren bir liste oluşturdum. bu listede yer alan tipler Admin paneline ulaşabilir
  def self.admin_types
    ['AdminUser']
  end
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      # eğer admin tipleri listesinde varsa izin ver
      unless Admin.admin_types.include?(current_user.try(:type)) 
        flash[:alert] = "Access Denied!"
        redirect_to(root_path)
      end
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end

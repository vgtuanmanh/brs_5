module SessionsHelper

  def admin_user
    unless current_user.role == "admin"
      flash[:danger] = "You not be an admin!"
      redirect_to root_path
    end
  end
end

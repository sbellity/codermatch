class UsersController < ApplicationController

  def show
    @id = params[:id] #@id is not a number but the GitHub login name
    @user = User.find_by_name(params[:id])
  end

  def notify
  	# if !params[:data][:content].empty?
  		#
  	# end
  end

  def destroy
    @user = @current_user
    @user.destroy
    session[:current_user] = nil #not sure about this code

    respond_to do |format|
      format.json { render nothing: true, status: 200 }
    end
  end

end
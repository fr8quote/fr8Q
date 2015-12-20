class UserController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_user, only: [:show, :edit, :update]
  def show
  end

  def set_user
  	@user = current_user
end


 end
class SessionsController < ApplicationController
  def new
  end

  def destroy
  	logout
  	redirect_to root_path, :notice => "Bye"

  end
end

class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def show
    @email = Email.find(params[:id])
    @email.update(:read => true)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    if @email.destroy
      respond_to do |format|
        format.html {redirect_to emails_path}
        format.js
      end
    end
  end
end

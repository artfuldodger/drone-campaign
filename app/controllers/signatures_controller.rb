class SignaturesController < ApplicationController

  def create
    @signature = Signature.new(params[:signature])
    if @signature.save
      redirect_to root_url, flash: { success: "Thank you for signing!" }
    else
      # TODO: Don't make user fill in entire form again
      redirect_to root_url, flash: { error: "Please fill in all form fields." }
    end
  end

end

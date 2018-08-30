class PagesController < ApplicationController
  def home
  end

  def prawn
    @post = Post.first
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Way to go girl!"
        send_data pdf.render
      end
    end 
  end


end

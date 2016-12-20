class MagazinesController < ApplicationController

  def show
    @magazine = Magazine.find(params[:id])
  end

  def stylesheet
    @magazine = Magazine.find(params[:id])

    respond_to do |format|
      format.html { render :text => @magazine.style, :content_type => "text/css" }
      format.css { render :text => @magazine.style, :content_type => "text/css" }
    end
  end
end

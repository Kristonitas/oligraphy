class IssuesController < ApplicationController
  def show
    @issue = Issue.find(params[:id])
    @magazine = @issue.magazine
  end
end

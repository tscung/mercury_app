class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def save_page
    page = Page.find(params[:id])
    page.title = params[:content][:page_title][:value]
    page.content = params[:content][:page_content][:value]
    page.save!

    render text: ''
  end
end

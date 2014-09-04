class LinksController < ApplicationController
  def index
    @link = Link.new
  end

  def forward
    @link = Link.find_by(id:params[:id].to_i(36))
    redirect_to @link.full_link
  end

  def create
    @link = Link.new(link_params)
    @link.save
  end

  private

  def link_params
    params.require(:link).permit(:full_link)
  end
end

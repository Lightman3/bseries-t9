class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  respond_to :json

  def show
  end

  def search

    key = "#{params[:key]}"

    categories = TvShow.where('category LIKE ?',"#{key}%").order('category ASC').distinct.pluck(:category)

    render json: categories

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

end
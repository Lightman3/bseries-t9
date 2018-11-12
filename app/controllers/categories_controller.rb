class CategoriesController < ApplicationController

  respond_to :json

  def search

    key = "#{params[:key]}"

    categories = TvShow.where('category LIKE ?',"#{key}%").order('category ASC').distinct.pluck(:category)

    render json: categories

  end

end
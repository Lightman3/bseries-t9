class CategoriesController < ApplicationController

  respond_to :json

  def search

    key = "#{params[:key]}"

    known_categories = [
      'animación',
      'aventura',
      'ciencia ficción',
      'comedia',
      'comer',
      'cosplay',
      'documental',
      'docu-reality',
      'drama',
      'drama coreano',
      'drama japonés',
      'drama médico',
      'drama sobrenatural',
      'histórico',
      'intriga',
      'musical',
      'roma',
      'romance',
      'suspenso',
      'terror',
      'vaqueros',
      'violencia',
    ]

    categories = (known_categories.select{|k| k.start_with?(key) } +
      TvShow.where('category LIKE ?',"#{key}%").distinct.pluck(:category))
      .uniq.sort_by(&:to_s)

    render json: categories

  end

end
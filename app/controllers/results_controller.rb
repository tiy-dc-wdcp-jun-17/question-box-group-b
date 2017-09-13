class ResultsController < ApplicationController

  def index
    @pg_search_documents = PgSearch.multisearch(params[:q]).page(params[:page]).per(10)
  end

end

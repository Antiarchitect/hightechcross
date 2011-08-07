class ResultsController < ApplicationController
  def index
    @crosses = Cross.active.all
  end
end

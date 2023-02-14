class CompaniesController < ApplicationController

  # TODO:
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by({ "id" => params["id"] })
  end

  def new
  end

  def create
  end

end

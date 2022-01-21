class CatsController < ApplicationController
  def random
    @cats = Cat.all.shuffle.sample
    json_response(@cats)
  end
  
  def index
    @cats = Cat.all
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end

  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
      render status: 200, json: {
      message: "This cat has been updated successfully."
      }
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    if @cat.destroy
      render status: 200, json: {
      message: "This cat has been deleted successfully."
      }
    end
  end


  def cat_params
    params.permit(:name, :breed, :age)
  end
end
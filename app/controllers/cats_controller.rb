class CatsController < ApplicationController
  def random
    @cats = Cat.all.shuffle.sample
    json_response(@cats)
  end
  
  def index
    breed = params[:breed]
    if breed
      @cats = Cat.search_breed(breed).paginate(page: params[:page], per_page: 5)
    else
      @cats = Cat.paginate(page: params[:page], per_page: 5)
    end
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
    params.permit(:name, :breed, :age, :image_url)
  end
end
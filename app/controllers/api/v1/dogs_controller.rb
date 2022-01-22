module Api
  module V1
    class DogsController < ApplicationController
      def random
        @dogs = Dog.all.shuffle.sample
        json_response(@dogs)
      end
      
      def index
        breed = params[:breed]
        if breed
          @dogs = Dog.search_breed(breed).paginate(page: params[:page], per_page: 5)
        else
          @dogs = Dog.paginate(page: params[:page], per_page: 5)
        end
        json_response(@dogs)
      end

      def show
        @dog = Dog.find(params[:id])
        json_response(@dog)
      end

      def create
        @dog = Dog.create!(dog_params)
        json_response(@dog, :created)
      end

      def update
        @dog = Dog.find(params[:id])
        if @dog.update!(dog_params)
          render status: 200, json: {
          message: "This dog has been updated successfully."
          }
        end
      end

      def destroy
        @dog = Dog.find(params[:id])
        if @dog.destroy
          render status: 200, json: {
          message: "This dog has been deleted successfully."
          }
        end
      end

      def dog_params
        params.permit(:name, :breed, :age, :image_url)
      end
    end
  end
end
class CarsController < ApplicationController

    def index
        car = Car.all
        render json: car, status: :ok
    end

    def show
        car = find_car
        if car
            render json: car, status: :ok
        else
            not_found_response
        end
    end

    def create
        car = Car.new(car_params)
        if car.save
            render json: car, status: :created
        else
            render json: {error: "Car could not be created. Please try again."}
        end
    end

    def update
        car = find_car
        if car
            car.update!(car_params)
            render json: car, status: :accepted
        else
            not_found_response
        end
    end

    def destroy
        car = find_car
        if car
            car.destroy
            head :no_content
        else
            not_found_response
        end
    end

    private
    def car_params
        params.require(:car).permit(:title, :category, :description, :image_url)
    end

    def find_car
        Car.find_by(id: params[:id])
    end

    def not_found_response
        render json: { error: "Car not found" }, status: :not_found
    end

end

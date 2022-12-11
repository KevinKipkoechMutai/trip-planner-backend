class CarCompaniesController < ApplicationController

    def create
        car_company = CarCompany.new(cc_params)
        if car_company.save
            render json: car_company, status: :created
        else
            render json: { error: "Item could not be created. Please retry" }
        end
    end

    private
    def cc_params
        params.company(:car_id, :company_id)
    end
    
end

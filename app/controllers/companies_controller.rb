class CompaniesController < ApplicationController
    
    def index
        company = Company.all
        render json: company, status: :ok
    end

    def show
        company = find_company
        if company
            render json: company, status: :ok
        else
            not_found_error
        end
    end

    def create
        company = Company.new(company_params)
        if company.save
            render json: company, status: :created
        else
            render json: { error: "Company not created. Please try again" }
        end
    end

    def update
        company = find_company
        if company
            company.update!(company_params)
            render json: company, status: :accepted
        else
            not_found_error
        end
    end

    def destroy
        company = find_company
        if company
            company.destroy
            head :no_content
        else
            not_found_error
        end
    end

    private
    def find_company
        Company.find_by(id: params[:id])
    end

    def company_params
        params.require(:company).permit(:name, :country)                                  
    end

    def not_found_error
        render json: { error: "Company not found" }
    end

end

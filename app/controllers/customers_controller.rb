class CustomersController < ApplicationController
    def index
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(customers_params)

        if @customer.save
          redirect_to customers_path, notice: "Cliente cadastrado com sucesso!"

        else
            render :new
        end
    end

    def customers_params
        params.require(:customer).permit(
            :name,
            :email,
            :smoker,
            :phone,
            :avatar
        )
    end
end

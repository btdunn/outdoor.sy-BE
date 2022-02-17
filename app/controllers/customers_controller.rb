class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    render json: @customers
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  private

  def customer_params
    params.permit(:first_name, :last_name, :email, :vehicle_type, :vehicle_name, :vehicle_length)
  end
end

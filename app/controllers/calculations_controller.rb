class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square

    @square_input = params[:square_input]

    @square = @square_input.to_i * @square_input.to_i
    render("square.html.erb")
  end

  def square_root

    @root_input = params[:root_input]

    @root = Math.sqrt(@root_input.to_i)
    render("square_root.html.erb")
  end

def random
  @min = params[:min].to_i
  @max = params[:max].to_i

  @random = rand(@min..@max)
end

def payment

@rate = params[:interest_rate].to_i
@monthly_rate = @rate/12.to_f
@decimal_rate = @monthly_rate/100.to_f

@years = params[:years].to_i
@months = @years * 12

@value = params[:principal_value].to_i

@payment = (@decimal_rate * @value)/(1 - (1 +@decimal_rate) ** -@months)

end
end

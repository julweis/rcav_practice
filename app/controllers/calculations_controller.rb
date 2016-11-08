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
end

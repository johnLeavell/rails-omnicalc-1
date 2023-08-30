class ResultsController < ApplicationController

  def square
    @the_num = params.fetch("number").to_f

    @the_result = @the_num ** 2

    render({ template: 'square/results' })
  end

  def square_root
    @the_num = params.fetch("number").to_f

    @the_result = @the_num ** 0.5.to_f
    render({ template: 'square_root/results' })
  end

  def payment
    @apr = params.fetch("apr_input").to_f

    @years = params.fetch("years_input").to_i
    @principal = params.fetch("principal_input").to_f

    @r = (@apr / 100.0) / 12.0
    @n = @years * 12.0


    @numerator =  (@r * @principal)
    @denom = 1.0 - ((1.0 + @r)**-@n)

    @results = @numerator / @denom


    render({ template: 'payment/results' })
  end

  def random
    @the_min = params.fetch("min").to_f

    @the_max = params.fetch("max").to_f
  
    @random_num = rand(@the_min..@the_max)
    render({ template: 'random/results' })
  end
end

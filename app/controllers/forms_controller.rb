class FormsController < ApplicationController
  
  def home
    render({ template: "square/new" })
  end

  def square_root
    render({ template: "square_root/new" })
  end

  def payment
    render({ template: "payment/new" })
  end

  def random
    render({ template: "random/new" })
  end
end

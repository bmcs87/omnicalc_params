class CalculationsController < ApplicationController
  
  #Flexible Square
  def flex_square
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/flexible_square_template.html.erb")
  end
  
  
  #Flexible Square Root
  def flexible_square_root

    @user_number = params["a_number"].to_i
    #@squared_number = @user_number**2
    
    #@user_number = params["a_number"].to_i
    @squared_root = Math.sqrt(@user_number)
    
    render("calculations/flexible_square_root_template.html.erb")
  end
  
  
  #Flexible Payment Calculator  
  def flexible_payment
    
    @apr = params["a_number"].to_i
    @principal = params["a_number2"].to_i
    @years = params["a_number3"].to_i<
    @monthly_payment = ( (@apr/12)/100 /(1 - (1+ (@apr/12)/100)**-(@years*12 )))*@principal
    
    render("calculations/flexible_payment_template.html.erb")
  end
  
  
  #Flexible Random Example
  def flexible_random_example
    
    #@apr = params["a_number"].to_i
    
    render("calculations/flexible_random_example.html.erb")
  end
  
  
  #Square Form
  def square_form
    
    #@apr = params["a_number"].to_i
    
    render("calculations/square_form.html.erb")
  end
  
  
  #Square Root Form
  def square_root_form
    
    #@apr = params["a_number"].to_i
    
    render("calculations/square_root_form.html.erb")
  end
  
  
  #Payment form
  def payment_form
    
    #@apr = params["a_number"].to_i
    
    render("calculations/payment_form.html.erb")
  end
  
  
  #Random form
  def random_form
    
    #@apr = params["a_number"].to_i
    
    render("calculations/random_form.html.erb")
  end
  
  
  #Word Count Form
  def word_count_form
    
    #@apr = params["a_number"].to_i
    
    render("calculations/word_count_form.erb")
  end
  
  
  #Stats form
  def stats_form
    
    #@apr = params["a_number"].to_i
    
    render("calculations/stats_form.erb")
  end
  
  
end
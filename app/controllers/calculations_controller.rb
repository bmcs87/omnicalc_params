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

    @user_number = params["a_number"].to_f
    @squared_root = Math.sqrt(@user_number).to_f
    
    render("calculations/flexible_square_root.html.erb")
  end
  
  
  #Flexible Payment Calculator  
  def flexible_payment
    
    @apr = (params["a_number"].to_f)/100
    @years = params["a_number2"].to_i
    @principal = params["a_number3"].to_i
    @monthly_payment = ( (@apr/12)/100 /(1 - (1+ (@apr/12)/100)**-(@years*12 )))*@principal
    
    render("calculations/flexible_payment.html.erb")
  end
  
  
  #Flexible Random Example
  def flexible_random
    
    @random_min = params["a_number"].to_f
    @random_max = params["a_number2"].to_f
    @random_number = Random.new.rand(@random_min..@random_max) 
    
    render("calculations/flexible_random.html.erb")
  end
  
  
  #Square Form
  def square_form
    # The incoming parameters for this action look like {"the_user_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @the_number = params["the_user_number"].to_f
    @the_square = @the_number**2
    
    render("calculations/square_form_template.html.erb")
  end
  
   #Process Square Form
  def process_square_form
    # The incoming parameters for this action look like {"the_user_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @the_number = params["the_user_number"].to_f
    @the_square = @the_number**2
    
    render("calculations/process_square_form_template.html.erb")
  end
  
  #Square Root Form
  def square_root_form
    
    @the_number = params["the_user_number"].to_f
    @squared_root = Math.sqrt(@the_number).to_f
    
    render("calculations/square_root_form_template.html.erb")
  end
  
  
  #Process Square Root Form
  def process_square_root_form
    
    @the_number = params["the_user_number"].to_f
    @squared_root = Math.sqrt(@the_number).to_f
    
    render("calculations/process_square_root_form_template.html.erb")
  end
  
  #Payment form
  def payment_form
    
    @apr = (params["user_apr"].to_f)
    @years = params["user_years"].to_i
    @principal = params["user_principal"].to_i
    @monthly_payment = ( (@apr/12)/100 /(1 - (1+ (@apr/12)/100)**-(@years*12 )))*@principal
    
    render("calculations/payment_form.html.erb")
  end
  
  #Process Payment form
  def process_payment_form
    
    @apr = (params["user_apr"].to_f)
    @years = params["user_years"].to_i
    @principal = params["user_principal"].to_i
    @monthly_payment = ( (@apr/12)/100 /(1 - (1+ (@apr/12)/100)**-(@years*12 )))*@principal
    
    render("calculations/process_payment_form.html.erb")
  end
  
  
  #Random form
  def random_form
    
    @random_min = params["user_min"].to_f
    @random_max = params["user_max"].to_f
    @random_number = Random.new.rand(@random_min..@random_max) 
    
    render("calculations/random_form.html.erb")
  end
  
  
  #Process Random form
  def process_random_form
    
    @random_min = params["user_min"].to_f
    @random_max = params["user_max"].to_f
    @random_number = Random.new.rand(@random_min..@random_max) 
    
    render("calculations/process_random_form.html.erb")
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
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    "Hello World"
  end
  
  get "/activities" do
    activities = Activity.all
    activities.to_json
  end

  get "/costs" do
    costs = Cost.all
    costs.to_json
  end

  get '/costs/:id' do
    costs = Activity.find(params[:id])
    costs.to_json
  end

  get "/employees" do
    employees = Employee.all
    employees.to_json
  end

end

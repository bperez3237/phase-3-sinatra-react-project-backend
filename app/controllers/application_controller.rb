class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    "Hello World"
  end
  
  #activities routes 
  get "/activities" do
    activities = Activity.all
    activities.to_json
  end

  get "/activities/:id" do
    activities = Activity.find(params[:id])
    activities.to_json
  end

  get "/activities/:id/costs" do
    costs = Activity.find(params[:id]).costs
    costs.to_json
  end

  get "/project_cost" do
    cost = [Activity.project_cost]
    cost.to_json
  end

  get "/project_hours" do 
    hours = [Activity.project_hours]
    hours.to_json
  end

  post '/activities' do
    activity = Activity.create(
      name: params[:name],
      estimated_hours: params[:estimated_hours],
      percent_complete: params[:percent_complete],
      estimated_cost: params[:estimated_cost],
      order: params[:order]
    )
    activity.to_json
  end

  patch "/activities/:id" do
    activity = Activity.find(params[:id])
    swap_activity = Activity.find_by(order: params[:order])
    difference = params[:order] - activity.order

    unless params[:order] < 1 || params[:order] > Activity.all.length
      activity.update(order: params[:order])
      swap_activity.update(order: swap_activity.order - difference)
    end
    activities = Activity.all
    activities.to_json
  end

  delete '/activities/:id' do
    activity = Activity.find(params[:id])
    activity.costs.each {|cost| cost.destroy}

    start = activity.order - 1

    Activity.all.sort_order[start..].each do |act|
      act.update(order: act.order-1)
    end
    activity.destroy

    res = {'activities': Activity.all, 'costs': Cost.all}
    res.to_json
  end

  #employees routes
  get "/employees" do
    employees = Employee.all
    employees.to_json
  end

  get "/employees/:id" do
    employees = Employee.find(params[:id])
    employees.to_json
  end

  #costs routes
  get "/costs" do
    costs = Cost.all
    costs.to_json
  end

  get '/costs/:id' do
    costs = Cost.find(params[:id])
    costs.to_json
  end


  post '/costs' do
    cost = Cost.create(
      name: params[:name],
      total_cost: params[:total_cost],
      category: params[:category],
      activity_id: params[:activity_id],
      employee_id: params[:employee_id]
    )
    cost.to_json
  end

  patch '/costs/:id' do
    cost = Cost.find(params[:id])
    cost.update(
      total_cost: params[:total_cost]
    )
    cost.to_json
  end

  delete '/costs/:id' do
    cost = Cost.find(params[:id])
    cost.destroy
    cost.to_json
  end

end

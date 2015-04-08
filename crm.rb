require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

$rolodex = Rolodex.new

get '/' do
  @crm_app_name = "Rob's CRM"
  erb :index
end

get "contacts/new" do
  erb :new_contact
end

get "/contacts" do
  erb :contacts
end
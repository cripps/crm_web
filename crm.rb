require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

$rolodex = Rolodex.new
$crm_app_name = "Rob's CRM"

get "/" do
  erb :index
end

get "/contacts/new" do
  erb :new_contact
end

get "/contacts" do
  erb :contacts
end

post "/contacts" do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to("/contacts")
end
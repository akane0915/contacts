require 'sinatra'
require 'sinatra/reloader'
require './lib/contact'
require './lib/phone'
require './lib/address'
require './lib/email'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contacts') do
  @contacts = Contact.all
  erb(:contacts)
end

get('/contacts/new') do
  erb(:contacts_form)
end

post('/contacts') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  company = params.fetch('company')
  new_contact = Contact.new({:first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company}).save
  @contacts = Contact.all
  erb(:success)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id'))
  erb(:contact)
end

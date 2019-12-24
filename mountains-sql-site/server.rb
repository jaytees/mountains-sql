require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'   # talk to our sql database
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',         #what is the DB system we are using
  database: 'database.db'     #where is the actual DB data?

)

# this will log all the SQL queries constructed by ActiveRecord
ActiveRecord::Base.logger = Logger.new STDERR


# This code will run after any specific route block runs;
# this is a sinatra feature (not ActiveRecord) that saves us
# from having to this connection-closing code at the end
# of every block
after do
  ActiveRecord::Base.connection.close
end

# This class is the capitalised singular version of our SQL table name 'animals'
# It gets all of its features from the ActiveRecord Base class
# From now on we can run queries on our 'animals' table by calling methods
# on the Animal class
class Mountain < ActiveRecord::Base
  has_many :climbers
end

class Climber < ActiveRecord::Base
  belongs_to :mountain
end

# binding.pry
# puts "stop here"


# Home page
get '/' do
  erb :home
end



# Create routes
get '/mountains/new' do
  erb :new
end


post '/mountains' do

  Mountain.create(
  mountain:  params[:mountain],
  country: params[:country],
  range: params[:range],
  height: params[:height],
  first_ascent: params[:first_ascent],
  image_url: params[:image_url]

)


  redirect '/mountains'
end

# Create routes
get '/climbers/new/:id' do

  @mountains = Mountain.find params[:id]

  erb :new_climber
end


post '/climbers' do

  Climber.create(
  name:  params[:name],
  year: params[:year],
  mountain_id: params[:mountain_id],
)


  redirect '/mountains'
end


# Read routes
# Index of all mountains
get '/mountains' do

  @mountains = Mountain.all

  erb :index
end


# Individual result page
get '/mountains/:id' do

  @mountains = Mountain.find params[:id]

  erb :show
end





# Delete
get "/mountains/:id/delete" do
  Mountain.destroy params[:id]

  #no template to show, redirect to the Index
  redirect '/mountains'
end

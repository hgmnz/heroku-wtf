require "sinatra"
require "sequel"

DB = Sequel.connect(ENV["DATABASE_URL"])

post "/wtf" do
  DB[:wtfs].insert(params[:user], Time.now, params[:wtf])
end


require File.expand_path('../spec_helper', __FILE__)

describe "smuggle" do
  before(:each) do
    clean_database!
  end
  
  it "should have smuggle defined" do
    a = Universe.new
    a.name = "hey"
    a.save
    a.reload
    puts a.inspect
  end


end

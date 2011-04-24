require File.expand_path('../spec_helper', __FILE__)

describe "Smuggle" do
  before(:each) do
    clean_database!
  end
  
  describe "association reflection" do
    before(:each) do
      clean_database!
      @universe = Universe.create(:name => "main")
      @earth = @universe.planets.create(:name => "earth")
      @mars = @universe.planets.create(:name => "mars")
    end

    it "earth is associated to Country, Pets, Oceans, Fish, Person" do
      @smuggle = Smuggle.new(@earth)
      @smuggle.associated_models.should eql [Country, Person, Pet, Ocean, Fish] 
    end
  end

end

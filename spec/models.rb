class Universe < ActiveRecord::Base
  has_many :planets
end

class Planet < ActiveRecord::Base
  belongs_to :universe
  has_many :countries
  has_many :oceans
end

class Country < ActiveRecord::Base
  belongs_to :planet
  has_many :people
end

class Ocean < ActiveRecord::Base
  belongs_to :planet
  has_many :fish
end

class Fish < ActiveRecord::Base
  belongs_to :ocean
end

class Person < ActiveRecord::Base
  belongs_to :country
  has_many :pets
end

class Pet < ActiveRecord::Base
  belongs_to :person
end


ActiveRecord::Schema.define :version => 0 do
 
  create_table :universes, :force => true do |t|
    t.column :name, :string
  end

  create_table :planets, :force => true do |t|
    t.column :name, :string
    t.column :universe_id, :integer
  end

  create_table :countries, :force => true do |t|
    t.column :name, :string
    t.column :planet_id, :integer
  end

  create_table :oceans, :force => true do |t|
    t.column :name, :string
    t.column :planet_id, :integer
  end

  create_table :fish, :force => true do |t|
    t.column :name, :string
    t.column :ocean_id, :integer
  end

  create_table :people, :force => true do |t|
    t.column :name, :string
    t.column :country_id, :integer
  end

  create_table :pets, :force => true do |t|
    t.column :name, :string
    t.column :person_id, :integer
  end

end

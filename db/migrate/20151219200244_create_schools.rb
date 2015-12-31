class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
    	t.string :name
    	t.string :location
    	t.integer :population
    	t.integer :gpa
    	t.integer :sat
    	t.integer :act
    	t.integer :social_life
    	t.integer :athletics

      t.timestamps null: false
    end
  end
end

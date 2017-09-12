class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :brewery_id
      t.string :type
      t.string :abv
    end
  end
end

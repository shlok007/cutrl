class CreateCuts < ActiveRecord::Migration[5.0]
  def change
    create_table :cuts do |t|
      t.string :url
      t.string :shortened_url

      t.timestamps
    end
  end
end

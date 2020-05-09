class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.text :link_title
      t.text :link_url
      t.text :link_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

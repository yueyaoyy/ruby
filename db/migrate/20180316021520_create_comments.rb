class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # The t.references line creates an integer column called article_id
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end

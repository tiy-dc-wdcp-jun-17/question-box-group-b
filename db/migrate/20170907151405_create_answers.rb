class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :username
      t.text :body
      t.boolean :correct

      t.timestamps
    end
  end
end

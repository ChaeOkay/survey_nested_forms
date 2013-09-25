class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.string :content, null: false
      t.references :question
      t.timestamps
    end
  end

  def down
    drop_table :answers
  end
end

class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.string :content
      t.references :question
    end
  end

  def down
    drop_table :answers
  end
end

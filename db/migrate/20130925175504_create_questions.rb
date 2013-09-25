class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string :description
      t.references :survey
    end
  end

  def down
    drop_table :questions
  end
end

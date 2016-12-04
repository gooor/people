class CreateUserSkillRates < ActiveRecord::Migration
  def change
    create_table :user_skill_rates do |t|
      t.references :user, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true
      t.integer :rate

      t.timestamps null: false
    end
  end
end

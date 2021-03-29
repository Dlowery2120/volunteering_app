class CreateVolunteerSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteer_signups do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end

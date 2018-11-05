class AddColorToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :color, :string
  end
end

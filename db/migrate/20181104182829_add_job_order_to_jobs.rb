class AddJobOrderToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_order, :integer
  end
end

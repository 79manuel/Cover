class AddJobtypeIdToJobs < ActiveRecord::Migration[5.1]

  def change
    add_column :jobs, :jobtype_id, :bigint
  end

end

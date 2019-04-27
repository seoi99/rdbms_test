class Project < ApplicationRecord
  belongs_to :programmer
  belongs_to :client

  sql = "
  SELECT clients.name, sum(programmer_id) as numOfVideo
  FROM projects
  LEFT JOIN clients
  ON projects.client_id = clients.id
  GROUP BY clients.name
  "
  def self.execute_statement(sql)
  results = ActiveRecord::Base.connection.exec_query(sql)

  if results.present?
    return results
  else
    return nil
  end
  end
end

class AddVotingPhaseToEvents < ActiveRecord::Migration
  def change
    add_column :events, :voting_phase, :boolean, :default => true
  end
end

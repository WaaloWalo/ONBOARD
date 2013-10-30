class DefineMember < ActiveRecord::Migration
  
  def self.up 
  	# ajouter les colonnes suivantes
  	add_column :team_members, :nom, :string, :limit=>100
  	add_column :team_members, :prenom, :string, :limit=>100
  	add_column :team_members, :pseudo, :string, :limit=>100
  	add_column :team_members, :email, :string, :limit=>100
  	add_column :team_members, :phone, :string, :limit=>14
  	add_column :team_members, :birthdate, :date
  	add_column :team_members, :function, :string, :limit=>100
  	add_column :team_members, :department, :string, :limit=>45
  	add_column :team_members, :photo, :string, :limit=>250
  end

  def self.down
  	remove_column :team_members, :nom
  	remove_column :team_members, :prenom
  	remove_column :team_members, :pseudo
  	remove_column :team_members, :email
  	remove_column :team_members, :phone
  	remove_column :team_members, :birthdate
  	remove_column :team_members, :function
  	remove_column :team_members, :department
  	remove_column :team_members, :photo
  end
end

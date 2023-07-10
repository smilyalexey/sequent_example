VIEW_SCHEMA_VERSION = 3
    
 class SequentMigrations < Sequent::Migrations::Projectors
   def self.version
     VIEW_SCHEMA_VERSION
   end
    
   def self.versions
     {
       '1' => [],
       '2' => Sequent::Migrations.all_projectors,
       '3' => [
          Sequent::Migrations.alter_table(UserRecord)
       ]
     }
   end
 end
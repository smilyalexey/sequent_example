VIEW_SCHEMA_VERSION = 2
    
 class SequentMigrations < Sequent::Migrations::Projectors
   def self.version
     VIEW_SCHEMA_VERSION
   end
    
   def self.versions
     {
       '1' => [],
       '2' => Sequent::Migrations.all_projectors
     }
   end
 end
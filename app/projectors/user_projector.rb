class UserProjector < Sequent::Projector
    manages_tables UserRecord
  
    on User::UserCreated do |event|
      create_record(UserRecord, {
          aggregate_id: event.aggregate_id,
          name: event.name,
        }
      )
    end
end
  
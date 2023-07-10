module User
    class User < Sequent::AggregateRoot
      attr_accessor :name, :lastname
  
      def initialize(command)
        super(command.aggregate_id)
  
        apply UserCreated, name: command.name, lastname: command.lastname
      end
  
      on UserCreated do |event|
        @name = event.name
        @lastname = event.lastname
      end
    end
  end
  
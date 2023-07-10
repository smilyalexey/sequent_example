module User
    class UserCreated < Sequent::Event
      attrs name: String,
            lastname: String
    end
end
  
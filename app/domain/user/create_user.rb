module User
    class CreateUser < Sequent::Command
      attrs name: String, lastname: String
    end
  end
  
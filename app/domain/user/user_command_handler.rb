module User
  class UserCommandHandler < Sequent::CommandHandler
    on ::User::CreateUser do |command|
      repository.add_aggregate ::User::User.new(command)
    end
  end
end

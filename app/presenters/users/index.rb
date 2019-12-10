module Users
  class Index
    attr_reader :user

    def initialize(user)
      @user = user
    end

    def present
      {
        id: user.id,
        name: user.name,
        phone: user.phone
      }
    end
  end
end
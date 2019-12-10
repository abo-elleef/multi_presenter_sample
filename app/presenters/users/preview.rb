module Users
  class Preview
    attr_reader :user

    def initialize(user)
      @user = user
    end

    def present
      {
        id: user.id,
        name: user.name,
        phone: user.phone,
        address: user.address,
        email: user.email
      }
    end
  end
end
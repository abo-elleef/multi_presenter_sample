module Users
  class Show
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
          email: user.email,
          category: Categories::Index.new(user.category).present,
          posts: user.posts.map { |post| Posts::Index.new(post).present }
      }
    end
  end
end
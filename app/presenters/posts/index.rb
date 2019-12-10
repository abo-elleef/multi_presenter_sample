module Posts
  class Index
    attr_reader :post

    def initialize(post)
      @post = post
    end

    def present
      {
        id: post.id,
        title: post.title,
        body: post.body
      }
    end
  end
end
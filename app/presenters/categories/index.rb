module Categories
  class Index
    attr_reader :category

    def initialize(category)
      @category = category
    end

    def present
      {
          id: category.id,
          name: category.name,
          desc: category.desc
      }
    end
  end
end
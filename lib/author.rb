class Author
  attr_accessor :name
  
  @@count = 0
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def self.post_count
    Post.all.count
  end
  
end
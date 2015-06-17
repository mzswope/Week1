require "date"

class Blog
  
  def initialize
    @posts = []
    @current_date = DateTime.now
  end
  
  def create_front_page
  end
  
  
  
  def publish_front_page
    puts "#{@title}"
    puts "*" * 25
    puts "#{@text}"
    puts  "-" * 25
  end
end

class Post
  
  def initialize(title, text)
    @title = title
    @text = text
    @post = post
  end
  
  def post  
    puts "#{@title}"
    puts "*" * 25
    puts "#{@text}"
    puts  "-" * 25
  end
  
end

post1 = Post.new("The Grass is always Greener", "Some interesting facts...")
post2 = Post.new("One too Many", "Ever since I heard...")
post3 = Post.new("One time at Band Camp", "This might be true...")

blog = Blog.new
blog.push post1
blog.push post2
blog.push post3

blog.publish_front_page
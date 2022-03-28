class MyPage
    attr_accessor :code, :headers, :body
    def initialize
      @code = 200
      @body = 'TEST'
      @headers = { 'Content-Type' => 'text/plain', 'X-Ruby-Version' => RUBY_VERSION }
    end
  
    def generate_page
      [@code, @headers, @body]
    end
end

obj = MyPage.new
p obj.generate_page
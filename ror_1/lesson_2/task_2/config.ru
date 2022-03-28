require 'rack'

class MyPage
  attr_accessor :code, :headers, :body
  def initialize
    @code = 200
    @body = ['TEST PAGE']
    @headers = { 'Content-Type' => 'text/plain' }
  end

  def generate_page
    [@code, @headers, @body]
  end
end

class App
  def self.call(env)
    obj = MyPage.new
    obj.headers['X-Ruby-Version'] = RUBY_VERSION
    obj.body = ['TASK #2']
    obj.generate_page
  end
end

run App

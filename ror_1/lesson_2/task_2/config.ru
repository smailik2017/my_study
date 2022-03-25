require 'rake'

class App
  def self.call(env)
    headers = { 'Content-Type' => 'text/plain' }
    headers['X-Ruby-Version'] = RUBY_VERSION
    code = 200
    body = ['TASK #2']

    [code, headers, body]
  end
end

run App

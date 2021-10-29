module Site
  VERSION = '1.1.0'
  
  define_singleton_method ('greeting') do
    "Hello !!!!"
  end
  
  class Settings
    def greeting
      "Hello world!"
    end
  end
end


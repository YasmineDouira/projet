module YourApp
    class Application < Rails::Application
      # ...
      
      # Rails 5
  
      config.middleware.insert_before 0, Rack::Cors do
        allow do
          origins '*'
          resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options]
        end
      end
    end
end



class HelloRack
  def call(env)
    puts env
    if env["REQUEST_PATH"] == "/"
    response = "Hello, Rack!"
    else
     response = "Path Not Found"
    end
    [200, {"Content-Type" => "text/html"}, [response]]
  end
end
class DefaultResponse
  def call(env)
    status, headers, body = Redirect.app.call(env)
    if status == 404
      begin
        body_not_found = File.read('public/404.html')
      rescue Errno::ENOENT
        body_not_found = "not found"
      end
      
      return [404, headers, body_not_found]
    else
      return [status, headers, body]
    end
  end
end
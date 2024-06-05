ngx.say("Hello from Nginx Lua!")
ngx.req.read_body()
ngx.print(ngx.req.get_body_data())
ngx.log(ngx.INFO, ngx.req.get_body_data())
Important Reference Link

App Uses following

* [http://dotwell.io/taking-advantage-of-bower-in-your-rails-4-app/]
* [https://github.com/plataformatec/devise]
* [https://github.com/doorkeeper-gem/doorkeeper]
* [https://github.com/doorkeeper-gem/doorkeeper/wiki/Testing-your-provider-with-OAuth2-gem]
* [http://codetunes.com/2014/oauth-implicit-grant-with-grape-doorkeeper-and-angularjs/]



How to make oauth related

require 'oauth2'

client_id = 'f50a77a582ffc3dea0592bb08114e146df2b42afd58d8efeb3269b6fc97bf25b'
client_secret = '053aeedfb755844819dd884ba85366c6aa1530f27d7431e45199a729d703051c'
redirect_uri = 'http://localhost:3000/about'
site = 'http://localhost:3000'
client = OAuth2::Client.new(client_id, client_secret, :site => site)
client.auth_code.authorize_url(:redirect_uri => redirect_uri)


code = 'da097587a122a968817bd05d5ddfe4d6cc11f963341c689b4c2861e5c4a9231f'

token = client.auth_code.get_token(code, :redirect_uri => redirect_uri)


From REST Client Browser

/oauth/token

{
    "client_id" : "f50a77a582ffc3dea0592bb08114e146df2b42afd58d8efeb3269b6fc97bf25b", 
    "client_secret" : "053aeedfb755844819dd884ba85366c6aa1530f27d7431e45199a729d703051c", 
    "code" : "42363a627e88858c86d054a71ae435e1ea760f6f072251350536fb18c30e7866", 
    "grant_type" : "authorization_code", 
    "redirect_uri" : "http://localhost:3000/about"
}


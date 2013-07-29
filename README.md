# Galitics
Probably the simplest Google Analytics library you've never heard of

## Why?
Because the other Google Analytics client libraries in Ruby have been a bit neglected lately.

## How?


```ruby
Galitics.api_key = "my-api-key-goes-here" # obtained by OAuth2
Galitics.accounts
# => [#<Galitics::Google::Analytics::Management::Account:0x007fadd235ae08
  @attrs=
   {"id"=>"705044",
    "kind"=>"analytics#account",
    "selfLink"=>
     "https://www.googleapis.com/analytics/v3/management/accounts/705044",
    "name"=>"www.cyclezero.com",
    "created"=>"2006-09-17T08:24:25.000Z",
    "updated"=>"2010-03-02T16:03:36.129Z",
    "childLink"=>
     {"type"=>"analytics#webproperties",
      "href"=>
       "https://www.googleapis.com/analytics/v3/management/accounts/705044/webproperties"}}>,
....
```
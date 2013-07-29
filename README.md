# Galitics
Probably the simplest Google Analytics library you've never heard of.

## Why?
Because the other Google Analytics client libraries in Ruby have been a bit neglected lately. One look at the [state of web analytics gems](https://www.ruby-toolbox.com/categories/Web_Analytics) should be enough proof of their abandonment.

## How?

```ruby
Galitics.api_key = "my-api-key-goes-here" # obtained by OAuth2
accounts = Galitics.accounts
# => 
  [#<Galitics::Google::Analytics::Management::Account:0x007fadd235ae08
    @attrs=
    {"id"=>"1234567",
    "kind"=>"analytics#account",
    "selfLink"=>
     "https://www.googleapis.com/analytics/v3/management/accounts/1234567",
    "name"=>"www.example.com",
    "created"=>"2006-09-17T08:24:25.000Z",
    "updated"=>"2010-03-02T16:03:36.129Z",
    "childLink"=>
     {"type"=>"analytics#webproperties",
      "href"=>
       "https://www.googleapis.com/analytics/v3/management/accounts/1234567/webproperties"}}>,
....

accounts.first.web_properties.first.profiles
# => 
  [#<Galitics::Google::Analytics::Management::Profile:0x007fadd20aa3c0
    @attrs=
     {"id"=>"1234567",
      "kind"=>"analytics#profile",
      "selfLink"=>
       "https://www.googleapis.com/analytics/v3/management/accounts/705044/webproperties/UA-705044-1/profiles/1234567",
      "accountId"=>"705044",
      "webPropertyId"=>"UA-705044-1",
      "internalWebPropertyId"=>"987765",
      "name"=>"www.example.com",
      "currency"=>"USD",
      "timezone"=>"America/Los_Angeles",
      "websiteUrl"=>"www.example.com",
      "type"=>"WEB",
      "created"=>"2006-09-17T08:24:25.000Z",
      "updated"=>"2010-03-02T16:03:36.128Z",
      "eCommerceTracking"=>false,
      "parentLink"=>
       {"type"=>"analytics#webproperty",
        "href"=>
         "https://www.googleapis.com/analytics/v3/management/accounts/705044/webproperties/UA-705044-1"},
      "childLink"=>
       {"type"=>"analytics#goals",
        "href"=>
         "https://www.googleapis.com/analytics/v3/management/accounts/705044/webproperties/UA-705044-1/profiles/1234567/goals"}}>]
```

## Should I use Galitics?
Absolutely not. There are no tests, it doesn't do very much, and it was probably a hairbrained idea to begin with. Plus, just take one look at the author's record: it displays a chronic inability to finish anything once started.

## Seriously?
Fine. I'll keep working on this if you provide feedback saying that it's valuable.

### Wait, what about all that junk people put at the bottom of the README that I'm not gonna read?
Fine. There'd be a LICENSE and probably a disclaimer saying you can sue me if this starts a zombie apocalypse by mistake, and a list of contributors (of which there are none) followed by a tiny description of their meaningless contributions (that part is apt), and maybe a responsible list of alternatives. But ain't nobody got time for that.
Authentication
==============

## What is authentication
Authentication is the act of confirming that somebody is geniune or real. In our case Authentication means validating that a person is who they say they are by allowing them to tell us a secret that only the two of us know. This differs from Authorization. Authorization is the act of allowing or dissallowing actions for a user.

## How do we use it in rails?

Devise is the answer. Always use devise. Many people try to roll their own auth, but unless you have strong crypto experience and a deep understanding of common attacks, I would not advise this. While devise is the easy answer there are some thigns devise can't do. There are also times when you want to use someone else for your auth.

[from scrath](http://railscasts.com/episodes/250-authentication-from-scratch)

[devise rails cast](http://railscasts.com/episodes/209-devise-revised)

[devise git](https://github.com/plataformatec/devise)

[secure an api](http://railscasts.com/episodes/352-securing-an-api)

___auth through someone else___

[oauth](http://railscasts.com/episodes/353-oauth-with-doorkeeper)

[facebook](http://railscasts.com/episodes/360-facebook-authentication?view=asciicast)

### Testing

___stubbing out authenticate_user___

https://github.com/plataformatec/devise/wiki/How-To:-Stub-authentication-in-controller-specs

___using rspec sign_in and factory girl___

https://github.com/plataformatec/devise/wiki/How-To:-Test-controllers-with-Rails-3-and-4-(and-RSpec)

## Why is it hard
People are evil and tricky.

[sql injection](http://www.codebashing.com/sql_demo)

[timing attacks](http://www.bbc.co.uk/programmes/b02ykcwh#auto)

[store hashed/encrypted passwords only](http://stackoverflow.com/questions/1607075/storing-encrypted-passwords)
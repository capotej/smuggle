# Smuggle


## Rationale

Heroku's taps gem is a great way to move your production data to/from your machine, unforuntely it takes an "all or nothing" approach. Smuggle is an attempt at object-level taps.


## Installation

gem install smuggle

## Usage

rails c production

Smuggle.out(@obj, "password") => http://gist.github.com/a9s00012d01j20d7as3

-----

rails c (local)

@obj = Smuggle.in("http://gist.github.com/a9s00012d01j20d7as3", "password")

@obj should be able to call all associations BELOW the obj (this allows for scoped smuggling)


## How it works

### Out

1) Smuggle.out(@obj, "password") calls @obj.class.reflect_on_all_associations to figure out descendent association information

2) Walk down all associations and marshal each object into an array

3) Marshal the entire array itself and encrypt with AES256 using "password"

4) Post encrypted string to a private gist, and return the url


### In

1) Smuggle.in("http://gist.github.com/1298da0983as3", "password") gets the encrypted string from github

2) Decrypt ciphertext with "password"

3) Unmarshal the array

4) Walk through the array and create the rows contained and return the parent object




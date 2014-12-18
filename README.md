# HelloPhoenix

To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.


## Page controller

* To test for redirect:

```
http://localhost:4000?redirect=true
```

* To test for rendering different format:

```
http://localhost:4000?format=text&message=CrazyTown

# renders html by default without format:

http://localhost:4000
```

## Templates

* Passing data into templates is via the assigns map hence keys need to be preceded
  with '@'



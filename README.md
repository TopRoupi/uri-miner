# URI_MINER
![Imgur](https://i.imgur.com/zqNr116.gif[/img])

# Test

```bash
irb -Ilib -ruri_miner
```

# Usage

```ruby
UriMiner.config(name: 'name',
                password: '123456',
                email: 'email@bol.com')

UriMiner.login

UriMiner.submit(code: 'print("hello")',
                id: 1001,
                lang: 5) # python lang id
```
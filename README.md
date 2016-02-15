# Contact API Server in Golang

Copyright (c) 2016 aerth

## Installation / Updating

```
go get -v -u github.com/aerth/casgo

```
## Usage

```shell
export MANDRILL_KEY=123456789
export CASGO_DESTINATION=myemail@gmail.com
casgo -debug

```

or

```shell
export MANDRILL_KEY=123456789
export CASGO_API_KEY=contact # for easy /contact/form
export CASGO_DESTINATION=myemail@gmail.com
nohup casgo -fastcgi -insecure -port 6060 &
< press Ctrl+C >
tail -f debug.log

```
or while testing

```
MANDRILL_KEY=134 CASGO_DESTINATION=1345 CASGO_API_KEY=contact casgo -debug -insecure

```


```
Usage of casgo:
  -bind string
    	default: 127.0.0.1 (default "127.0.0.1")
  -debug
    	be verbose, dont switch to logfile
  -fastcgi
    	use fastcgi
  -insecure
    	accept insecure cookie transfer
  -mailbox
    	save messages to an local mbox file
  -port string
    	HTTP Port to listen on (default "8080")

```



casgo looks for this template in ./templates/form.html

```
{{define "Contact"}}
<!DOCTYPE html>
<html>
<body>
<form id="contact-form" action="/{{.Key}}/send" method="POST">
    <input type="text" name="email" placeholder="email" required/><br/>
    <input type="text" name="subject" placeholder="subject"/><br/>
    <input type="text" name="message" placeholder="message" required/><br/>
    {{ .csrfField }}
    <input id="contact-submit" type="submit" value="Say hello!" />
</form>
</body>
</html>
{{end}}




```


Sample Nginx Config

```nginx
server {
        server_name default_address;
        listen 80;

        location / {

        proxy_pass http://127.0.0.1:6098; # Change to your static site's port

        }
        location /contact/form/send {
        proxy_pass http://127.0.0.1:6099; # Change using "casgo -port XXX"
        }
}

```



Repeat for each virtual host. nginx server block coming soon.


# Future

* Option to use different mail handler (not only mandrill)

* .config File

* templates/ folder

* Pull requests from strangers are cool!



# Historical Information

* Casgo is short for "Contact API server in Golang"
* Casgo is not to be confused with Costco, the warehouse-style superstore.
* It began as a fork of https://github.com/munrocape/staticcontact

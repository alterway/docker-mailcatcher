# Docker Mailcatcher

## Presentation

MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface. 

See [http://mailcatcher.me/](http://mailcatcher.me/)

## Usage

```
docker run --rm -p 1080:1080 -p 25 alterway/mailcatcher
```

Connect to interface : `http://<ip_or_hostname>:1080`


## Contributors

- Nicolas Berthe ([4devnull](https://github.com/herveleclerc))
- Stéphane Pecourt ([specourt](https://github.com/specourt))


## License

View [LICENSE](https://github.com/alterway/docker-php/blob/master/LICENSE) for the software contained in this image.

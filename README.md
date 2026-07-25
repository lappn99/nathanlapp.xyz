# Source for my website [nathanlapp.xyz](https://nathanlapp.xyz)

After the webpages are built and archived, they will be packaged as a release. Then on my server I can just `wget` or `curl` them and install it, all automatically! :D

If for whatever reason you want to build the site yourself, just do:\
`make build`\
The files will be put into `public_html/`

For linux users running `make open` will build and then open it using `xdg-open`

`pandoc` is needed to build

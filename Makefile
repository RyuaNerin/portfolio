all:
	@pandoc readme.md -f markdown -t html -o readme.htm -c github-pandoc.css --to=html5
	@cat tmpl.header.htm  > index.htm
	@cat readme.htm      >> index.htm
	@cat tmpl.footer.htm >> index.htm
	@sed -i '/\/img\/profile\.png/d' index.htm
	@sed -i 's/<a /<a target="_blank" /' index.htm


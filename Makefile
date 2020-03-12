all:
	@pandoc --metadata title="..." --template=template.htm --table-of-contents readme.md -o readme.htm

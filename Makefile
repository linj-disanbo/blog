default: build

dep:
	rm -rf blog
	hugo new site blog
	git clone --depth=1 https://github.com/vaga/hugo-theme-m10c.git blog/themes/m10c
	git clone --depth=1 https://github.com/linj-disanbo/linj-disanbo.github.io.git blog/public


build:
	rm -rf blog/config.toml blog/content/
	cp -rf config.toml blog/config.toml
	cp -rf content/ blog/content/
	cp -rf theme-update/me.jpg blog/themes/m10c/static/
	cp -rf theme-update/single.html blog/themes/m10c/layouts/_default/single.html
	cd blog; \
		hugo --theme=m10c --baseUrl="https://linj-disanbo.github.io" --buildDrafts; \
	cd ..


upload:
	cd blog/public; \
	git add .; \
	git commit -m "Auto Update: `date +'%Y-%m-%d %H:%M:%S'`"; \
	git push

	




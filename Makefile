
# Makefile pour automatiser le setup de LaMarmite

install:
	npm install

dev:
	npm run dev

build:
	npm run build

start:
	npm start

export-csv:
	echo "L'export CSV est géré depuis l'interface admin de l'application."

lint:
	npx next lint

deploy:
	vercel --prod

setup-env:
	cp .env.local.example .env.local
	@echo "⚠️  Pensez à remplir .env.local avec vos clés Supabase !"

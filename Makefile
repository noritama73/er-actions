init:
	go install github.com/k1LoW/tbls@main

setup_db:
	docker compose up -d

schema: __require_tbls__
	tbls doc --rm-dist

__require_tbls__:
	@(type tbls > /dev/null 2>&1) || (echo "[Error] tbls not installed." 1>&2 && exit 1)

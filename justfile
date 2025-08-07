# help
help:
 @just -l

# Run pre-commit checks
all-checks:
 pre-commit run --all-files

# Run pre-commit spelling check
spell:
 pre-commit run codespell --all-files

# Run pre-commit markdown lint
markdown:
 pre-commit run markdownlint --all-files

# inspect dependencies
inspect-deps:
 @curl https://carpentries.r-universe.dev/stats/sysdeps 2> /dev/null | jq -r '.headers[0] | select(. != null)'

# install dependenciate
deps:
 @sudo apt-get install -y \
  $(curl https://carpentries.r-universe.dev/stats/sysdeps 2> /dev/null | jq -r '.headers[0] | select(. != null)') 2> /dev/null \
  || echo "Not on Ubuntu"

# run workbench
workbench:
 R -e 'sandpaper::serve(quiet = FALSE, port = "3435")'

# kill port
kill:
 fuser -k 3435/tcp

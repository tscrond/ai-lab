#!/bin/bash

help() { ## Show help
  echo "Usage: $0 <command>"
  grep -E '^[a-zA-Z0-9_\-]+ *\(\) *{ *##' "$0" \
    | sed 's/() *{ *## */ - /g' \
    | awk '{printf "\t%-30s %s\n", $1, substr($0, index($0, $3))}'
}

restart() { ## Restarts chosen compose app
  docker compose restart ${1:-"auto"}
}

download() { ## Downloads stable diffusion models
  docker compose run --build download 
}

run() { ## Run whole stack
  docker compose --profile ${1:-"auto"} up -d --build --remove-orphans
}

if [ $# -eq 0 ]; then
  help
  exit 1
else
  "$@"
fi

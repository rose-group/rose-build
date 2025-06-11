#/bin/bash

curl   -H "Accept: application/vnd.github.v3+json"   https://api.github.com/repos/rosestack/rose-build/releases| jq -r '.[] | (.tag_name + "," + (.assets[]|(.name+","+(.download_count|tostring))))' | grep -v \.asc | sort

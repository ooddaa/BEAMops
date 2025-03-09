#!/usr/bin/env bash

plugins=(
"github-cli"
"packer"
"terraform"
"awscli"
"gcloud"
"elixir"
"erlang"
"postgres"
"jq"
"age"
"sops"
)

for plugin in "${plugins[@]}"; do 
  asdf plugin-add "$plugin" || true 
done

echo "Installation complete."
echo "Restart your terminal."

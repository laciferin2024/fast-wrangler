set shell := ["sh", "-c"]
set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
#set allow-duplicate-recipe
#set positional-arguments
#set dotenv-load
set dotenv-filename := ".env"
# set dotenv-filename := ".env.intel"
set export

setup:
  npm i -g wrangler

dev:
  wrangler dev

w *ARGS:
 wrangler {{ARGS}}


deps:
  uv pip freeze > requirements.txt
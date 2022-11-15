CC ?= "g++ -W"         ## compiler to use
LOGFILE ?= "log.txt"   ## path to log file
VAR1 ?= "Hello, World" ## Hello variable
VAR2 ?= "Hello Again"  ## Greeting 


## ┌───────────────────────────────────────────────────────────────────┐
## │                       Example Makefile                            │
## │ ───────────────────────────────────────────────────────────────── │
## │ Example commands: "make build" or "make install"                  │
## └───────────────────────────────────────────────────────────────────┘


help: ## show this help
# regex for general help
	@sed -ne "s/^##\(.*\)/\1/p" $(MAKEFILE_LIST)
# regex for makefile commands (targets)
	@printf "────────────────────────`tput bold``tput setaf 2` Make Commands `tput sgr0`────────────────────────────────\n"
	@sed -ne "/@sed/!s/\(^[^#?=]*:\).*##\(.*\)/`tput setaf 2``tput bold`\1`tput sgr0`\2/p" $(MAKEFILE_LIST)
# regex for makefile variables
	@printf "────────────────────────`tput bold``tput setaf 4` Make Variables `tput sgr0`───────────────────────────────\n"
	@sed -ne "/@sed/!s/\(.*\)?=\(.*\)##\(.*\)/`tput setaf 4``tput bold`\1:`tput setaf 5`\2`tput sgr0`\3/p" $(MAKEFILE_LIST)

# make help the default
.DEFAULT_GOAL := help

build: ## Builds the program
	@echo "building"

install: ## Installs the program
	@echo "installing"

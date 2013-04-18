# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

ECHOCMD:=/bin/echo -e
ERB:=erb -E UTF-8:UTF-8 -r yaml
PANDOC:=pandoc -S -V papersize:a4paper -V geometry:margin=0.5in --latex-engine=xelatex

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=contract

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
# 

default: main

main:
	@$(ERB) $(TARGET).md.erb | $(PANDOC) -o $(TARGET).pdf

.PHONY: clean

clean:
	@rm -f $(TARGET).pdf

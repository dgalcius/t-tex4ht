#!/usr/bin/env texlua

-- Build script for text4ht tests

module = "tex4ht-tests"

unpackfiles = {}
unpackopts = "-interaction=batchmode"

checkengines = {"htlatex"}
checkformat = ""
checkopts = ""
stdengine = "htlatex"
typesetexe = "make4ht"
typesetopts = " -um draft "

logext = ".html" -- check against html file instead of log

-- hide = false

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))


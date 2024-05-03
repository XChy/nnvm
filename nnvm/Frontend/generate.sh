#!/bin/bash
g4_dir=$(dirname $0)
java -jar /usr/local/lib/antlr-4.9.1-complete.jar -Dlanguage=Cpp $g4_dir/SysYParser.g4 $g4_dir/SysYLexer.g4

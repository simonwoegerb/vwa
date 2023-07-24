find . -name \*.tex | awk '{print "echo "$0" && detex "$0" | aspell -a list"}' | bash | grep -Ev '(^$|^\*)' > echo

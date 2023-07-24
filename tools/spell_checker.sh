for X in *.tex; do
aspell list -b -d de,en --sug-mode bad-spellers -c $X > suggestions.log
done



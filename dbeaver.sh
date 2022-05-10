mkdir dbeaver
cp vocab*/*.csv dbeaver/
for file in dbeaver/*.csv
do
	# strip all non-valid latin1 chars
	iconv -f UTF-8 -t LATIN1 -c "$file" | sponge "$file"
	# dbeaver expects '\' as an escape character, so escape all instances in vocab files
	sed -i 's/\\/\\\\/g' "$file"
	# dbeaver expects '"' as a quote character, so escape all instances in vocab files
	sed -i 's/"/\\"/g' "$file"
done

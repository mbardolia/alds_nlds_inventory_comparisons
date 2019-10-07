NOTE! I use a mac, and ggrep, your mileage may vary
	let me know if things don't work for you

bash
wget
ggrep
jq
sqlite3

go to site >> mlb

for each team you want to look at upcoming events for:
	open page
	open javascript console
	run commands in console.js
		i specifically looked for October events, but you look for whatever you want to look for
	copy event id list to extract_ids.txt
		you can put any text you want in the file, see below
	run extract.sh
		reads event ids from the file, wget's the json for the event, stores tp_data/

	go to compare/ and read that readme

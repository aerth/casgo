#!/bin/sh
# double line separated fortunes. some get cut off but oh well.
echo "Populating fortunes.txt, press Ctrl C when you think its big enough."
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;
fortune >> fortunes.txt && echo "" >> fortunes.txt;

for i in $(cat fortunes.txt); do 
fortune >> fortunes.txt && echo "" >> fortunes.txt;
done
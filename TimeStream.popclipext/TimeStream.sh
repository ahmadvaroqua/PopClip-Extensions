# echo "$POPCLIP_OPTION_USERNAME" | say
# ts new "$POPCLIP_TEXT"
curl -d "password=$POPCLIP_OPTION_PASSWORD" -d "task=$POPCLIP_TEXT" -d "source=bash" https://timestreamapp.com/$POPCLIP_OPTION_USERNAME.txt

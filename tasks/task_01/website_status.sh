#!/bin/bash

# List of websites for checking
websites=("https://google.com" "https://facebook.com" "https://twitter.com" "https://test.com")

# Log file name
logfile="website_status.log"

# Checking the availability of each website
for site in "${websites[@]}"
do
    if curl -s -L --head --request GET -w "%{http_code}\n" "$site" | grep "200" > /dev/nul
    then
        echo "[$(date '+%Y-%m-%d %H:%M:%S.%3N')] <$site> is UP" >> "$logfile"
    else
        echo "[$(date '+%Y-%m-%d %H:%M:%S.%3N')] <$site> is DOWN" >> "$logfile"
    fi
done

# Print final results
echo "Result written to $logfile"

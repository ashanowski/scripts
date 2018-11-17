#!/bin/sh
UPDATES="$(xbps-install -Mun | grep -v hold | wc -l)"

if [ "$UPDATES" = 0 ]; then
	echo "Void fully updated"
else
	echo "Void updates: $UPDATES"
fi

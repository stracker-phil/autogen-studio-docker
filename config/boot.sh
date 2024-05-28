#!/usr/bin/env sh

pip install --upgrade pip
pip install -U -r requirements.txt

# Small hack to mirror the sqlite-DB to the host machine:
# Using `sed`, we modify the config details in the app's entry script.
# From using a relative DB path, we define the Db to live in a mounted dir.
APP_ENTRY_PATH="/usr/local/lib/python3.11/site-packages/autogenstudio/web/app.py"
SEARCH_PATTERN="db_path ="
NEW_LINE='db_path = "/usr/local/autogen-data/database.sqlite"'

sed -i "s|^.*$SEARCH_PATTERN.*$|$NEW_LINE|" "$APP_ENTRY_PATH"
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/XylemBotz/Xylem-Auto-Filter /Xylem-Auto-Filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Xylem-Auto-Filter
fi
cd /Xylem-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

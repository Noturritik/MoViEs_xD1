if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Noturritik/MoViEs_xD1 /MoViEs_xD1 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MoViEs_xD1
fi
cd /MoViEs_xD1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

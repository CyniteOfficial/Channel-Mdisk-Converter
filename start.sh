if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Cyniteofficial/Channel-Mdisk-Converter.git /Channel-Mdisk-Converter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $SOURCE_CODE /Channel-Mdisk-Converter
fi
cd /Channel-Mdisk-Converter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

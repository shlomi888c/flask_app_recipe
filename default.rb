execute 'sudo git clone https://shlomi888c@github.com/shlomi888c/projectschool.git' do
   cwd 'home'
end
execute  'sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
execute  'sudo apt install -y ./google-chrome-stable_current_amd64.deb'
execute  'version=$(curl -s "https://chromedriver.storage.googleapis.com/LATEST_RELEASE")'
execute  'wget -qP /tmp/ "https://chromedriver.storage.googleapis.com/${version}/chromedriver_linux64.zip"'
execute  'sudo apt-get install unzip -y'
execute  'sudo unzip /tmp/chromedriver_linux64.zip'
execute  'sudo chmod +x chromedriver'
execute  'sudo mv chromedriver /usr/local/bin/chromedriver'
execute  'sudo apt install -y python3-pip'
# Install app dependencies
execute 'sudo pip3 install -r /home/projectschool/requirements.txt'

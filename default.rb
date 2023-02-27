execute 'sudo git clone https://shlomi888c@github.com/shlomi888c/projectschool.git' do
   cwd 'home'
end
execute  'sudo apt install -y ./google-chrome-stable_current_amd64.deb'
execute  'sudo git clone https://shlomi888c@github.com/shlomi888c/chromedriver.git'
execute  'sudo chmod +x /chromedriver/chromedriver'
execute  'sudo mv /chromedriver/chromedriver /usr/local/bin/chromedriver'
execute  'sudo apt install -y python3-pip'
# Install app dependencies
execute 'sudo pip3 install -r /home/projectschool/requirements.txt'

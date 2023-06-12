execute 'sudo git clone https://shlomi888c@github.com/shlomi888c/projectschool.git' do
   cwd 'home'
end
execute  'sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
execute  'sudo apt install -y ./google-chrome-stable_current_amd64.deb'
package 'unzip'
version = `curl -s "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"`
remote_file '/tmp/chromedriver_linux64.zip' do
  source "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_linux64.zip"
  mode '0644'
  action :create
end
execute 'unzip_chromedriver' do
  command 'unzip -o /tmp/chromedriver_linux64.zip -d /usr/bin'
  action :run
end
file '/usr/bin/chromedriver' do
  mode '0755'
  action :create
end
execute  'sudo apt install -y python3-pip'
# Install app dependencies
execute 'sudo pip3 install -r /home/projectschool/requirements.txt'



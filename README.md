# Daha önce rails kurulu değilse
* ruby
* nodejs
* npm
* yarn

kurulu olması gerekiyor. Yarn'ı direkt değil npm aracılığı ile yüklemek gerekiyor, yoksa webpacker sorun çıkarıyor. 

# preinstall
```
sudo apt install ruby ruby-dev nodejs npm
sudo apt install libsqlite3-dev zlib1g-dev
sudo npm install yarn -g
wget https://deb.nodesource.com/setup_12.x
vim.tiny setup_12.x [DISTRO="buster" satırı]
sudo bash setup_12.x 
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
yarn install --check-files
```


```
 sudo gem install rails
```
# Run
 ```
 bundle install
 rails db:migrate RAILS_ENV=development
 rails s
 
 ```

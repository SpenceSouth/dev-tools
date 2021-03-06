read -p "Please enter in your full name: " name
echo ${name}
read -p "Please enter in your email address registered with github: " email
echo ${email}
git config --global user.name "${name}"
git config --global user.email "${email}"
sudo apt-get install xclip -y
echo "After the prompt just press enter"
ssh-keygen -t rsa -b 4096 -C "${email}"
eval "$(ssh-agent -s)"
ssh-add
chmod 700 ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Your ssh key is now copied onto your clipboard.  Please go to github.com > settings > ssh keys and copy and paste this key into your account. You can check your status after adding the key to your account by running 'ssh -T git@github.com' in the command prompt."


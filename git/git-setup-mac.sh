read -p "Please enter in your full name: " name
echo ${name}
read -p "Please enter in your email address registered with github: " email
echo ${email}
git config --global user.name "${name}"
git config --global user.email "${email}"
echo "After the prompt just press enter"
ssh-keygen -t rsa -b 4096 -C "${email}"
ssh-agent -s
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "Your ssh key is now copied onto your clipboard.  Please go to github.com > settings > ssh keys and copy and paste this key into your account."

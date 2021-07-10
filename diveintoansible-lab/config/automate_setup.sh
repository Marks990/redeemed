
sudo apt update;

sudo apt install sshpass;

mkdir ~/.ssh;

cd ~/.ssh;

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null;

echo password > password.txt;

for user in ansible root; do for os in ubuntu centos; do for instance in 1 2 3; do sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}; done; done; done;

cd ~;

git clone https://github.com/spurin/diveintoansible.git;

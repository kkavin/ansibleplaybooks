#%/bin/sh
#Hostname
hostname=$(cat /etc/hostname)
#Display Hostname
echo "$hostname"
#Ask for Hostname
echo "Enter new hostname: "
read newhost
#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostname/$newhost/g" /etc/hosts
sudo sed -i "s/$hostname/$newhostame/g" /etc/hostname
#Display hostname
echo "your hostname is $newhost"
#Press a key to reboot
read -s -n 1 -p "press any key to reboot"
sudo reboot


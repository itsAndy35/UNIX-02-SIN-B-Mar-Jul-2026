sudo apt update #update local package index from configured repositories on linux
sudo apt upgrade #updates all software packages installed on debian based linux system to their lastest versions
sudo apt install parted #comannd line designed to create, delete, resize, move and copy disk partitions
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" #command to get a detailed view of disk partitions
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #This command generates a condition to confirm in which mode my system starts.
echo "esto es un archivo" > archivo.txt #Create a file with the specific text
stat archivo.txt #display detailed information and metadata of a file or file system
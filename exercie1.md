[__Toutes les commandes et actions ont été faite avec le compte "root"__]
# 1.1 Préparation du disque

- Ont utilise la commande "cfdisk /dev/sdb" pour faire nos deux partitions de 6G pour DATA et 4G pour le SWAP

(Screen cfdisk)[]

- Ont formate la 1er partition **DATA** en **ext4** avec la commande :
>	mkfs.ext4 -L DATA /dev/sdb1

- Ont formate la 2eme partition en **SWAP** avec la commande : 
>	mkswap /dev/sdb2

- Puis ont active la partition swap avec :
>	swapon /dev/sdb2

- Ont déactive la partition swap du 1er disque avec la commande :
>	swapoff /dev/sda5

- Ont peux vérifier les partitions de nos disque avec la commande :
>	fdisk -l

(Screen fdisk)[]

# 1.2 Montage

- Ont crée le dossier de montage dans /mnt :
>	mkdir /mnt/data

- Ont monte la partition sdb1 sur /mnt/data :
>	mount -t ext4 /dev/sdb1 /mnt/data

(Screen lsblk2)

- Pour montée automatiquement la partition sdb1 au démarrage : ont modifie le fichier /etc/fstab en utilisent l'UUID de la partition trouver avec la commande "blkid"

(Screen blkid)[]
(Screen fstab)[]




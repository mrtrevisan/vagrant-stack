### Copia os arquivos key e key.pub para a VM 
echo "Ajustando chave ssh do host para acesso as vms..."
KEY_PATH='/vagrant/ssh_keys'
mkdir -p /root/.ssh
cp $KEY_PATH/key /root/.ssh/id_rsa
cp $KEY_PATH/key.pub /root/.ssh/id_rsa.pub
cp $KEY_PATH/key.pub /root/.ssh/authorized_keys
chmod 400 /root/.ssh/id_rsa*
cat /root/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys


### Instalação simplificada do Docker
echo "Instalando Docker..."
curl -fsSL https://get.docker.com | bash
systemctl start docker
systemctl enable docker
usermod -aG docker vagrant
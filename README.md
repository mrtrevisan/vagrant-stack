# vagrant-stack

Copia os arquivos <i><b>id_rsa</b></i> e <i><b>id_rsa.pub</b></i> para o diretório <i><b>/vagrant</i></b> 
```
mkdir ssh_keys && cd ssh_keys
cp ~/.ssh/id_rsa ./key
cp ~/.ssh/id_rsa.pub ./key.pub
```

Essas chaves serão copiadas para dentro das VMs para acesso sem senha
```
ssh vagrant@<ip da vm>
```


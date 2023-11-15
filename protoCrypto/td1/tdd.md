# 1
## 1.1
    md5 : `md5sum Downloads/annexe.txt` -> bc7ffb91df2177eabd4c781143af470b
    sha1 : `sha1sum Downloads/annexe.txt` -> fd92ded1a403fec3cf94beb534a32f30c3d535ba
    sha256 : `sha256sum Downloads/annexe.txt` -> 7b95e677872a1f8ba2c6b2ecb1e260ebfdcf16cb0b5bc76ecf9904d65a357f9

## 1.2
- MD5: 128 bits
- SHA-1: 160 bits
- SHA-256: 256 bits

## 1.3
`md5sum Downloads/annexe.txt > Cours/3A/protoCrypto/td1/digest`

## 1.4
```shell
~> md5sum -c Cours/3A/protoCrypto/td1/digest
Downloads/annexe.txt: OK
```

## 1.5
```shell
~> nvim Downloads/annexe.txt && md5sum Downloads/annexe.txt 
#added a space at the end of the file
b0ab088403adb2191286242c001f10bd  Downloads/annexe.txt
```

## 1.6
On voit qu'une legere difference entraine un hash tres different.

# 2
## 2.1
```shell
~> gpg --gen-key 
~> gpg --list-keys
pub   rsa3072 2023-11-15 [SC] [expires: 2025-11-14]
      962AC8C9FABC31FA07B72970B44B92170F4DC6E7
uid           [ultimate] maxime <max.soulie01@laposte.net>
sub   rsa3072 2023-11-15 [E] [expires: 2025-11-14]
```

## 2.2
```shell


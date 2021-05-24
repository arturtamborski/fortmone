fortmone
--------


# how to run it

1. Import (or create and install) windows XP VM

a) import
https://www.maketecheasier.com/import-export-ova-files-in-virtualbox/


b) install

install winxp in vbox, then optionally:

- shorten bootloader screen


```
bootcfg /timeout 1
```


2. Chmod fortmone script


```
chmod +x ./fortmone
```


3. Run the project


```
./fortmone start

```

```
# more info:
./fortmone --help
````


4. Connect :)


```
./fortmone connect
```


5. Do whatever you wanted to do there:


```
echo :)
```

	


TODO: import can be automated with this command:
```
vboxmanage import ./<image>.ova --vsys 0 --memory 1024 --cpus 1 --eula accept
```

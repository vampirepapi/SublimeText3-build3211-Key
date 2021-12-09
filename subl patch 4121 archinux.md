### How to Crack Sublime Text Build 4121

#### Linux ↓

Desciption                       | Offset     | Original             | Patched
-------------------------------- | :--------: | -------------------- | --
Initial License Check            | 0x00383E52 | 55 41 57 41          | 48 31 C0 C3
Persistent License Check 1       | 0x00379F45 | E8 78 C9 11 00       | 90 90 90 90 90
Persistent License Check 2       | 0x00379F60 | E8 5D C9 11 00       | 90 90 90 90 90
Disable Server Validation Thread | 0x00385915 | 55 41 56 53 41 89 F6 | 48 31 C0 48 FF C0 C3
Disable License Notify Thread    | 0x00383B16 | 41                   | C3
Disable Crash Reporter           | 0x0036D820 | 55                   | C3

##### Bash Script

```bash
# for Linux [4123]
cd /opt/sublime_text || exit
md5sum -c <<<"9BE86D40D86CC6A645FE99DED0413E58  sublime_text" || exit
printf '\x48\x31\xC0\xC3'                 | dd of=sublime_text bs=1 seek=$((0x00383E52)) conv=notrunc
printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x00379F45)) conv=notrunc
printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x00379F60)) conv=notrunc
printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_text bs=1 seek=$((0x00385915)) conv=notrunc
printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x00383B16)) conv=notrunc
printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x0036D820)) conv=notrunc
```


```
# for Linux [4121]

    cd /opt/sublime_text || exit
    md5sum -c <<<"D3343AD6D13F816F1F9414223B8BE091  sublime_text" || exit
    printf '\x48\x31\xC0\xC3'                 | dd of=sublime_text bs=1 seek=$((0x00375A48)) conv=notrunc
    printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0036BC85)) conv=notrunc
    printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0036BC9B)) conv=notrunc
    printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_text bs=1 seek=$((0x003774CB)) conv=notrunc
    printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x0037570C)) conv=notrunc
    printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x0035F930)) conv=notrunc
```

![enter image description here](https://i.ibb.co/mXCxpdW/Screenshot-from-2021-12-09-23-47-23.png)

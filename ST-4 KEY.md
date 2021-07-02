## SublimeText

     

> `Tested in Build 4107 x64`

 1. Run host.bat file as admin.
 2. add
 3. Download HxD from: [https://mh-nexus.de/en/](https://mh-nexus.de/en/) or you can use https://hexed.it/
 4. Open "sublime_text.exe" in HxD, go to "Find/Replace" (Ctrl+R).
 5. Go to tab "Hex-values" and:  
Search for: 4157415656575553B828210000  
Replace with: 33C0FEC0C3575553B828210000
6. Search for: 6C6963656E73652E7375626C696D6568712E636F6D  
Replace with: 7375626C696D6568712E6C6F63616C686F73740000
7. Click to save (Ctrl+S).  
8. Now, just register your Sublime Text with this code:
9. You don't need to do the host patch, if you're replacing the license check in the exe (the 2nd search/replace)
10. 



    ----- BEGIN LICENSE -----  
    You  
    Unlimited User License  
    EA7E-81044230  
    0C0CD4A8 CAA317D9 CCABD1AC 434C984C  
    7E4A0B13 77893C3E DD0A5BA1 B2EB721C  
    4BAAB4C4 9B96437D 14EB743E 7DB55D9C  
    7CA26EE2 67C3B4EC 29B2C65A 88D90C59  
    CB6CCBA5 7DE6177B C02C2826 8C9A21B0  
    6AB1A5B6 20B09EA2 01C979BD 29670B19  
    92DC6D90 6E365849 4AB84739 5B4C3EA1  
    048CC1D0 9748ED54 CAC9D585 90CAD815  
    ------ END LICENSE ------


### Note:-
I've also whipped up a quick python script for it, if anyone wants, you'll obviously need python installed.. save as whatever_name_you_want.py (and put it in same folder as sublime_text.exe) and run it, or run it from command line.,.. python .py



```
with open("sublime_text.exe", "rb") as binaryFile:
    byteData = bytearray(binaryFile.read()) 

# create backup
with open("sublime_text.exe.bak", "wb") as binaryFile:
    binaryFile.write(byteData)

# search for rsa key function
byteData = byteData.replace(b'\x41\x57\x41\x56\x56\x57\x55\x53\xB8\x28\x21\x00\x00', b'\x33\xC0\xFE\xC0\xC3\x57\x55\x53\xB8\x28\x21\x00\x00')
# search for license host check
byteData = byteData.replace(b'\x6C\x69\x63\x65\x6E\x73\x65\x2E\x73\x75\x62\x6C\x69\x6D\x65\x68\x71\x2E\x63\x6F\x6D', b'\x73\x75\x62\x6C\x69\x6D\x65\x68\x71\x2E\x6C\x6F\x63\x61\x6C\x68\x6F\x73\x74\x00\x00')

with open("sublime_text.exe", "wb") as binaryFile:
    binaryFile.write(byteData)
```

YT Video :- https://www.youtube.com/watch?v=pr8GBwPsMHM






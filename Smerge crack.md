# for Linux

    cd /opt/sublime_merge || exit
    md5sum -c <<<"F58AACE8B32B442949BAA9E59E09483E  sublime_merge" || exit
    echo 003CC9BA: 48 31 C0 C3             | xxd -r - sublime_merge
    echo 003CF9DD: 90 90 90 90 90          | xxd -r - sublime_merge
    echo 003CF9F3: 90 90 90 90 90          | xxd -r - sublime_merge
    echo 003CDFA2: 48 31 C0 48 FF C0 C3    | xxd -r - sublime_merge
    echo 003CC6D2: C3                      | xxd -r - sublime_merge
    echo 003CC130: C3                      | xxd -r - sublime_merge

se mp=gcc\ -Wall\ %\ -o\ %:h:h/bin/%:t:r
com! -b Makef !make -C %:h:h
com! -b Run !./%:h:h/bin/%:t:r

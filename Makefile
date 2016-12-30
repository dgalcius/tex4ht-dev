
default:
	make -C tex4ht/trunk/lit batchmode=1 all 1>log1 2>log2
	cat log2
	cat log1 | grep -v "System" 

latex-version:
	latex --version

check:
	kpsewhich hyperref.sty

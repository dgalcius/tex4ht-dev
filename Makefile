svnrepo := ~/local/svn/tex4ht
gitrepo := ~/local/git/tex4ht


default:
	latex --version
#	make -C tex4ht/trunk/lit all
	kpsewhich hyperref.sty

diff-svn:
	diff -r  $(svnrepo) $(gitrepo) 

sync:
#	svn checkout http://svn.gnu.org.ua/sources/tex4ht
	svn checkout svn+ssh://deimi@svn.gnu.org.ua/tex4ht


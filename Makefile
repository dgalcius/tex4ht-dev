svnrepo := ~/local/svn/tex4ht
gitrepo := ~/local/github/tex4ht-dev/tex4ht


default:
	latex --version

diff-svn:
	diff $(svnrepo) $(gitrepo) 

sync:
#	svn checkout http://svn.gnu.org.ua/sources/tex4ht
	svn checkout svn+ssh://deimi@svn.gnu.org.ua/tex4ht


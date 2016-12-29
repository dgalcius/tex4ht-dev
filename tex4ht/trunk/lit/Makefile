# $Id: Makefile 196 2016-10-05 13:12:37Z deimi $
# This file is public domain.  Originally written 2010, Karl Berry.
# 
# todo: look for xx below

SHELL := /bin/sh -e
extra_bin := ./extra-bin
ht_bin := ../bin/ht/unix
PATH := $(shell echo $$PATH)
# setting PATH as TeX Live 2016 (DVD) does not ship with 'xhlatex'
# and look for xmlint/vcss in ./extra-bin
export PATH:=$(ht_bin):$(extra_bin):$(PATH)

wd = work.dir
htmldir = html.dir
xtpipesdir = xtpipes.dir
tex4htdir  = tex4ht.dir

# make sure xtpipesdir exists
foo := $(shell mkdir -p $(xtpipesdir))
foo := $(shell mkdir -p $(xtpipesdir)/xtpipes)
foo := $(shell mkdir -p $(xtpipesdir)/xtpipes/lib)
foo := $(shell mkdir -p $(wd)/xtpipes)
foo := $(shell mkdir -p $(wd)/xtpipes/util)
foo := $(shell mkdir -p ./tex4ht.dir/texmf/tex4ht/bin)
foo := $(shell mkdir -p ./tex4ht.dir/texmf/tex4ht/xtpipes)

tex_opts           = --interaction=errorstopmode -recorder #--file-line-error
tex_opts_batchmode = --interaction=batchmode     -recorder #--file-line-error
tex_1opt = "$(tex_opts)" # must be quoted, passing to shell script

ifdef batchmode
  tex_opts:=$(tex_opts_batchmode)
endif 

HTTEX = ht "tex $(tex_opts)"  # set tex options for plain tex
movetohtmldir := $(extra_bin)/lg2htmldir

include $(wildcard *.d)

default: all

derived =

derived += $(tex4ht-cond4ht_derived)
derived += $(cond4ht_derived)
derived += $(tex4ht-4ht_derived)
derived += $(tex4ht-bibtex2_derived)
#
derived += $(tex4ht-fonts-cjk_derived)
derived += $(tex4ht-fonts-cjk-utf8_derived)
derived += $(tex4ht-fonts-noncjk_derived)
#
derived += $(tex4ht-c_derived)
derived += $(tex4ht-t4ht_derived)
#
derived += $(tex4ht-options_derived)
derived += $(tex4ht-sty_derived)
derived += $(tex4ht-env_derived)
#
derived += $(tex4ht-unicode_derived)
#
derived += $(tex4ht-mkht_derived)
derived += $(mkht-scripts_derived)

derived += $(tex4ht-html4_derived)
derived += $(tex4ht-html32_derived)
derived += $(tex4ht-html0_derived)
derived += $(tex4ht-html5_derived)
#
derived += $(xtpipes_derived)
#
derived += $(tex4ht-docbook_derived)
derived += $(tex4ht-docbook-xtpipes_derived)
#
derived += $(tex4ht-javahelp_derived)
derived += $(tex4ht-javahelp-xtpipes_derived)
derived += $(tex4ht-jsmath_derived)
derived += $(tex4ht-jsml_derived)
derived += $(tex4ht-jsml-xtpipes_derived)

derived += $(tex4ht-mathltx_derived)
derived += $(tex4ht-mathml_derived)
derived += $(tex4ht-mathplayer_derived)
derived += $(tex4ht-moz_derived)
derived += $(tex4ht-ooffice_derived)
derived += $(tex4ht-oo-xtpipes_derived)
derived += $(tex4ht-ooimpress_derived)
derived += $(tex4ht-svg_derived)
derived += $(tex4ht-tei_derived)
derived += $(tex4ht-word_derived)

## htcmd not used
##derived += $(tex4ht_htcmd_derived)
##tex4ht_htcmd_derived = htcmd.c

derived += $(tex4ht-html-speech_derived)
derived += $(tex4ht-html-speech-xtpipes_derived)

derived += $(tex4ht-info_derived)
derived += $(tex4ht-info-html4_derived)
derived += $(tex4ht-info-javahelp_derived)
derived += $(tex4ht-info-mml_derived)
derived += $(tex4ht-info-ooffice_derived)
derived += $(tex4ht-info-svg_derived)


derived += $(tex4ht-xhtml-xtpipes_derived)
derived += $(tex4ht-xhtmml-xtpipes_derived)

derived += $(tex4ht-jar_derived)

derived_4ht := $(filter %.4ht,  $(derived))
derived_tex := $(filter %.tex,  $(derived))
derived_htf := $(filter %.htf,  $(derived))
derived_lua := $(filter %.lua,  $(derived))
derived_c   := $(filter %.c,    $(derived))
derived_java:= $(filter %.java, $(derived))
derived_4xt := $(filter %.4xt %.dtd, $(derived))
derived_unix:= $(filter %.unix, $(derived))
derived_bat := $(filter %.bat, $(derived))
derived_env :=
derived_jar := $(filter %.jar, $(derived))


# 
all: $(derived)
doc: $(derived-doc)

mktex4ht $(cond4ht_derived): cond4ht.4ht $(cond4ht_deps)
	tex $(tex_opts) $<

mktex4ht-doc $(cond4ht_doc): $(cond4ht_deps)
	$(HTTEX) $<

cond4ht $(tex4ht-cond4ht_derived): tex4ht-cond4ht.tex $(tex4ht-cond4ht_deps) 
	tex $(tex_opts) $<

cond4ht-doc $(tex4ht-cond4ht_doc): $(tex4ht-cond4ht_deps)
	$(HTTEX) $<

4ht $(tex4ht-4ht_derived): tex4ht-4ht.tex $(tex4ht-4ht_deps)
	tex $(tex_opts) $<

4ht-doc $(tex4ht-4ht_doc): $(tex4ht-4ht_deps)
	$(HTTEX) $<

bibtex2 $(tex4ht-bibtex2_derived): tex4ht-bibtex2.tex $(tex4ht-bibtex2_deps)
	latex $(tex_opts) $<

bibtex2-doc $(tex4ht-bibtex2_doc): $(tex4ht-bibtex2_deps)
	xhlatex $< "html,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

c $(tex4ht-c_derived): tex4ht-c.tex $(tex4ht-c_deps) 
	tex $(tex_opts) $<

c-doc $(tex4ht-c_doc): $(tex4ht-c_deps)
	$(HTTEX) $<
	$(movetohtmldir) $< $(htmldir)

docbook $(tex4ht-docbook_derived): $(tex4ht-docbook_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

docbook-doc $(tex4ht-docbook_doc): $(tex4ht-docbook_deps)
	xhlatex $< "html,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

docbook-xtpipes $(tex4ht-docbook-xtpipes_derived): $(tex4ht-docbook-xtpipes_deps)
	xhlatex $< "html,3" "" "" $(tex_1opt)

docbook-xtpipes-doc $(tex4ht-docbook-xtpipes_doc): $(tex4ht-docbook-xtpipes_deps)
	xhlatex $< "html,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

env $(tex4ht-env_derived): tex4ht-env.tex $(tex4ht-env_deps)
	latex $(tex_opts) $<

env-doc $(tex4ht-env_doc): $(tex4ht-env_deps)
	htlatex $< "xhtml,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

fonts-cjk $(tex4ht-fonts-cjk_derived): $(tex4ht-fonts-cjk_deps)
	tex $(tex_opts) $<
	tex4ht $<
	t4ht $< 

fonts-cjk-doc $(tex4ht-fonts-cjk_doc): $(tex4ht-fonts-cjk_deps)
	$(HTTEX) $< ""
	$(movetohtmldir) $< $(htmldir)

fonts-cjk-utf8 $(tex4ht-fonts-cjk-utf8_derived): $(tex4ht-fonts-cjk-utf8_deps)
	tex $(tex_opts) $<
	tex4ht $<
	t4ht $< 

fonts-cjk-utf8-doc $(tex4ht-fonts-cjk-utf8_doc): $(tex4ht-fonts-cjk-utf8_deps)
	$(HTTEX) $< ""
	$(movetohtmldir) $< $(htmldir)

fonts-noncjk $(tex4ht-fonts-noncjk_derived): $(tex4ht-fonts-noncjk_deps)
	tex $(tex_opts) $<
	tex4ht $<
	t4ht $< 

fonts-noncjk-doc $(tex4ht-fonts_noncjk_doc): $(tex4ht-fonts-noncjk_deps)
	$(HTTEX) $< ""
	$(movetohtmldir) $< $(htmldir)

#xx not used
# $(tex4ht_htcmd_derived): tex4ht-htcmd.tex $(common)
# 	$(HTTEX) $< ""

html-speech $(tex4ht-html-speech_derived): $(tex4ht-html-speech_deps) 
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html-speech-doc $(tex4ht-html-speech_doc): $(tex4ht-html-speech_deps) 
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

html-speech-xtpipes $(tex4ht-html-speech-xtpipes_derived): $(tex4ht-html-speech-xtpipes_deps)
	htlatex $< "html,next,3" "" "" $(tex_1opt)

html-speech-xtpipes-doc $(tex4ht-html-speech-xtpipes_doc): $(tex4ht-html-speech-xtpipes_deps)
	htlatex $< "html,next,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

html0 $(tex4ht-html0_derived): $(tex4ht-html0_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html0-doc $(tex4ht-html0_doc): $(tex4ht-html0_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

html32 $(tex4ht-html32_derived): $(tex4ht-html32_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html32-doc $(tex4ht-html32_doc): $(tex4ht-html32_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

html4 $(tex4ht-html4_derived): $(tex4ht-html4_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html4-doc $(tex4ht-html4_doc): $(tex4ht-html4_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

html5 $(tex4ht-html5_derived): $(tex4ht-html5_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html5-doc $(tex4ht-html5_doc): $(tex4ht-html5_deps)
	xhlatex $< "xhtml,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

info-html4 $(tex4ht-info-html4_derived): $(tex4ht-info-html4_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-html4-doc $(tex4ht-info-html4_doc): $(tex4ht-info-html4_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

info-javahelp $(tex4ht-info-javahelp_derived): $(tex4ht-info-javahelp_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-javahelp-doc $(tex4ht-info-javahelp_doc): $(tex4ht-info-javahelp_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

info-mml $(tex4ht-info-mml_derived): $(tex4ht-info-mml_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-mml-doc $(tex4ht-info-mml_doc): $(tex4ht-info-mml_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

info-ooffice $(tex4ht-info-ooffice_derived): $(tex4ht-info-ooffice_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-ooffice-doc $(tex4ht-info-ooffice_doc): $(tex4ht-info-ooffice_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

info-svg $(tex4ht-info-svg_derived): $(tex4ht-info-svg_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-svg-doc $(tex4ht-info-svg_doc): $(tex4ht-info-svg_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

info $(tex4ht-info_derived): $(tex4ht-info_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-doc $(tex4ht-info_doc): $(tex4ht-info_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

javahelp $(tex4ht-javahelp_derived): $(tex4ht-javahelp_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

javahelp-doc $(tex4ht-javahelp_doc): $(tex4ht-javahelp_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

javahelp-xtpipes $(tex4ht-javahelp-xtpipes_derived): $(tex4ht-javahelp-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

javahelp-xtpipes-doc $(tex4ht-javahelp-xtpipes_doc): $(tex4ht-javahelp-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

jsmath $(tex4ht-jsmath_derived): $(tex4ht-jsmath_deps) 
	latex $(tex_opts) $<
	latex $(tex_opts) $<

jsmath-doc $(tex4ht-jsmath_doc): $(tex4ht-jsmath_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

jsml-xtpipes $(tex4ht-jsml-xtpipes_derived): $(tex4ht-jsml-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

jsml-xtpipes-doc $(tex4ht-jsml-xtpipes_doc): $(tex4ht-jsml-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

jsml $(tex4ht-jsml_derived): $(tex4ht-jsml_deps) 
	latex $(tex_opts) $<
	latex $(tex_opts) $<

jsml-doc $(tex4ht-jsml_doc): $(tex4ht-jsml_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

mathltx $(tex4ht-mathltx_derived): $(tex4ht-mathltx_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

mathltx-doc $(tex4ht-mathltx_doc): $(tex4ht-mathltx_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

mathml $(tex4ht-mathml_derived): $(tex4ht-mathml_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

mathml-doc $(tex4ht-mathml_doc): $(tex4ht-mathml_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

mathplayer $(tex4ht-mathplayer_derived): $(tex4ht-mathplayer_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

mathplayer-doc $(tex4ht-mathplayer_doc): $(tex4ht-mathplayer_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

mkht $(tex4ht-mkht_derived): $(tex4ht-mkht_deps)
	latex $(tex_opts) $<
	perl -c mk4ht.perl  # syntax check

mkht-doc $(tex4ht-mkht_doc): $(tex4ht-mkht_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

mkht-scripts $(mkht-scripts_derived): $(mkht-scripts_deps) 
	latex $(tex_opts) $<

mkht-scripts-doc $(mkht-scripts_doc): $(mkht-scripts_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

moz $(tex4ht-moz_derived): $(tex4ht-moz_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

moz-doc $(tex4ht-moz_doc): $(tex4ht-moz_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

oo-xtpipes $(tex4ht-oo-xtpipes_derived): $(tex4ht-oo-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

oo-xtpipes-doc $(tex4ht-oo-xtpipes_doc): $(tex4ht-oo-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

ooffice $(tex4ht-ooffice_derived): $(tex4ht-ooffice_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

ooffice-doc $(tex4ht-ooffice_doc): tex4ht-ooffice.tex $(common)
	htlatex $< "xhtml,4,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

ooimpress $(tex4ht-ooimpress_derived): $(tex4ht-ooimpress_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

ooimpress-doc $(tex4ht-ooimpress_doc): $(tex4ht-ooimpress_deps)
	htlatex $< "xhtml,4,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

options $(tex4ht-options_derived): $(tex4ht-options_deps)
	latex $(tex_opts) $<

options-doc $(tex4ht-options_doc): $(tex4ht-options_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

sty $(tex4ht-sty_derived): $(tex4ht-sty_deps)
	tex $(tex_opts) $<

sty-doc $(tex4ht-sty_doc): $(tex4ht-sty_deps)
	$(HTTEX) $< ""
	$(movetohtmldir) $< $(htmldir)

svg $(tex4ht-svg_derived): $(tex4ht-svg_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

svg-doc $(tex4ht-svg_doc): $(tex4ht-svg_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

t4ht $(tex4ht-t4ht_derived): $(tex4ht-t4ht_deps)
	tex $(tex_opts) $<

t4ht-doc $(tex4ht-t4ht_doc): $(tex4ht-t4ht_deps)
	$(HTTEX) $< ""
	$(movetohtmldir) $< $(htmldir)

tei $(tex4ht-tei_derived): $(tex4ht-tei_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

tei-doc $(tex4ht-tei_doc): $(tex4ht-tei_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

unicode $(tex4ht-unicode_derived): $(tex4ht-unicode_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

unicode-doc $(tex4ht-unicode_doc): $(tex4ht-unicode_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

word $(tex4ht-word_derived): $(tex4ht-word_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

word-doc $(tex4ht-word_doc): $(tex4ht-word_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

xhtml-xtpipes $(tex4ht-xhtml-xtpipes_derived): $(tex4ht-xhtml-xtpipes_deps)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)

xhtml-xtpipes-doc $(tex4ht-xhtml-xtpipes_doc): $(tex4ht-xhtml-xtpipes_deps)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

xhtmml-xtpipes $(tex4ht-xhtmml-xtpipes_derived): $(tex4ht-xhtmml-xtpipes_deps)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)

xhtmml-xtpipes-doc $(tex4ht-xhtmml-xtpipes_doc): $(tex4ht-xhtmml-xtpipes_deps)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

#$(xtpipes_deps)
xtpipes $(xtpipes_derived): xtpipes.tex #$(xtpipes_deps)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)
# Derived files are generated in . and $(wd).
# (corresponds to src/java for xtpipes.tex)

xtpipes-doc $(xtpipes_doc): $(xtpipes_deps)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)
	$(movetohtmldir) $< $(htmldir)

jar $(tex4ht-jar_derived): $(tex4ht-jar_deps)
	jar cf tex4ht.jar -C $(xtpipesdir)/ .
#	mkdir -p ./tex4ht.dir/texmf/tex4ht/bin
#	mv tex4ht.jar ./tex4ht.dir/texmf/tex4ht/bin/.
#	cp $(xtpipesdir)/xtpipes/lib/* ./tex4ht.dir/texmf/tex4ht/xtpipes/.


# /usr/local/texlive/2015/texmf-dist/tex/generic/tex4ht
# *.4ht
# /usr/local/texlive/2015/texmf-dist/tex4ht/base/{unix,win32}/
# tex4ht.env
# /usr/local/texlive/2015/texmf-dist/tex4ht/bin/
# tex4ht.jar
# /usr/local/texlive/2015/texmf-dist/tex4ht/ht-fonts
# <dir>/<sub-dir>/*.htf
# unicode/lm/*.htf
# alias/lm/*.htf
# utf8/charset/unicode.4ht
# /usr/local/texlive/2015/texmf-dist/tex4ht/xtpipes
# docbook.4xt
# htspk.4xt
# javahelp.4xt
# jsml.4xt
# oo-math.4xt
# oo-text.4xt
# xhtml.4xt
# xhtmml.4xt
# xtpipes-default.4xt
# xtpipes-map.dtd
# xtpipes.dtd


# 
destdir = ..
dest_texmf = $(destdir)/texmf/tex/generic/tex4ht
dest_4ht = $(destdir)/texmf/tex4ht
dest_base = $(dest_4ht)/base
dest_xtpipes = $(dest_4ht)/xtpipes
dest_src = $(destdir)/src
dest_java = $(dest_src)/java
#
update = cp -pr
mkdir = install -d
update:
	$(update) $(tex4ht-bibtex2_derived) $(dest_texmf)/
#
update2: all
	$(update) $(tex4ht-bibtex2_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-c_derived) $(dest_src)/
#
	$(update) $(tex4ht-cond4ht_derived) $(dest_texmf)/
#
	$(update) docbook.4xt $(dest_xtpipes)/
	$(update) DbUtilities.java $(dest_java)/
#
	$(update) $(tex4ht-docbook_derived) $(dest_texmf)/
#
	$(mkdir) $(dest_base)/unix $(dest_base)/win32
	$(update) tex4ht.env-unix $(dest_base)/unix/
	$(update) tex4ht.env-win32 $(dest_base)/win32/
#
	$(update) $(tex4ht-html-speech-xtpipes_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-html-speech_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-html0_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-html32_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-html4_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-html5_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-info-mml_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-info-ooffice_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-info-svg_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-info_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-javahelp-xtpipes_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-javahelp_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-jsmath_derived) $(dest_texmf)/
#
	$(update) jsml.4xt $(dest_xtpipes)/
	$(update) HtJsml.java GroupMn.java JsmlFilter.java \
	          JsmlMathBreak.java $(dest_java)/
#
	$(update) $(tex4ht-jsml_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-mathltx_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-mathplayer_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-moz_derived) $(dest_texmf)/
#
	$(update) oo-text.4xt oo-math.4xt $(dest_xtpipes)/
	$(update) OoUtilities.java OomFilter.java $(dest_java)/
#
	$(update) $(tex4ht-ooffice_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-ooimpress_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-options_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-sty_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-svg_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-t4ht_derived) $(dest_src)/
#
	$(update) $(tex4ht-tei_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-unicode_derived) $(dest_texmf)/
#
	$(update) $(tex4ht-word_derived) $(dest_texmf)/
#
	$(update) xhtml.4xt $(dest_xtpipes)/
	$(update) XhtmlEmails.java $(dest_java)/
#
	$(update) xhtmml.4xt $(dest_xtpipes)/
	$(update) XhtmmlUtilities.java $(dest_java)/
#
# this has to be done last. Does anything else use $(wd)? We'll see.
	rmdir $(wd)/bin
	$(update) $(wd)/* $(dest_java)/
	$(update) xtpipes.dtd xtpipes-map.dtd xtpipes-default.4xt 
	  $(dest_xtpipes)/

clean: mostlyclean
	rm -rf tex4ht.dir
	rm -rf $(xtpipesdir)
	rm -rf $(wd)
	rm -f *.4ct *.4tc *.aux *.css *.dvi *.idv *.lg *.log *.tmp *.trc *.xref
	rm -f *.4es *.bat *.unix *.htf *.html *.png tmp
	rm -f *.fls

clean1:
	rm -f $(f).[0-s]* $(f).[u-z]* $(f).trc

# to compare newly-built files with what's installed.
diff_files = $(derived) # lots of changes to be figured out ...
diff_files = $(tex4ht_mathml_derived) $(tex4ht_html_speech_derived) \
             $(tex4ht_jsml_derived) $(tex4ht_mathltx_derived)
inst_dir = /usr/local/texlive/dev/texmf-dist/tex/generic/tex4ht
#
diff = diff -u0 --ignore-all-space --ignore-blank-lines \
  --ignore-matching-lines='write-1.version\|, generated from\|Copyright'
#
# the --ignore-matching-lines only works when that's the only change in
# the hunk, so ignore them all explicitly. also ignore commented changes.
diff-all:
	-for f in $(diff_files); do $(diff) $(inst_dir)/$$f .; done \
	| tee /tmp/u | egrep -v '^ *[-+]%|write-1.version'

# diff one file specified as d=
diff1:
	$(diff) $(inst_dir)/$(d) .

# clean all derived except for htf (Argument list is too long on macos) and then remove dir with fonts
mostlyclean:
	rm -rf $(filter-out %.htf, $(derived)) 
	rm -rf $(tex4htdir)

sources = tex4ht-cond4ht.tex\
            cond4ht.tex\
            tex4ht-4ht.tex\
            tex4ht-bibtex2.tex\
            tex4ht-c.tex\
            tex4ht-docbook.tex\
            tex4ht-t4ht.tex\
            tex4ht-env.tex\
            tex4ht-fonts-cjk.tex\
            tex4ht-fonts-cjk-utf8.tex\
            tex4ht-fonts-noncjk.tex\
            tex4ht-unicode.tex\
            tex4ht-html-speech.tex\
            tex4ht-html0.tex\
            tex4ht-html32.tex\
            tex4ht-html4.tex\
            tex4ht-html5.tex\
            tex4ht-javahelp.tex\
            tex4ht-jsmath.tex\
            tex4ht-jsml.tex\
            tex4ht-mathltx.tex\
            tex4ht-mathml.tex\
            tex4ht-mathplayer.tex\
            tex4ht-mkht.tex\
            tex4ht-moz.tex\
            tex4ht-ooffice.tex\
            tex4ht-ooimpress.tex\
            tex4ht-options.tex\
            tex4ht-sty.tex\
            tex4ht-svg.tex\
            tex4ht-tei.tex\
            tex4ht-word.tex\
            tex4ht-info-html4.tex\
            tex4ht-info-javahelp.tex\
            tex4ht-info-mml.tex\
            tex4ht-info-ooffice.tex\
            tex4ht-info-svg.tex\
            tex4ht-docbook-xtpipes.tex\
            tex4ht-html-speech-xtpipes.tex\
            tex4ht-javahelp-xtpipes.tex\
            tex4ht-jsml-xtpipes.tex\
            tex4ht-oo-xtpipes.tex\
            tex4ht-xhtml-xtpipes.tex\
            tex4ht-xhtmml-xtpipes.tex\
            xtpipes.tex\
            tex4ht-info.tex

sources_d := $(sources:%.tex=%.dd)
sources_d += mkht-scripts.dd # in order to get mkht-scripts.d
sources_d += tex4ht-jar.dd   # to get tex4ht-jar.d

sources_doc := $(foreach s,$(sources),$(call $(s:%.tex=%_doc)))

## Generate *.d (dependency) file. Trying to mimick automake dependency computation.
## Automake:
##   Dependency computation is done at build time, as a side-effect of compilation.
##   If I understand it right, gcc -MD option generates *.d file(s) (small Makefile)
##   which are included in main Makefile with 'include' directive.
## An attemp to mimick automake dependency computation. Generate (small) Makefiles with
## vars for dependencies and derived files from *.fls (and .lg).
%.dd: %.fls 
	$(extra_bin)/fls2d $*.fls >$*.d

%-xtpipes.dd: %-xtpipes.fls %-xtpipes.javac.log
	$(extra_bin)/fls2d $^ >$*-xtpipes.d


## We need to parse *.fls and *.lg files for fonts derived/deps
tex4ht-fonts-cjk.dd: tex4ht-fonts-cjk.lg tex4ht-fonts-cjk.fls
	$(extra_bin)/flslg2d $^ >tex4ht-fonts-cjk.d

tex4ht-fonts-cjk-utf8.dd: tex4ht-fonts-cjk-utf8.lg tex4ht-fonts-cjk-utf8.fls
	$(extra_bin)/flslg2d $^ >tex4ht-fonts-cjk-utf8.d

tex4ht-fonts-noncjk.dd: tex4ht-fonts-noncjk.lg tex4ht-fonts-noncjk.fls
	$(extra_bin)/flslg2d $^ >tex4ht-fonts-noncjk.d


mkht-scripts.dd: mkht-scripts.fls
	$(extra_bin)/fls2d $< >mkht-scripts.d

xtpipes.dd: xtpipes.lg xtpipes.fls
	$(extra_bin)/flslg2d $^ >xtpipes.d

tex4ht-jar.dd: tex4ht.jar
	$(extra_bin)/jar2d $< >tex4ht-jar.d

d: $(sources_d)
doc: $(sources_doc)

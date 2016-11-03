# $Id: Makefile 196 2016-10-05 13:12:37Z deimi $
# This file is public domain.  Originally written 2010, Karl Berry.
# 
# todo: look for xx below

SHELL := /bin/sh
extra_bin := ./extra-bin
ht_bin := ../bin/ht/unix
PATH := $(shell echo $$PATH)
# setting PATH as TeX Live 2016 (DVD) does not ship with 'xhlatex'
# and look for xmlint/vcss in ./extra-bin
export PATH:=$(ht_bin):$(extra_bin):$(PATH)


wd = work.dir
htmldir = html.dir
xtpipesdir = xtpipes.dir
deriveddir = derived.dir


# make sure xtpipesdir exists
foo := $(shell mkdir -p $(xtpipesdir))

tex_opts = --interaction=nonstopmode -recorder #--file-line-error
tex_1opt = "$(tex_opts)" # must be quoted, passing to shell script
dev_null = </dev/null    # when we don't call tex directly.

HTTEX = ht "tex $(tex_opts)"  # set tex options for plain tex


include cond4ht.d
include tex4ht-cond4ht.d
include tex4ht-4ht.d
include tex4ht-bibtex2.d
include tex4ht-c.d
include tex4ht-docbook.d
include tex4ht-env.d
include tex4ht-fonts-cjk.d
include tex4ht-fonts-cjk-utf8.d
include tex4ht-html-speech.d
include tex4ht-html-speech-xtpipes.d
include tex4ht-html0.d
include tex4ht-html32.d
include tex4ht-html4.d
## xx make: Circular infoht4.4ht <- infoht4.4ht dependency dropped.
include tex4ht-info.d
include tex4ht-info-html4.d
include tex4ht-info-javahelp.d
include tex4ht-info-mml.d
include tex4ht-info-ooffice.d
include tex4ht-info-svg.d
include tex4ht-javahelp.d
include tex4ht-jsmath.d
include tex4ht-jsml-xtpipes.d
include tex4ht-jsml.d


default: all

common = tex4ht-cpright.tex common.tex common-code.tex ProTex.sty AlProTex.sty
common_info = $(common) common-info.tex
derived =
xderived =

derived += $(cond4ht_derived)
derived += $(tex4ht-cond4ht_derived)
derived += $(tex4ht-4ht_derived)
derived += $(tex4ht-bibtex2_derived)
derived += $(tex4ht-c_derived)
derived += $(tex4ht-docbook_derived)
derived += $(tex4ht-docbook-xtpipes_derived)
derived += $(tex4ht-env_derived)
derived += $(tex4ht-fonts-cjk_derived)
derived += $(tex4ht-fonts-cjk-utf8_derived)
derived += $(tex4ht-fonts-noncjk_derived)
# whither tmp?  how change target dir?  what happened to cmtex.htf?  etc.

# htcmd not used
#derived += $(tex4ht_htcmd_derived)
#tex4ht_htcmd_derived = htcmd.c

derived += $(tex4ht-html-speech_derived)
derived += $(tex4ht-htm-_speech-xtpipes_derived)
derived += $(tex4ht-html0_derived)
derived += $(tex4ht-html32_derived)
derived += $(tex4ht-html4_derived)
derived += $(tex4ht-info-html4_derived)
derived += $(tex4ht-info-javahelp_derived)
derived += $(tex4ht-info-mml_derived)
derived += $(tex4ht_info_ooffice_derived)
derived += $(tex4ht-info-svg_derived)
derived += $(tex4ht-info_derived)
derived += $(tex4ht-javahelp_derived)
derived += $(tex4ht-javahelp-xtpipes_derived)
derived += $(tex4ht-jsmath_derived)
derived += $(tex4ht-jsml-xtpipes_derived)
derived += $(tex4ht-jsml_derived)





xderived += $(tex4ht_mathltx_derived)
tex4ht_mathltx_derived = mathltx.4ht html-mltx.4ht

xderived += $(tex4ht_mathml_derived)
tex4ht_mathml_derived = mathml.4ht html-mml.4ht

xderived += $(tex4ht_mathplayer_derived)
tex4ht_mathplayer_derived = mathplayer.4ht

xderived += $(tex4ht_mkht_derived)
tex4ht_mkht_derived = mkht.4ht mk4ht.perl mkht-scripts.4ht

xderived += $(tex4ht_moz_derived)
tex4ht_moz_derived = mozilla.4ht

xderived += $(tex4ht_oo_xtpipes_derived)
tex4ht_oo_xtpipes_derived = \
   oo-math.4xt oo-text.4xt \
   OoUtilities.java OomFilter.java OoFilter.java

xderived += $(tex4ht_ooffice_derived)
tex4ht_ooffice_derived = ooffice.4ht ooffice-mml.4ht

xderived += $(tex4ht_ooimpress_derived)
tex4ht_ooimpress_derived = ooimpress.4ht

xderived += $(tex4ht_options_derived)
tex4ht_options_derived = tex4ht.4ht

xderived += $(tex4ht_sty_derived)
tex4ht_sty_derived = tex4ht.sty

xderived += $(tex4ht_svg_derived)
tex4ht_svg_derived = svg.4ht html4-svg.4ht

xderived += $(tex4ht_t4ht_derived)
tex4ht_t4ht_derived = t4ht.c

xderived += $(tex4ht_tei_derived)
tex4ht_tei_derived = tei.4ht tei-mml.4ht tei-math.4ht tei-mmltei.4ht

xderived += $(tex4ht_unicode_derived)
tex4ht_unicode_derived = unicode.4ht

xderived += $(tex4ht_word_derived)
tex4ht_word_derived = htmlw.4ht

xderived += $(tex4ht_xhtml_xtpipes_derived)
tex4ht_xhtml_xtpipes_derived = xhtml.4xt XhtmlEmails.java

xderived += $(tex4ht_xhtmml_xtpipes_derived)
tex4ht_xhtmml_xtpipes_derived = xhtmml.4xt XhtmmlUtilities.java

# wripro.tex generates nothing (not literate).

xderived += $(xtpipes_derived)
xtpipes_derived = \
  $(wd)/xtpipes.java \
  $(wd)/xtpipes/FileInfo.java \
  $(wd)/xtpipes/InputObject.java \
  $(wd)/xtpipes/Xtpipes.java \
  $(wd)/xtpipes/XtpipesPrintWriter.java \
  $(wd)/xtpipes/XtpipesUni.java \
  $(wd)/xtpipes/util/ScriptsManager.java \
  $(wd)/xtpipes/util/ScriptsManagerLH.java \
  xtpipes-default.4xt \
  xtpipes-map.dtd \
  xtpipes.dtd \


derived-doc =
derived-doc += $(tex4ht-cond4ht_doc)
derived-doc += $(cond4ht_doc)
derived-doc += $(tex4ht-4ht_doc)
derived-doc += $(tex4ht-c_doc)

cond4ht_doc = $(htmldir)/cond4ht/cond4ht.html
tex4ht-cond4ht_doc = $(htmldir)/tex4ht-cond4ht/tex4ht-cond4ht.html
tex4ht-4ht_doc = $(htmldir)/tex4ht-4ht/tex4ht-4ht.html
tex4ht-c_doc = $(htmldir)/tex4ht-c/tex4ht-c.html

# 
all: $(derived)
doc: $(derived-doc) tohtmldir

$(cond4ht_derived): $(cond4ht_deps)
	tex $(tex_opts) $<

$(cond4ht_doc): $(cond4ht_deps)
	$(HTTEX) $<

cond4ht $(tex4ht-cond4ht_derived): $(tex4ht-cond4ht_deps) 
	tex $(tex_opts) $<

cond4ht-doc $(tex4ht-cond4ht_doc): $(tex4ht-cond4ht_deps)
	$(HTTEX) $<

4ht $(tex4ht-4ht_derived): $(tex4ht-4ht_deps)
	tex $(tex_opts) $<

4ht-doc $(tex4ht-4ht_doc): $(tex4ht-4ht_deps)
	$(HTTEX) $<

bibtex2 $(tex4ht-bibtex2_derived): $(tex4ht-bibtex2_deps)
	latex $(tex_opts) $<

bibtex2-doc $(tex4ht-bibtex2_doc): $(tex4ht-bibtex2_deps)
	xhlatex $< "html,3" "" "" $(tex_1opt)

c $(tex4ht-c_derived): $(tex4ht-c_deps) 
	tex $(tex_opts) $<

c-doc $(tex4ht-c_doc): $(tex4ht-c_deps)
	$(HTTEX) $<

docbook $(tex4ht-docbook_derived): $(tex4ht-docbook_deps) 
	latex $(tex_opts) $<

docbook-doc $(tex4ht_docbook_derived): tex4ht-docbook.tex $(common)
	xhlatex $< "html,3" "" "" $(tex_1opt)

docbook-xtpipes $(tex4ht-docbook-xtpipes_derived): $(tex4ht-docbook-xtpipes_deps)
	xhlatex $< "html,3" "" "" $(tex_1opt)


# xx
docbook-xtpipes-doc $(tex4ht_docbook_xtpipes_derived): tex4ht-docbook-xtpipes.tex $(common)
	xhlatex $< "html,3" "" "" $(tex_1opt)

env $(tex4ht-env_derived): $(tex4ht-env_deps)
	latex $(tex_opts) $<

# xx
env-doc $(tex4ht-env_doc): $(tex4ht-env_deps)
	htlatex $< "xhtml,3" "" "" $(tex_1opt)

fonts-cjk $(tex4ht-fonts-cjk_derived): $(tex4ht-fonts-cjk_deps)
	tex $(tex_opts) $<
	tex4ht $<
	t4ht $< 

fonts-cjk-doc $(tex4ht-fonts-cjk_doc): $(tex4ht-fonts-cjk_deps)
	$(HTTEX) $< ""

fonts-cjk-utf8 $(tex4ht-fonts-cjk-utf8_derived): $(tex4ht-fonts-cjk-utf8_deps)
#	$(HTTEX) $< ""
	tex $(tex_opts) $<
	tex4ht $<
	t4ht $< 

fonts-cjk-utf8-doc $(tex4ht-fonts-cjk-utf8_doc): $(tex4ht-fonts-cjk-utf8_deps)
	$(HTTEX) $< ""

fonts-noncjk $(tex4ht-fonts-noncjk_derived): $(tex4ht-fonts-noncjk_deps)
	tex $(tex_opts) $<
	tex4ht $<
	t4ht $< 

fonts-noncjk-doc $(tex4ht_fonts_noncjk_doc): $(tex4ht-fonts-noncjk_deps)
	$(HTTEX) $< ""

#xx not used
# $(tex4ht_htcmd_derived): tex4ht-htcmd.tex $(common)
# 	$(HTTEX) $< ""

html-speech $(tex4ht-html-speech_derived): $(tex4ht-html-speech_deps) 
	latex $(tex_opts) $<

html-speech-doc $(tex4ht-html-speech_doc): $(tex4ht-html-speech_deps) 
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

html-speech-xtpipes $(tex4ht-html-speech-xtpipes_derived): $(tex4ht-html-speech-xtpipes_deps)
	htlatex $< "html,next,3" "" "" $(tex_1opt)

html-speech-xtpipes-doc $(tex4ht-html-speech-_xtpipes_doc): $(tex4ht-html-speech-xtpipes_deps)
	htlatex $< "html,next,3" "" "" $(tex_1opt)

html0 $(tex4ht-html0_derived): $(tex4ht-html0_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html0-doc $(tex4ht-html0_doc): $(tex4ht-html0_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

html32 $(tex4ht-html32_derived): tex4ht-html32.tex $(common)
	latex $(tex_opts) $<

html32-doc $(tex4ht-html32_doc): tex4ht-html32.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

html4 $(tex4ht-html4_derived): tex4ht-html4.tex $(common)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

html4-doc $(tex4ht-html4_doc): tex4ht-html4.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

info-html4 $(tex4ht-info-html4_derived): $(tex4ht-info-html4_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-html4-doc $(tex4ht-info-html4_doc): $(tex4ht-info-html4_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

info-javahelp $(tex4ht-info-javahelp_derived): $(tex4ht-info-javahelp_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-javahelp-doc $(tex4ht-info-javahelp_doc): $(tex4ht-info-javahelp_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)

info-mml $(tex4ht-info-mml_derived): $(tex4ht-info-mml_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-mml-doc $(tex4ht-info-mml_doc): $(tex4ht-info-mml_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)

info-ooffice $(tex4ht-info-ooffice_derived): $(tex4ht-info-ooffice_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-ooffice-doc $(tex4ht-info-ooffice_doc): $(tex4ht-info-ooffice_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)

info-svg $(tex4ht-info-svg_derived): $(tex4ht-info-svg_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

info-svg-doc $(tex4ht-info-svg_doc): $(tex4ht-info-svg_deps)
	htlatex $< "html,sections+" "" "" $(tex_1opt)

info $(tex4ht-info_derived): $(tex4ht-info_deps)
	latex $(tex_opts) $<

info-doc $(tex4ht-info_doc): $(tex4ht-info_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

javahelp $(tex4ht-javahelp_derived): $(tex4ht-javahelp_deps)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

javahelp-doc $(tex4ht-javahelp_doc): $(tex4ht-javahelp_deps)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

javahelp-xtpipes $(tex4ht-javahelp-xtpipes_derived): $(tex4ht-javahelp-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

javahelp-xtpipes-doc $(tex4ht-javahelp-xtpipes_doc): $(tex4ht-javahelp-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

jsmath $(tex4ht-jsmath_derived): tex4ht-jsmath.tex $(common)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

jsmath-doc $(tex4ht-jsmath_doc): tex4ht-jsmath.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

jsml-xtpipes $(tex4ht-jsml-xtpipes_derived): $(tex4ht-jsml-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

jsml-xtpipes-doc $(tex4ht_jsml_xtpipes_doc): $(tex4ht-jsml-xtpipes_deps)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

jsml $(tex4ht-jsml_derived): tex4ht-jsml.tex $(common)
	latex $(tex_opts) $<
	latex $(tex_opts) $<

jsml-doc $(tex4ht-jsml_doc): tex4ht-jsml.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_mathltx_derived): tex4ht-mathltx.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_mathml_derived): tex4ht-mathml.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_mathplayer_derived): tex4ht-mathplayer.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_mkht_derived): tex4ht-mkht.tex $(common)
	latex $(tex_opts) $<
	perl -c mk4ht.perl  # syntax check
	latex $(tex_opts) mkht-scripts.4ht

$(tex4ht_moz_derived): tex4ht-moz.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_oo_xtpipes_derived): tex4ht-oo-xtpipes.tex $(common)
	htlatex $< "xhtml,next,3" "" "" $(tex_1opt)

$(tex4ht_ooffice_derived): tex4ht-ooffice.tex $(common)
	htlatex $< "xhtml,4,sections+" "" "" $(tex_1opt)

$(tex4ht_ooimpress_derived): tex4ht-ooimpress.tex $(common)
	htlatex $< "xhtml,4,sections+" "" "" $(tex_1opt)

$(tex4ht_options_derived): tex4ht-options.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_sty_derived): tex4ht-sty.tex $(common)
	$(HTTEX) $< ""

$(tex4ht_svg_derived): tex4ht-svg.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_t4ht_derived): tex4ht-t4ht.tex $(common)
	$(HTTEX) $< ""

$(tex4ht_tei_derived): tex4ht-tei.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_unicode_derived): tex4ht-unicode.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_word_derived): tex4ht-word.tex $(common)
	xhlatex $< "html,3,sections+" "" "" $(tex_1opt)

$(tex4ht_xhtml_xtpipes_derived): tex4ht-xhtml-xtpipes.tex $(common)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)

$(tex4ht_xhtmml_xtpipes_derived): tex4ht-xhtmml-xtpipes.tex $(common)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)

$(xtpipes_derived): xtpipes.tex $(common)
	htlatex $< "xhtml,3,next" "" "" $(tex_1opt)
# Derived files are generated in . and $(wd).
# (corresponds to src/java for xtpipes.tex)

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
#
update: all
	$(update) $(tex4ht_bibtex2_derived) $(dest_src)/
#
	$(update) $(tex4ht_c_derived) $(dest_src)/
#
	$(update) $(tex4ht_cond4ht_derived) $(dest_texmf)/
#
	$(update) docbook.4xt $(dest_xtpipes)/
	$(update) DbUtilities.java $(dest_java)/
#
	$(update) $(tex4ht_docbook_derived) $(dest_texmf)/
#
	$(mkdir) $(dest_base)/unix $(dest_base)/win32
	$(update) tex4ht.env-unix $(dest_base)/unix/
	$(update) tex4ht.env-win32 $(dest_base)/win32/
#
	$(update) $(tex4ht_html_speech_xtpipes_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_html_speech_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_html0_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_html32_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_html4_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_info_mml_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_info_ooffice_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_info_svg_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_info_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_javahelp_xtpipes_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_javahelp_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_jsmath_derived) $(dest_texmf)/
#
	$(update) jsml.4xt $(dest_xtpipes)/
	$(update) HtJsml.java GroupMn.java JsmlFilter.java \
	          JsmlMathBreak.java $(dest_java)/
#
	$(update) $(tex4ht_jsml_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_mathltx_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_mathplayer_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_moz_derived) $(dest_texmf)/
#
	$(update) oo-text.4xt oo-math.4xt $(dest_xtpipes)/
	$(update) OoUtilities.java OomFilter.java $(dest_java)/
#
	$(update) $(tex4ht_ooffice_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_ooimpress_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_options_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_sty_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_svg_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_t4ht_derived) $(dest_src/
#
	$(update) $(tex4ht_tei_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_unicode_derived) $(dest_texmf)/
#
	$(update) $(tex4ht_word_derived) $(dest_texmf)/
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

mostlyclean:
	rm -f $(derived)

# ** experimental section **
# post 'make all' actions
sources = \
 tex4ht-cond4ht.tex\
 tex4ht-4ht.tex\
 tex4ht-info-html4.tex\
 tex4ht-info-javahelp.tex\
 tex4ht-info-mml.tex\
 tex4ht-info-ooffice.tex\
 tex4ht-info-svg.tex\
 tex4ht-c.tex\
 tex4ht-t4ht.tex\
 tex4ht-docbook.tex\
 tex4ht-bibtex2.tex\
 tex4ht-env.tex\
 tex4ht-fonts-cjk.tex\
 tex4ht-fonts-cjk-utf8.tex\
 tex4ht-fonts-noncjk.tex\
 tex4ht-unicode.tex\
 tex4ht-html-speech.tex\
 tex4ht-html0.tex\
 tex4ht-html32.tex\
 tex4ht-html4.tex\
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
 tex4ht-docbook-xtpipes.tex\
 tex4ht-html-speech-xtpipes.tex\
 tex4ht-javahelp-xtpipes.tex\
 tex4ht-jsml-xtpipes.tex\
 tex4ht-oo-xtpipes.tex\
 tex4ht-xhtml-xtpipes.tex\
 tex4ht-xhtmml-xtpipes.tex\
 xtpipes.tex

# whats wrong with tex4ht-info.tex?
extra_sources := \
 tex4ht-info.tex

sources_d := $(sources:%.tex=%.dd)

## Generate *.d (dependency) file. Trying to mimick automake dependency computation.
## Automake:
##   Dependency computation is done at build time, as a side-effect of compilation.
##   If I understand it right, gcc -MD option generates *.d file(s) (small Makefile)
##   which are included in main Makefile with 'include' directive.
## An attemp to mimick automake dependency computation. Generate (small) Makefiles with
## vars for dependencies and derived files from *.fls.
%.dd: %.fls
	$(extra_bin)/fls2d $< >$*.d

## Fonts need to parse *.fls and *.lg files
tex4ht-fonts-cjk.dd: tex4ht-fonts-cjk.lg tex4ht-fonts-cjk.fls
	$(extra_bin)/flslg2d $^ >tex4ht-fonts-cjk.d

tex4ht-fonts-cjk-utf8.dd: tex4ht-fonts-cjk-utf8.lg tex4ht-fonts-cjk-utf8.fls
	$(extra_bin)/flslg2d $^ >tex4ht-fonts-cjk-utf8.d

tex4ht-fonts-noncjk.dd: tex4ht-fonts-noncjk.lg tex4ht-fonts-noncjk.fls
	$(extra_bin)/flslg2d $^ >tex4ht-fonts-noncjk.d

d: $(sources_d)

derived:
	for f in *.fls ; do \
	grep -v  $${f%.*} $$f | awk '/OUTPUT/ { print $$2 }' > $${f%.*}.derived ;  \
done

## move *.html files to ./htmldir subfolder
## process lg file
tohtmldir:
	for f in *.lg ; do \
	echo Processing $$f && mkdir -p $(htmldir)/$${f%.*} \
	&& grep "File: $${f%.*}" $$f | awk -v outdir=$(htmldir)/$${f%.*} '{system("[ -f "$$2" ] &&  mv -f " $$2" "outdir)}'  ; \
done

## move derived files to ./derived.dir
## process derived files
toderiveddir: derived
	for f in *.derived ; do \
	echo $$f && mkdir -p $(deriveddir)/$${f%.*} \
	&& awk -v outdir=$(deriveddir)/$${f%.*} '{system("[ -f "$$0" ] &&  mv -f " $$0" "outdir)}' $$f ; \
done

test:
	@echo test

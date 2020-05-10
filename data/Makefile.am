
-include files.mkf

files.mkf: Makefile $(srcdir)/genfiles.sh
	$(SHELL) $(srcdir)/genfiles.sh $@

DISTCLEANFILES = files.mkf

EXTRA_DIST = genfiles.sh files.mkf

nobase_dist_share_DATA = \
	sounds/unexicon/index.theme \
	$(unexicon_files)


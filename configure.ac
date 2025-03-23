AC_INIT

# required in Makefile to ensure proper path resolution during preprocessing
AC_CHECK_PROGS([MAKE], [make])
AC_CHECK_PROGS([REALPATH], [realpath])
AC_CHECK_PROGS([GIT], [git])
AC_CHECK_PROGS([PYTHON3], [python3])

AC_MSG_NOTICE([initializing Git submodules...])
git submodule update --init --remote --recursive

# HTML theme reference dependency for dynamic building, alternatively this could
# be removed and instead the HTML theme reference could be statically integrated
# by storing the build package archive under vendor/ instead and untar the
# archive into src/<whatever>.
AC_MSG_NOTICE([initializing vendors...])
sh -xc "cd vendor/html-theme-ref && sh ./configure"

AC_MSG_NOTICE([initializing python3 venv...])
python3 -m venv .venv

AC_MSG_NOTICE([installing dependencies...])
.venv/bin/pip install --requirement requirements.txt

# install dev dependencies seperately, for clarity
AC_MSG_NOTICE([installing dev dependencies...])
.venv/bin/pip install --requirement requirements-dev.txt

AC_OUTPUT

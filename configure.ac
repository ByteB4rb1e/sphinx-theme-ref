AC_INIT

AC_CHECK_PROGS([GIT], [git])
AC_CHECK_PROGS([PYTHON3], [python3])

AC_MSG_NOTICE([initializing Git submodules...])
git submodule update --init --remote --recursive

AC_MSG_NOTICE([initializing python3 venv...])
python3 -m venv .venv

AC_MSG_NOTICE([installing dependencies...])
.venv/bin/pip install requirements.txt

# install dev dependencies seperately, for clarity
AC_MSG_NOTICE([installing dev dependencies...])
.venv/bin/pip install requirements-dev.txt

AC_OUTPUT

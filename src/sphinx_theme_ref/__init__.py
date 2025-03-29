"""
Tiara's Sphinx theme reference implementation.
"""

from pathlib import Path
from sys import version_info as python_version

from sphinx import version_info as sphinx_version
from sphinx.locale import _
from sphinx.util.logging import getLogger

logger = getLogger(__name__)

def setup(app):
    """
    """
    app.require_sphinx('8.0')

    app.add_html_theme('sphinx-theme-ref', Path(__file__).resolve().parent)

    app.add_js_file('assets/script/theme.js')

    return {'parallel_read_safe': True, 'parallel_write_safe': True}

inherit npm

B="${S}"

NPM_INSTALL_FLAGS ?= ""

# Install the local dependencies and make the package ready for installation
do_configure() {
	oe_runnpm ${NPM_INSTALL_FLAGS} install --verbose
}

# Install the package globally
do_install() {
	oe_runnpm ${NPM_INSTALL_FLAGS} install -g --prefix=${D}${prefix} --verbose
}

FILES_${PN} += "${prefix}"

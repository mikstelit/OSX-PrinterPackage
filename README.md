OSX-PrinterPackage
==================

OSX-PrinterPackage builds a package that will install a printer driver and printer on OS X.  Copy the printer driver and PPD file into the stagedfiles directory.  Fill out the Name, Location, Address, and Driver in stagedfiles/printer.config.  Finally, run printer_build.sh and a package will be built containing the driver and PPD file as the payload.  When the package is installed, the driver and PPD file are copied to the /tmp directory on the computer.  The package checks to see if the driver is already installed on the computer and installs the driver if it is missing.  The printer is then installed and the directory in /tmp is deleted.

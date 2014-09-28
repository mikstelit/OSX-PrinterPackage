OSX-PrinterPackage
==================

OSX-PrinterPackage builds a package that will install a printer driver and printer on OS X.  Copy the printer driver and PPD file into the stagedfiles directory.  The preinstall and postinstall scripts use information from the stagedfiles/PrinterConfig.plist.  The plist contains the following values:

ADDRESS: The address of the printer, lpd://172.16.242.24
DRIVER: The name of the driver as it appears in System Preferences > Printers & Scanners
LOCATION: The location of the printer with no spaces
NAME: The name of the printer
TEMP: The location where the package copies the PPD file, driver package, and PrinterConfig.plist

Run printer_build.sh and a package will be built containing the PPD file, driver package, and PrinterConfig.plist as the payload.

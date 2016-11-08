TOP = ../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = procServControl
# procServControl.dbd will be created and installed
DBD += procServControl.dbd
LIBRARY_IOC += procServControl

$(PROD_IOC)_DBD += base.dbd
# To send command_string to the system command interpreter for execution
$(PROD_IOC)_DBD += system.dbd
$(PROD_IOC)_DBD += procServControlSupport.dbd

# Include dbd files from all support applications:
ifdef ASYN
	$(PROD_IOC)_DBD += asyn.dbd drvAsynSerialPort.dbd
	$(PROD_IOC)_DBD += drvAsynIPPort.dbd
	$(PROD_IOC)_LIBS += asyn
endif
ifdef AUTOSAVE
	$(PROD_IOC)_DBD += asSupport.dbd
	$(PROD_IOC)_LIBS += autosave
endif
ifdef BUSY
	$(PROD_IOC)_DBD += busySupport.dbd
	$(PROD_IOC)_LIBS += busy
endif
ifdef DEVIOCSTATS
	$(PROD_IOC)_DBD += devIocStats.dbd iocAdmin.dbd
	$(PROD_IOC)_LIBS += devIocStats
endif
ifdef SNCSEQ
	# seq-2-1 and earlier has devSequencer
	ifeq (seq-2-1, $(findstring seq-2-1, $(SNCSEQ)))
		$(PROD_IOC)_DBD += devSequencer.dbd
		$(PROD_IOC)_LIBS += seqDev seq pv
	else ifeq (seq-2.1, $(findstring seq-2.1, $(SNCSEQ)))
		$(PROD_IOC)_DBD += devSequencer.dbd
		$(PROD_IOC)_LIBS += seqDev seq pv
	# seq-2-2
	else 
		$(PROD_IOC)_LIBS += seq pv
	endif
	$(PROD_IOC)_SRCS += procServControl.st
endif

$(PROD_IOC)_SRCS += procServControl_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
$(PROD_IOC)_SRCS += procServControlMain.cpp

# Finally link to the EPICS Base libraries
$(PROD_IOC)_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES


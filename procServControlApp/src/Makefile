# This file was automatically generated on Tue 04 Sep 2012 11:56:22 BST from
# source: /dls_sw/prod/R3.14.11/support/procServControl/1-2/etc/makeIocs/procServControl.xml
# 
# *** Please do not edit this file: edit the source file instead. ***
# 
TOP = ../..
include $(TOP)/configure/CONFIG
PROD_IOC = procServControl
DBD += procServControl.dbd
LIBRARY_IOC += procServControl

procServControl_DBD += base.dbd
# To send command_string to the system command interpreter for execution
procServControl_DBD += system.dbd
ifdef SNCSEQ
	procServControl_DBD += devSequencer.dbd
	procServControl_DBD += procServControlSupport.dbd
	procServControl_LIBS += seqDev seq pv
	procServControl_SRCS += procServControl.st
endif
procServControl_DBD += asyn.dbd
procServControl_DBD += drvAsynIPPort.dbd
procServControl_DBD += busySupport.dbd
procServControl_SRCS += procServControl_registerRecordDeviceDriver.cpp
procServControl_LIBS += busy
procServControl_LIBS += asyn
procServControl_LIBS += $(EPICS_BASE_IOC_LIBS)
procServControl_SRCS += procServControlMain.cpp


include $(TOP)/configure/RULES

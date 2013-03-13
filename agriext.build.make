;******************************************************************************
;                                	License
;******************************************************************************

; Copyright (c) 2013 Open Systems Ghana
; Web: http://www.opensystemsghana.com
; Support: julian.smith@opensystemsghana.com

; Permission is hereby granted, free of charge, to any person obtaining a copy of this 
; software and associated documentation files (the "Software"), to deal in the Software 
; without restriction, including without limitation the rights to use, copy, modify, merge, 
; publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons 
; to whom the Software is furnished to do so, subject to the following conditions:

; The above copyright notice and this permission notice shall be included in all copies or 
; substantial portions of the Software.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
; INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
; PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE 
; FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
; OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
; DEALINGS IN THE SOFTWARE.

; File: agriext.build.make
; Date: 2013-02-13
; Time: 13:15
; Location: 37°48′49″S 144°57′47″E

; Author: Web Deli™ <projects@webdeli.com.au>

;******************************************************************************
;                                Documentation
;******************************************************************************

; Description:

; A stub drush makefile to create a current agriex Drupal 7 development 
; installation profile based on a Drupal commons.

; Instructions:

; To setup a local copy of the agriex sandbox run the following Drush Make command:
; $ drush -v make https://raw.github.com/opensystemsghana/drupal_stubs/agriext.build.make

; Alternatively, a user with permission to access the repository can clone the github repo
; $ git clone git://github.com/opensystemsghana/drupal_stubs.git

; then build from the included stub file:
; $ drush -v make drupal_stubs/agriext.build.make example.com

; @file
; This file is instantiated by Drush to commence a build of the agriex Drupal site.

;******************************************************************************
;                                   General
;******************************************************************************

; CORE VERSION
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = "7.x"

; API version
; -----------
; Every makefile needs to declare it's Drush Make API version. This version of api = "2"
; drush 5.x commands/make/make.drush.inc uses API version '2'.

api = "2"

;******************************************************************************
;                               Include files
;******************************************************************************

; INSTALL PROFILE
; ---------------
; Each project that you would like to include in the makefile should be
; declared under the 'projects' key. The simplest declaration of a project
; looks like this:

; Include the definition of how to build Drupal core directly, including patches.

;includes[] = "drupal-org-core.make"
projects[drupal][version] = "7.19"

; Download the Commons install profile and recursively build all its dependencies.

projects[commons][type] = "profile"
projects[commons][download][type] = "git"
projects[commons][download][url] = "git@github.com:rtrvrtg/drupal-commons.git"
projects[commons][download][branch] = "7.x-3.x-fetchable"
projects[commons][version] = "7.x-3.x"

;******************************************************************************
;                               Authentication
;******************************************************************************

; //  (Not applicable - we are using SSH keys!)

; AUTHENTICATION
; ---------------
; If attribute 'interactive' (optional) is true. Therefore Drush will prompt the user for credentials.
; projects[webdeli-drupal8-dev][download][interactive] = "false"
; If you want to set SCM credentials comment out the above & enable below with username/password set.
; projects[webdeli-drupal8-dev][download][interactive] = "username"
; projects[webdeli-drupal8-dev][download][interactive] = "password"

;********
; -end-
;********

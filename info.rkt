#lang info
(define deps '("base"
               "feature-profile"
               "profile-lib"
               "racklog"))
(define raco-commands
  '(("racklog-profile"
     racklog-profile/raco
     "profile overhead from Racklog"
     #f)))
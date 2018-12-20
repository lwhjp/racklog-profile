#lang racket/base

(require racket/cmdline
         raco/command-name
         profile/raco-utils
         feature-profile
         "main.rkt")

(define file
  (command-line #:program (short-program+command-name)
                #:args (filename)
                filename))

(collect-garbage)
(collect-garbage)
(collect-garbage)

(current-compile feature-profile-compile-handler)

(feature-profile #:features (list racklog-feature)
 (dynamic-require (module-to-profile file) #f))

(module test racket/base)

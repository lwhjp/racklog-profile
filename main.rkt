#lang racket/base

(require feature-profile
         feature-profile/plug-in-lib
         (only-in racklog racklog-continuation-mark-key))

(provide racklog-feature)

(define (group s)
  (if (vector? s)
      (srcloc->string (apply make-srcloc (vector->list s)))
      s))

(define racklog-feature
  (feature "Racklog" racklog-continuation-mark-key group #f))

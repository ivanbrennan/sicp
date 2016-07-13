#!/usr/bin/env racket
#lang racket

(define (sum-sq-max-2 x y z)
  (if (= x (max x y))
      (sum-sq x (max y z))
      (sum-sq y (max x z))))

(define (max x y)
  (if (> x y) x y))

(define (sum-sq x y)
  (+ (square x) (square y)))

(define (square x) (* x x))

(sum-sq-max-2 3 1 2)

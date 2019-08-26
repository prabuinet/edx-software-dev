;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname flower) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define petal (put-pinhole
                20 20
                (ellipse 100 40 "solid" "purple")))

(clear-pinhole
     (overlay/pinhole
      (circle 30 "solid" "yellow")
      (rotate (* 60 0) petal)
      (rotate (* 60 1) petal)
      (rotate (* 60 2) petal)
      (rotate (* 60 3) petal)
      (rotate (* 60 4) petal)
      (rotate (* 60 5) petal)))



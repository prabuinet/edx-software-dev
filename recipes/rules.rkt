;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rules) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; rules

;; whenever there is a reference rule, use a helper function

;; when we need to operate on arbitary-sized data; we have to use
;;    helper function to do it
;; example inserting new item in right place in a sorted list


;; when we shift knowledge domain - use helper function


In your design pay particular attention to the helper rules. In our solution we use
these rules to split out helpers:
  - function composition
  - reference
  - knowledge domain shift
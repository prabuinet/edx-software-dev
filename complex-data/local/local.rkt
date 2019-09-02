;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname local) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(local [(define a 1)
        (define b 2)]
  (+ a b))

(local [(define p "accio ")
        (define (fetch n) (string-append p n))]
  (fetch "portkey"))

(local []
  (+ 1 2))

;; lexical scoping

(define x "foo ")
(local [(define x "bar ")
        (define (fetch n) (string-append x n))]
  (fetch "portkey"))


(define a 1)
(define b 2)

(+ a
   (local [(define b 3)]
     (+ a b))
   b)

;; Evaluation Rules

(+ a
   (local [(define b 3)]
     (+ a b))
   b)

;; Step 1: Renaming
;;  (renames local variable to something so that it will be unique globally)

(+ a
   (local [(define b_0 3)]
     (+ a b_0))
   b)

;; Step 2: Lifting
;;  (all local variables are moved to top level)

(define a 1)
(define b 2)
(define b_0 3)

(+ a
   (local []
     (+ a b_0))
   b)

;; Step 3: Replace local
;;  (replace entire local expression with its body, make local go away)

(define a 1)
(define b 2)
(define b_0 3)

(+ a
   (+ a b_0)
   b)


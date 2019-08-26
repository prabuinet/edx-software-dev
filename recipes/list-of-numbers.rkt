;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname list-of-numbers) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; list of numbers data definition

;; ListOfNumber is one of:
;; - empty
;; - (cons Number ListOfNumber)
;; intrep. a list of numbers

(define LON1 empty)
(define LON2 (cons 1 empty))
(define LON3 (cons 1 (cons 2 empty)))

#;
(define (fn-for-lon lon)
  (cond [(empty? lon) (...)]
        [else
          (... (first lon)
               (fn-for-lon (rest lon)))]))
;; Template rules used:
;; - one of: 2 cases
;; - atomic distinct: empty
;; - compound: (cons Number ListOfNumber)
;; - [coming soon]



;; function to find if it contains a negative number

;; ListOfNumber -> Boolean
;; produce true if list contain negative number
(check-expect (contains-negative? empty) false)
(check-expect (contains-negative? (cons 1 empty)) false)
(check-expect (contains-negative? (cons -1 empty)) true)
(check-expect (contains-negative? (cons 1 (cons 2 (cons -3 empty)))) true)
(check-expect (contains-negative? (cons 1 (cons 2 (cons 3 empty)))) false)

#;
(define (contains-negative? lon) false) ; stub

; <template used from data definition>
(define (contains-negative? lon)
  (cond [(empty? lon) false]
        [else
          (if (< (first lon) 0)
              true
              (contains-negative? (rest lon)))]))




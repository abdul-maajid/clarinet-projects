
;; counter
;; <add a description here>

;; constants
;;

;; data maps and vars
(define-map counters principal uint)

;; private functions
;;

;; public functions
(define-public (count-up) 
    (ok (map-set counters tx-sender (+ (get-count tx-sender) u1)))
)

(define-read-only (get-count (who principal))
    (default-to u0 (map-get? counters who))
)

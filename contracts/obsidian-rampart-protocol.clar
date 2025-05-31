;; Obsidian Rampart Protocol

;; ================================
;; SYSTEM REPOSITORY PARAMETERS
;; ================================

(define-data-var sanctuary-reserves uint u0)
(define-data-var guardian-allocation-ceiling uint u10000)
(define-data-var shield-compensation-quotient uint u500)
(define-data-var sanctuary-threshold-maximum uint u1000000)

;; ================================
;; GUARDIAN REGISTRY STRUCTURES
;; ================================

(define-map guardian-deposit-registry principal uint)
(define-map guardian-shield-registry principal uint)
(define-map active-shield-registry
  {guardian: principal}
  {magnitude: uint, compensation-factor: uint, operational-status: bool})

;; ================================
;; PROTOCOL DIAGNOSTICS  
;; ================================


(define-constant signal-governance-restricted (err u100))
(define-constant signal-resource-depletion (err u101)) 
(define-constant signal-operation-rejected (err u102))
(define-constant signal-parameter-mismatch (err u103))
(define-constant signal-shield-pricing-anomaly (err u104))
(define-constant signal-sanctuary-overflow (err u105))
(define-constant signal-shield-unavailable (err u106))
(define-constant signal-compensation-factor-mismatch (err u107))
(define-constant signal-reclamation-failure (err u108))

;; ================================
;; PROTOCOL GOVERNANCE
;; ================================

(define-constant sanctuary-overseer tx-sender)

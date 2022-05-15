(require 'ox-beamer)
(setq create-lockfiles nil)
(setq org-latex-listings t)
;; (setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))

(defun compile-org-in-background () (start-process "org-compile" "*org-compile*" "make"))

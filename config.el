(require 'ox-beamer)
(setq create-lockfiles nil)
(setq org-latex-listings t)
;; (setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))

(defun org-latex-code (code _contents info)
  "Transcode a CODE object from Org to LaTeX.
CONTENTS is nil.  INFO is a plist used as a communication
channel."
  (format "\\lstinline[language=%s, style=display]~%s~"
          my-default-code-markup-language
          (org-element-property :value code)))

(setq my-default-code-markup-language "elixir")

(defun compile-org-in-background () (start-process "org-compile" "*org-compile*" "make"))

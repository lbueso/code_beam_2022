;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((org-mode . ((eval . (require 'ox-beamer))
              (eval . (add-to-list 'org-latex-packages-alist
                                   '("" "color")))
              (eval . (add-to-list 'org-latex-packages-alist
                                   '("" "listings")))
              (eval . (defun compile-org-in-background nil
                        (start-process "org-compile" "*org-compile*" "make")))
              (org-latex-listings . t)
              (org-latex-pdf-process . (list "latexmk -shell-escape -bibtex -f -pdf %f"))
              (create-lockfiles . nil)))
 (org-mode . ((after-save-hook . compile-org-in-background))))

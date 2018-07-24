(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))


(package-initialize)
(require 'ob-tangle)
(load "~/.emacs.d/lisp/PG/generic/proof-site")
(load "~/.emacs.d/private.el")
(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
	 (quote
		("~/Documents/org/calendars/kc.org" "~/Documents/org/calendars/noths.org" "~/Documents/org/calendars/ukhols.org" "~/Documents/org/gtd/gtd.org" "~/Documents/org/gtd/inbox.org" "~/Documents/org/gtd/someday.org" "~/Documents/org/gtd/tickler.org")))
 '(org-export-backends (quote (ascii html icalendar latex md confluence)))
 '(package-selected-packages
	 (quote
		(sudo-ext vagrant-tramp org-gcal org-journal feature-mode calfw calfw-org calfw-ical calfw-cal auto-complete switch-window evil use-package auto-compile)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 158 :width normal)))))

(set-keyboard-coding-system nil)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
    (with-current-buffer
            (url-retrieve-synchronously
                     "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
                (goto-char (point-max))
                    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
(require 'evil)
(evil-mode 1)

(define-key key-translation-map (kbd ":") (kbd ";"))
(define-key key-translation-map (kbd ";") (kbd ":"))

(load-theme 'wombat)
(global-linum-mode 1)
(setq linum-format "%d ")
(menu-bar-mode -1)
(setq
    my:el-get-packages
    '(el-get
      evil))

(setq my:el-get-packages
      (append my:el-get-packages
              (mapcar #'el-get-source-name el-get-sources)))

(el-get 'sync my:el-get-packages)


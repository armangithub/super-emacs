(defvar super-emacs--my-keyboard-bindings 
  '(("C-S-c C-S-c" . mc/edit-lines)
    ("C-}" . mc/mark-next-like-this)
    ("C-{" . mc/mark-previous-like-this)
    ("C-|" . mc/mark-all-like-this)
    ("C->" . ace-jump-mode)
    ("C-<" . ace-jump-mode-pop-mark)
    ("M-/" . undo-tree-visualize)
    ("C-\"" . theme-looper-enable-next-theme)
    ("C-M-'" . myterminal-controls-open-controls)
    ("C-c M-x" . execute-extended-command)
    ("M-x" . helm-M-x)
    ("C-x b" . helm-mini)
    ("C-x C-b" . helm-buffers-list)
    ("C-x C-f" . helm-find-files)
    ("C-x C-r" . helm-recentf)
    ("M-y" . helm-show-kill-ring)
    ("C-c o" . switch-window)
    ("C-S-<up>" . buf-move-up)
    ("C-S-<down>" . buf-move-down)
    ("C-S-<left>" . buf-move-left)
    ("C-S-<right>" . buf-move-right)
    ("<f5>" . super-emacs-reload-current-file)))

(defun super-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(mapc 'super-emacs-apply-keyboard-bindings
      super-emacs--my-keyboard-bindings)

;; path is valid for straight.el
(defcustom etorio-level1-sound (when load-file-name
                                      (concat (file-name-directory load-file-name)
                                              "../../repos/etorio/music/10-21-23.webm"))
  "The path to a sound file that´s to be played when a timeblock has started."
  :group 'etorio
  :type 'file)

(defun etorio-play-level1-sound ()
  (interactive)
  (start-process "mplayer" nil "mplayer" etorio-level1-sound)
  )

(defun kill-etorio-sound ()
  (interactive)
 (start-process "killall"  nil  "killall" "killall" "mplayer")
 )


(defun etorio-quit ()
  (interactive)
  (kill-etorio-sound)
  (kill-buffer "*etorio*"))


(etorio-play-level1-sound)

(provide 'etorio)

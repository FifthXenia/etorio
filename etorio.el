;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; XPM Images
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defconst etorio-iron-xpm "\
/* XPM */
static char * target_xpm[] = {
\"32 32 3 1\",
\"  c None\",
\". c black\",
\"X c grey\",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
};
")

(defconst etorio-copper-xpm "\
/* XPM */
static char * target_xpm[] = {
\"32 32 3 1\",
\"  c None\",
\". c black\",
\"X c brown\",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"       .   .   .   .   .        \",
\"      .X. .X. .X. .X. .X.       \",
\"       .   .   .   .   .        \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
};
")

(defconst etorio-wood-xpm "\
/* XPM */
static char * target_xpm[] = {
\"32 32 4 1\",
\"  c None\",
\". c black\",
\"g c green\",
\"b c brown\",
\"                                \",
\"                                \",
\"     .                          \",
\"    .g.        .......          \",
\"   .ggg.      .ggggggg.         \",
\"  .ggggg.     .ggggggg.         \",
\"  ..ggg..      ..ggg..          \",
\"   .bbb.        .bbb.           \",
\"   .bbb.        .bbb.           \",
\"   .....        .....           \",
\"                                \",
\"           ..........           \",
\"          .bbbbbbbbbb.          \",
\"         .bbbbbbbbbbbb.         \",
\"        .bbbbbbbbbbbbbb.        \",
\"        .bbbbbbbbbbbbbb.        \",
\"        .bbbbbbbbbbbbbb.        \",
\"        .bbbbbbbbbbbbbb.        \",
\"         .bbbbbbbbbbbb.         \",
\"          .bbbbbbbbbb.          \",
\"           ..........           \",
\"                                \",
\"     .                          \",
\"    .g.        .......          \",
\"   .ggg.      .ggggggg.         \",
\"  .ggggg.     .ggggggg.         \",
\"  ..ggg..      ..ggg..          \",
\"   .bbb.        .bbb.           \",
\"   .bbb.        .bbb.           \",
\"   .....        .....           \",
\"                                \",
\"                                \",
};
")

(defconst etorio-player-xpm "\
/* XPM */
static char * target_xpm[] = {
\"32 32 3 1\",
\"  c None\",
\". c green\",     
\"X c red\",       
\"                                \",
\" .....                    ..... \",
\" .XXX.                    .XXX. \",
\" .X...                    ...X. \",
\" .X.                        .X. \",
\" ...                        ... \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\"                                \",
\" ...                        ... \",
\" .X.                        .X. \",
\" .X...                    ...X. \",
\" .XXX.                    .XXX. \",
\" .....                    ..... \",
\"                                \",
};                              
")  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; elisp code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(defun etorio-play-level1-sound-42x ()
  (interactive)
 (start-process "mplayer"  nil  "mplayer" etorio-level1-sound "-loop" "0" "-speed" "0.42")
 )

(defun kill-etorio-sound ()
  (interactive)
 (start-process "killall"  nil  "killall" "killall" "mplayer")
 )


(defun etorio-quit ()
  (interactive)
  (kill-etorio-sound)
  (kill-buffer "etorio"))

(defun etorio ()
  (interactive)
  (switch-to-buffer "etorio")
  (etorio-play-level1-sound-42x)
  )

;; X = wall
;; . = coal
;; w = wood
;; c = copper
;; i = iron
;; a = aqua (water)
(setq level1-map-old
"XXXXX
X...X
X...X
X...X
XXXXX"
)

(setq level1-map
"###################
#                 #
#                 #
#      i      cc  #
#      i      cc  #
#         ww      #
#         ww    ..#
#               ..#
#          @    ..#
#                 #
###################")

(setq level-x 5)
(setq level-y 5)

(defun levelToVector (level)
  (insert level)
  )

(defun drawGrid (level)
  (insert level)
  )



(provide 'etorio)

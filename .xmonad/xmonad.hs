import System.IO

import XMonad

import XMonad.Actions.CycleWS
import XMonad.Actions.SpawnOn
import XMonad.Actions.WindowGo

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.UrgencyHook

import XMonad.Layout.Circle
import XMonad.Layout.GridVariants
import XMonad.Layout.Spacing
import XMonad.Layout.Spiral

import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig

-- palette
white = "#ffffff"
black = "#000000"

gray1 = "#eeeeee"
gray2 = "#cccccc"
gray3 = "#999999"
gray4 = "#666666"
gray5 = "#333333"

magenta1 = "#ffd8ff"
magenta2 = "#ff89ff"
magenta3 = "#ff00ff"
magenta4 = "#890089"
magenta5 = "#3b003b"

palBackground = gray1
palLight = gray2
palHeavy = black

palTextInvisible = gray2
palTextFaint = gray4
palText = black
palTextEmphasis = magenta4

main = do
  xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
  xmonad $ withUrgencyHook NoUrgencyHook $ def
    { terminal           = "xterm"
    , focusFollowsMouse  = False
    , modMask            = mod4Mask
    , workspaces         = map show [1 .. 9]

    , borderWidth        = 1
    , normalBorderColor  = palLight
    , focusedBorderColor = palHeavy

    , startupHook     = startupHook def >> spawnHere
                          ("xsetroot -solid \'" ++ palBackground ++ "\'")
    , manageHook      = manageH
    , layoutHook      = layoutH
    , logHook         = logH xmproc
    , handleEventHook = docksEventHook
    }
    `additionalKeysP`
    [
      -- using emacs-style
      -- M- mod
      -- C- ctrl
      -- S- shift
      -- M1- alt
      -- see [https://hackage.haskell.org/package/xmonad-contrib-0.16/docs/
      -- XMonad-Util-EZConfig.html#g:3] for full reference

      -- volume
      ("<XF86AudioLowerVolume>" , spawn "amixer -q set Master 5%-")
    , ("<XF86AudioRaiseVolume>" , spawn "amixer -q set Master 5%+")
    , ("<XF86AudioMute>"        , spawn "amixer -q set Master toggle")

     -- brightness
    , ("<XF86MonBrightnessUp>"
      , spawn "brightnessctl --device=intel_backlight set +5%")
    , ("<XF86MonBrightnessDown>"
      , spawn "brightnessctl --device=intel_backlight set 5%-")

     -- lock screen
    , ("<XF86ScreenSaver>" , spawn "slock")

     -- window
    , ("M-<L>" , prevWS)
    , ("M-<R>" , nextWS)
    , ("M-S-<L>" , shiftToPrev >> prevWS)
    , ("M-S-<R>" , shiftToNext >> nextWS)

     -- layout
    , ("M-M1-<U>", sendMessage $ IncMasterCols 1)
    , ("M-M1-<D>", sendMessage $ IncMasterCols (-1))
    , ("M-M1-<R>", sendMessage $ IncMasterRows 1)
    , ("M-M1-<L>", sendMessage $ IncMasterRows (-1))
    , ("M-M1-<Page_Up>", sendMessage Expand)
    , ("M-M1-<Page_Down>", sendMessage Shrink)

     -- spawning applications
    , ("M-S-h" , spawn "xterm htop")
    , ("M-S-e" , spawn "emacs-26.1 -T 'emacs'")
    , ("M-S-w" , spawn "emacs -T 'emacs-w3m' -f w3m")
    , ("M-S-g" , spawn "chromium")
    , ("M-S-p" , spawn "zathura")
    ]

-- manageHook
manageH = manageDocks <+>
          manageSpawn <+>
          manageHook def

-- layout hooks
layoutH = avoidStruts $
  (   SplitGrid XMonad.Layout.GridVariants.R 1 1 (58/100) (16/10) (1/100)
  ||| Full)

-- log hooks
logH xmproc = logHookPP xmproc

logHookPP xmproc =
  dynamicLogWithPP xmobarPP
  {
    -- output to status-bar handle
    ppOutput = hPutStrLn xmproc

    -- ordering of logs
  , ppOrder = \ (ws:l:t:exs) -> [ws, t]

    -- current workspace
  , ppCurrent = xmobarColor palText ""

    -- hidden workspace
  , ppHidden = xmobarColor palTextFaint ""

    -- hidden workspace (w/out window)
  -- , ppHiddenNoWindows = xmobarColor palTextInvisible "" . pad
  , ppHiddenNoWindows = \_ -> ""

    -- urgent workspace
  , ppUrgent = xmobarColor palTextEmphasis ""

    -- workspace separator
  , ppWsSep = " "

    -- layout
  -- , ppLayout = wrap "(" ")" . xmobarColor palText ""
  , ppLayout = xmobarColor palText ""

    -- window title
  , ppTitle = wrap "" "" . xmobarColor palTextEmphasis "" . shorten 30

    -- object separator
  , ppSep = " > "
  }

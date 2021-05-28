Config
  { font = "xft:fira mono:size=9"
  , bgColor = "white"
  , fgColor = "black"
  , position = Top
  , border = BottomB
  , borderColor = "#000000"

  , lowerOnStart = True
  , persistent = True

  , sepChar = "%"
  , alignSep = "}{"
  , template = " %date% > %default:Master% > %StdinReader% > \
               \} | { \
               \< %wlp3s0wi%%wlp3s0% \
               \< %coretemp% < %cpu% < %memory% < %disku% < %battery% "

  , commands =
    [
      -- Battery
      Run Battery
      [ "-t" , "BAT <acstatus> <left> (<timeleft>)"
      , "-S" , "True"
      , "-L" , "25"
      , "-H" , "75"
      , "-l" , "#d13838"
      , "-n" , "darkorange"
      , "-h" , "darkgreen"
      , "--"
      , "-O" , ">>"
      , "-i" , "><"
      , "-o" , "<<"
      ] 10

      -- Brightness
    , Run Brightness
      [ "-t" , "BRI <percent>"
      , "-S" , "True"
      , "-L" , "33"
      , "-H" , "66"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      , "-D" , "/sys/class/intel_backlight/"
      ] 10

      -- Core Temperature
    , Run CoreTemp
      [ "-t" , "TEM <core0>"
      , "-L" , "40"
      , "-H" , "60"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- CPU Statistics
    , Run Cpu
      [ "-t" , "CPU <total>"
      , "-S" , "True"
      , "-m" , "3"
      , "-L" , "33"
      , "-H" , "66"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- Date
    , Run Date "%b %d %a %H:%M:%S" "date" 10

      -- Disk Usage
    , Run DiskU
      [("/" , "DSK <used>/<size>")]
      [ "-S" , "True"
      , "-L" , "33"
      , "-H" , "66"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- Lock Status
    , Run Locks

      -- Memory Statistics
    , Run Memory
      [ "-t" , "MEM <usedratio>"
      , "-S" , "True"
      , "-m" , "3"
      , "-L" , "50"
      , "-H" , "75"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- Network Statistics
    , Run Network "wlp3s0"
      [ "-t" , " (<rx> | <tx>)"
      , "-S" , "True"
      , "-L" , "1000"
      , "-H" , "1000000"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- Standard Input Reader
    , Run StdinReader

      -- Top Process
    , Run TopProc
      [ "-t" , "TOP <both1>"
      , "-S" , "True"
      , "-L" , "33"
      , "-H" , "66"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- Up-time
    , Run Uptime
      [ "-t" , "UPT <days> <hours> <minutes> <seconds>"
      , "-S" , "True"
      ] 10

      -- Volume
    , Run Volume "default" "Master"
      [ "-t" , "VOL <volume>"
      , "-S" , "True"
      , "-L" , "60"
      , "-H" , "80"
      , "-l" , "darkgreen"
      , "-n" , "darkorange"
      , "-h" , "#d13838"
      ] 10

      -- Wireless
    , Run Wireless "wlp3s0"
      [ "-t" , "<essid> <quality>"
      , "-S" , "true"
      , "-L" , "50"
      , "-H" , "80"
      , "-l" , "#d13838"
      , "-n" , "darkorange"
      , "-h" , "darkgreen"
      ] 10
    ]
 }

local lary3d = [[
     _/_/_/                  _/                  _/_/_/                      _/      
  _/          _/_/      _/_/_/    _/_/        _/          _/_/      _/_/    _/  _/   
 _/        _/    _/  _/    _/  _/_/_/_/        _/_/    _/    _/  _/    _/  _/_/      
_/        _/    _/  _/    _/  _/                  _/  _/    _/  _/    _/  _/  _/     
 _/_/_/    _/_/      _/_/_/    _/_/_/      _/_/_/      _/_/      _/_/    _/    _/    
        ]]

local pawp = [[
                                                               
   ___               _             _____                 _     
 _(___)_            (_)  ____     (_____)               (_) _  
(_)   (_)  ___    __(_) (____)   (_)___     ___    ___  (_)(_) 
(_)    _  (___)  (____)(_)_(_)     (___)_  (___)  (___) (___)  
(_)___(_)(_)_(_)(_)_(_)(__)__      ____(_)(_)_(_)(_)_(_)(_)(_) 
  (___)   (___)  (____) (____)    (_____)  (___)  (___) (_) (_)
                                                               
                                                               
]]

local speed = [[

_________       _________           ________              ______  
__  ____/______ ______  /_____      __  ___/______ ______ ___  /__
_  /     _  __ \_  __  / _  _ \     _____ \ _  __ \_  __ \__  //_/
/ /___   / /_/ // /_/ /  /  __/     ____/ / / /_/ // /_/ /_  ,<   
\____/   \____/ \__,_/   \___/      /____/  \____/ \____/ /_/|_|  
                                                                  
]]

local ansiShadow = [[
 ██████╗ ██████╗ ██████╗ ███████╗    ███████╗ ██████╗  ██████╗ ██╗  ██╗
██╔════╝██╔═══██╗██╔══██╗██╔════╝    ██╔════╝██╔═══██╗██╔═══██╗██║ ██╔╝
██║     ██║   ██║██║  ██║█████╗      ███████╗██║   ██║██║   ██║█████╔╝ 
██║     ██║   ██║██║  ██║██╔══╝      ╚════██║██║   ██║██║   ██║██╔═██╗ 
╚██████╗╚██████╔╝██████╔╝███████╗    ███████║╚██████╔╝╚██████╔╝██║  ██╗
 ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝
]]

local ansiShadowCode = [[
   ______            __    
  / ____/____   ____/ /___ 
 / /    / __ \ / __  // _ \
/ /___ / /_/ // /_/ //  __/
\____/ \____/ \__,_/ \___/ 
       _____                __  
      / ___/ ____   ____   / /__
      \__ \ / __ \ / __ \ / //_/
     ___/ // /_/ // /_/ // ,<   
    /____/ \____/ \____//_/|_|  
                            
]]

local nvscript = [[
     ,gggg,                                       ,gg,                                     
   ,88"""Y8b,                   8I               i8""8i                          ,dPYb,    
  d8"     `Y8                   8I               `8,,8'                          IP'`Yb    
 d8'   8b  d8                   8I                `88'                           I8  8I    
,8I    "Y88P'                   8I                dP"8,                          I8  8bgg, 
I8'            ,ggggg,    ,gggg,8I   ,ggg,       dP' `8a    ,ggggg,    ,ggggg,   I8 dP" "8 
d8            dP"  "Y8gggdP"  "Y8I  i8" "8i     dP'   `Yb  dP"  "Y8gggdP"  "Y8gggI8d8bggP" 
Y8,          i8'    ,8I i8'    ,8I  I8, ,8I _ ,dP'     I8 i8'    ,8I i8'    ,8I  I8P' "Yb, 
`Yba,,_____,,d8,   ,d8',d8,   ,d8b, `YbadP' "888,,____,dP,d8,   ,d8',d8,   ,d8' ,d8    `Yb,
  `"Y8888888P"Y8888P"  P"Y8888P"`Y8888P"Y888a8P"Y88888P" P"Y8888P"  P"Y8888P"   88P      Y8
]]

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    { "<leader>.", false },
  },
  ---@type snacks.Config
  opts = {
    dashboard = {
      pane_gap = 1, -- empty columns between vertical panes
      preset = {
        header = ansiShadow,
      },
      sections = {
        {
          pane = 1,
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
          { section = "startup" },
        },
        {
          pane = 2,
          {
            section = "terminal",
            -- cmd = "chafa ~/.dotfiles/pokemon-image/bird.png --format symbols -c full --size 60x17 --stretch",
            -- cmd = "ascii-image-converter ~/.dotfiles/pokemon-image/pen.png -C -c",
            -- cmd = "asciiquarium",
            -- cmd = "cmatrix -r -u 3",
            -- cmd = "cmatrix -C yellow -u 7",
            -- cmd = "sl -l | lolcat",
            -- cmd = "nyancat",
            cmd = "cbonsai -l -t 0.01 -w 1 -i",
            -- cmd = "gh screensaver -sfireworks",
            -- cmd = "gh screensaver -s starfield -- --speed=10 --density=500",
            -- random = 10,
            height = 30,
            -- width = 30,
            -- padding = 1,
            indent = 4,
          },
        },
      },
    },
  },
}

#!/usr/bin/env bash

sketchybar -m --bar blur_radius=50                                                            \
                    height=32                                                                 \
              --add item apple.logo left                                                      \
              --set apple.logo icon=􀣺                                                         \
                               icon.font="SF Pro:Black:16.0"                                  \
                               label.drawing=off                                              \
                               click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                               popup.background.border_width=2                                \
                               popup.background.corner_radius=3                                \
                               popup.background.border_color=0xff9dd274                       \
                                                                                              \
              --default background.padding_left=5                                             \
                        background.padding_right=5                                            \
                        icon.padding_right=5                                                  \
                        icon.font="SF Pro:Bold:16.0"                                          \
                        label.font="SF Pro:Semibold:13.0"                                     \
                                                                                              \
              --add item apple.preferences popup.apple.logo                                   \
              --set apple.preferences icon=􀺽                                                  \
                               label="Preferences"                                            \
                               click_script="open -a 'System Preferences';                    
                                             sketchybar -m --set apple.logo popup.drawing=off"\
              --add item apple.activity popup.apple.logo                                      \
              --set apple.activity icon=􀒓                                                     \
                               label="Activity"                                               \
                               click_script="open -a 'Activity Monitor';                       
                                             sketchybar -m --set apple.logo popup.drawing=off"\
              --add item apple.lock popup.apple.logo                                          \
              --set apple.lock icon=􀒳                                                         \
                               label="Lock Screen"                                            \
                               click_script="pmset displaysleepnow;                           
                                             sketchybar -m --set apple.logo popup.drawing=off"


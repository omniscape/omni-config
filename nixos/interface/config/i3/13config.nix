{ config }:
''
# compton: compositor
exec_always --no-startup-id compton ~/.config/compton/compton.conf
# polybar: status bar
exec_always --no-startup-id ~/.config/polybar/launch.sh

# i3-gaps config (v4)
# Ref: https://i3wm.org/docs/userguide.html
# TODO: modular config

# ------------------------ Config {{{
# ------------------------ Variables {{{
# TODO: reconfigure keybindings
# $ctrl: system
set $ctrl Ctrl
# $sup: apps
set $sup Mod4
# $mod: visuals
set $mod Mod1

set $term1 alacritty
set $term2 st
set $term3 kitty

# SCAPES
set $sense "SENSE"
set $dash "DASH"
set $mecha "MECHA"
set $labs "LABS"
set $atlas "ATLAS"
set $studio "STUDIO"
set $comms "COMMS"
set $edge "EDGE"
set $vision "VISION"
set $scape "CUSTOM"

# NEXUS
set $scope exec --no-startup-id rofi -modi "scope:~/.config/rofi/omni/scope.sh" -show scope

# NEXUS
set $nexus exec --no-startup-id rofi -modi "nexus:~/.config/rofi/omni/nexus/nexus.sh" -show nexus
set $n_ecosystem exec --no-startup-id rofi -modi "n_ecosystem:~/.config/rofi/omni/nexus/ecosystem/ecosystem.sh" -show n_ecosystem
set $n_persona exec --no-startup-id rofi -modi "n_persona:~/.config/rofi/omni/nexus/persona/persona.sh" -show n_persona
set $n_spectrum exec --no-startup-id rofi -modi "n_spectrum:~/.config/rofi/omni/nexus/spectrum/spectrum.sh" -show n_spectrum
set $n_dynamo exec --no-startup-id rofi -modi "n_dynamo:~/.config/rofi/omni/nexus/dynamo/dynamo.sh" -show n_dynamo

# PORTALS
set $portals exec rofi -modi "portals:~/.config/rofi/omni/portals/portal.sh" -show portals -theme "~/.config/rofi/omni/portals/portal.rasi"
set $p_sense exec --no-startup-id rofi -no-lazy-grab -modi "p_sense:~/.config/rofi/omni/portals/scapes/sense/sense.sh" -show p_sense
set $p_dash exec --no-startup-id rofi -no-lazy-grab -modi "p_dash:~/.config/rofi/omni/portals/scapes/dash/dash.sh" -show p_dash
set $p_mecha exec --no-startup-id rofi -no-lazy-grab -modi "p_mecha:~/.config/rofi/omni/portals/scapes/mecha/mecha.sh" -show p_mecha
set $p_labs exec --no-startup-id rofi -no-lazy-grab -modi "p_labs:~/.config/rofi/omni/portals/scapes/labs/labs.sh" -show p_labs
set $p_atlas exec --no-startup-id rofi -no-lazy-grab -modi "p_atlas:~/.config/rofi/omni/portals/scapes/atlas/atlas.sh" -show p_atlas
set $p_studio exec --no-startup-id rofi -no-lazy-grab -modi "p_studio:~/.config/rofi/omni/portals/scapes/studio/studio.sh" -show p_studio
set $p_comms exec --no-startup-id rofi -no-lazy-grab -modi "p_comms:~/.config/rofi/omni/portals/scapes/comms/comms.sh" -show p_comms
set $p_edge exec --no-startup-id rofi -no-lazy-grab -modi "p_edge:~/.config/rofi/omni/portals/scapes/edge/edge.sh" -show p_edge
set $p_vision exec --no-startup-id rofi -no-lazy-grab -modi "p_vision:~/.config/rofi/omni/portals/scapes/vision/vision.sh" -show p_vision

# STATUS
  #powermenu

# appsmenu
set $appsmenu rofi -no-lazy-grab -show drun -theme ~/.config/rofi/omni/appsmenu.rasi

# rofi: program launcher / portals = quick links / shortcuts
  # TODO: replace polybar legend with rofi launcher
  # TODO: add flow
bindsym $sup+z exec $appsmenu --no-startup-id
bindsym $sup+s exec rofi -show window -theme ~/.config/rofi/omni/sidebar.rasi
bindsym $sup+o exec rofi -show run -theme ~/.config/rofi/omni/options-menu.rasi
bindsym $sup+a exec rofi -show drun -theme ~/.config/rofi/omni/drun.rasi

# OMNI ------------>
bindcode $mod+90 $scope
bindsym $mod+Mod2+KP_0 $scope

# PORTAL ------------>
bindcode $sup+90 $portals
bindsym $sup+Mod2+KP_0 $portals

bindcode $sup+87 $p_sense
bindsym $sup+Mod2+KP_1 $p_sense

bindcode $sup+88 $p_dash
bindsym $sup+Mod2+KP_2 $p_dash

bindcode $sup+89 $p_mecha
bindsym $sup+Mod2+KP_3 $p_mecha

bindcode $sup+83 $p_labs
bindsym $sup+Mod2+KP_4 $p_labs

bindcode $sup+84 $p_atlas
bindsym $sup+Mod2+KP_5 $p_atlas

bindcode $sup+85 $p_studio
bindsym $sup+Mod2+KP_6 $p_studio

bindcode $sup+79 $p_comms
bindsym $sup+Mod2+KP_7 $p_comms

bindcode $sup+80 $p_edge
bindsym $sup+Mod2+KP_8 $p_edge

# NEXUS ------------>
bindcode $sup+81 $p_vision
bindsym $sup+Mod2+KP_9 $p_vision

bindcode $mod+83 $n_ecosystem
bindsym $mod+Mod2+KP_4 $n_ecosystem

bindcode $mod+88 $n_persona
bindsym $mod+Mod2+KP_2 $n_persona

bindcode $mod+84 $nexus
bindsym $mod+Mod2+KP_5 $nexus

bindcode $mod+80 $n_spectrum
bindsym $mod+Mod2+KP_8 $n_spectrum

bindcode $mod+85 $n_dynamo
bindsym $mod+Mod2+KP_6 $n_dynamo


# TODO: neofetch
# TODO: ranger
# TODO: dunst
# TODO: pywal
# TODO: connman
# TODO: gotop
# TODO: xsettingsd
# TODO: lxappearance
# TODO: redshift
# TODO: starship

# ------- }}}

# ------------------------ Scripts {{{
set $i3exit ./scripts/i3exit.sh
# ------- }}}

# ------------------------ Apps {{{
## TODO: add apps + configs + scripts + assigns

# ------- }}}


# ------------------------ Fonts {{{
# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 8
# ------- }}}

# ------------------------ Window Styles {{{

# No titlebars
for_window [class="^.*"] border pixel 0
# ------- }}}

# Set colors from Xresources
# Change 'color7' and 'color2' to whatever colors you want i3 to use
# from the generated scheme.
# NOTE: The '#f0f0f0' in the lines below is the color i3 will use if
# it fails to get colors from Xresources.
set_from_resource $fg i3wm.color7 #000000
set_from_resource $bg i3wm.color2 #f0f0f0

# class                 border  backgr. text indicator child_border
client.focused          $bg     $bg     $fg  $bg       $bg
client.focused_inactive $bg     $bg     $fg  $bg       $bg
client.unfocused        $bg     $bg     $fg  $bg       $bg
client.urgent           $bg     $bg     $fg  $bg       $bg
client.placeholder      $bg     $bg     $fg  $bg       $bg

client.background       $bg

# ------------------------ Window Movement {{{

# terms -> TODO: add starship
bindsym $sup+Return exec $term1
bindsym $sup+Shift+Return exec $term2
bindsym $sup+t exec $term3

# kill
bindsym $sup+q kill

# focus
bindsym $mod+u [urgent=latest] focus

bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# movement
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# splitting
bindsym $mod+t split toggle
bindsym $mod+$ctrl+h split h
bindsym $mod+$ctrl+v split v

# fullscreen
bindsym $mod+f fullscreen toggle

# container layout
bindsym $mod+e layout toggle split
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed

# floating
floating_modifier $mod
bindsym $mod+a focus mode_toggle
bindsym $mod+Shift+a floating toggle

# parent/child focus
bindsym $mod+p focus parent
# bindsym $mod+d focus child

# resizing
bindsym $mod+h resize shrink width 5 px or 5 ppt
bindsym $mod+j resize grow height 5 px or 5 ppt
bindsym $mod+k resize shrink height 5 px or 5 ppt
bindsym $mod+l resize grow width 5 px or 5 ppt

bindsym $mod+Shift+h resize shrink width 1 px or 1 ppt
bindsym $mod+Shift+j resize grow height 1 px or 1 ppt
bindsym $mod+Shift+k resize shrink height 1 px or 1 ppt
bindsym $mod+Shift+l resize grow width 1 px or 1 ppt
# ------- }}}

# ------------------------ Gaps {{{
gaps inner 25
gaps outer 25

bindsym $mod+minus gaps inner all minus 5
bindsym $mod+plus gaps inner all plus 5
bindsym $mod+Shift+minus gaps outer all minus 5
bindsym $mod+Shift+plus gaps outer all plus 5
# ------- }}}

# ------------------------ Workspaces {{{

# active workspace

  ## nested modes -> personas -> scapes -> workspaces

  bindsym $mod+1 workspace $sense
  bindsym $mod+2 workspace $dash
  bindsym $mod+3 workspace $mecha
  bindsym $mod+4 workspace $labs
  bindsym $mod+5 workspace $atlas
  bindsym $mod+6 workspace $studio
  bindsym $mod+7 workspace $comms
  bindsym $mod+8 workspace $edge
  bindsym $mod+9 workspace $vision
  bindsym $mod+0 workspace $scape

  bindsym $mod+n workspace next
  bindsym $mod+b workspace prev

# assign apps to workspaces
  ## for_window [class="APP"] move --no-auto-back-and-forth to workspace $ws
  ## assign [class="app"] $dash

  # 1 sense: wiki, analytics, visuals
  #assign [class="app"] $sense

  # 2 dash: dynamic dashboard
  #assign [class="app"] $dash

  # 3 mecha: system internals
  #assign [class="app"] $mecha

  # 4 labs: experimentation / simulation / chaos suite
  #assign [class="vim"] $labs

  # 5 atlas: p2p maps / search engine / global hud
  #assign [class="app"] $atlas

  # 6 studio: design / dev / creation
  #assign [class="app"] $studio

  # 7 comms: chats + emails / crowd + crew + mesh + clusters
  #assign [class="app"] $comms
  #assign [class="Keybase"] $comms TODO: terminal with keybase cli
  #assign [class="Signal"] $comms TODO: terminal with signal cli
  #assign [class="Matric"] $comms TODO: terminal with matrix cli

  # 8 edge: sovereignty membrane
  #assign [class="app"] $edge
  assign [class="Firefox"] $edge

  # 9 vision: future life / inspiration / media
  #assign [class="app"] $vision


# move to workspace
  bindsym $mod+Shift+1 move container to workspace $sense
  bindsym $mod+Shift+2 move container to workspace $dash
  bindsym $mod+Shift+3 move container to workspace $mecha
  bindsym $mod+Shift+4 move container to workspace $labs
  bindsym $mod+Shift+5 move container to workspace $atlas
  bindsym $mod+Shift+6 move container to workspace $studio
  bindsym $mod+Shift+7 move container to workspace $comms
  bindsym $mod+Shift+8 move container to workspace $edge
  bindsym $mod+Shift+9 move container to workspace $vision

  # workspace_auto_back_and_forth yes
# ------- }}}

# ------------------------ i3 Keybindings {{{
bindsym $mod+Shift+c reload
bindsym $mod+Shift+r restart
# ------- }}}

# ------------------------ i3exit Keybindings {{{
# TODO: integrate rofi
set $mode_system System (l) lock, (e) logout, (s) suspend, (h) hibernate, (r) reboot, (Shift+s) shutdown
mode "$mode_system" {
  # i3exit script
  bindsym l exec --no-startup-id i3exit lock, mode "default"
  bindsym e exec --no-startup-id i3exit exit, mode "default"
  bindsym s exec --no-startup-id i3exit suspend, mode "default"
  bindsym h exec --no-startup-id i3exit hibernate, mode "default"
  bindsym r exec --no-startup-id i3exit reboot, mode "default"
  bindsym Shift+s --no-startup-id i3exit shutdown -i, mode "default"

  # systemctl
#  bindsym l exec --no-startup-id i3lock-color, mode "default"
#  bindsym e exec --no-startup-id i3-msg exit, mode "default"
#  bindsym s exec --no-startup-id systemctl suspend, mode "default"
#  bindsym h exec --no-startup-id systemctl hibernate, mode "default"
#  bindsym r exec --no-startup-id systemctl reboot, mode "default"
#  bindsym Shift+s --no-startup-id systemctl poweroff, mode "default"

  # close "$mode_system": Escape
  bindsym Escape mode "default"
}
bindsym $sup+Escape mode "$mode_system"

# ------- }}}

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
#exec --no-startup-id nm-applet

# Use pactl to adjust volume in PulseAudio.
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10%
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10%
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle

${import {inherit config;}}
''

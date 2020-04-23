{ config, pkgs, lib, ... }: {

  environment.etc = {

    # alacritty
      ".config/alacritty/alacritty.yml".source = ./alacritty/alacritty.yml;

    # compton
      ".config/compton/compton.conf".source = ./compton/compton.conf;

    # conky

    #  i3
      ".config/i3/config".source = ./i3/config;

      # i3/scripts
        ".config/i3/scripts/i3exit.sh".source = ./i3/scripts/i3exit.sh;
        ".config/i3/scripts/rofi-confirm".source = ./i3/scripts/rofi-confirm;
        ".config/i3/scripts/rofi-option-menu".source = ./i3/scripts/rofi-option-menu;

      # i3/scapes

        # i3/scapes/atlas
          #".config/i3/scapes/?".source = ./i3/scapes/?;
        # i3/scapes/comms
        # i3/scapes/dash
        # i3/scapes/edge
        # i3/scapes/labs
        # i3/scapes/mecha
        # i3/scapes/media
        # i3/scapes/sense
        # i3/scapes/studio

    # kitty
      ".config/kitty/kitty.conf".source = ./kitty/kitty.conf;

    # neofetch
      ".config/neofetch/config.conf".source = ./neofetch/config.conf;

    # polybar
      ".config/polybar/config.ini".source = ./polybar/config.ini;
      ".config/polybar/launch.sh".source = ./polybar/launch.sh;

      # polybar/bars
        ".config/polybar/bars/config.ini".source = ./polybar/bars/config.ini;
        ".config/polybar/bars/navbar.ini".source = ./polybar/bars/navbar.ini;
        ".config/polybar/bars/sysbar.ini".source = ./polybar/bars/sysbar.ini;

      # polybar/colors
        ".config/polybar/colors/config.ini".source = ./polybar/colors/config.ini;

      # polybar/fonts
        ".config/polybar/fonts/icomoon-feather.ttf".source = ./polybar/fonts/icomoon-feather.ttf;
        ".config/polybar/fonts/iosevka-regular.ttf".source = ./polybar/fonts/iosevka-regular.ttf;

      # polybar/modules
        ".config/polybar/modules/i3.ini".source = ./polybar/modules/i3.ini;
        ".config/polybar/modules/kaos.ini".source = ./polybar/modules/kaos.ini;
        ".config/polybar/modules/legend.ini".source = ./polybar/modules/legend.ini;

      # polybar/scripts
        #".config/polybar/scripts/?".source = ./polybar/scripts/?;

    # ranger
      ".config/ranger/rc.conf".source = ./ranger/rc.conf;

    # rofi
      ".config/rofi/config.rasi".source = ./rofi/config.rasi;
      ".config/rofi/confirm-dialog.rasi".source = ./rofi/confirm-dialog.rasi;

      # omni
        ".config/rofi/omni/scope.sh".source = ./rofi/omni/scope.sh;
        ".config/rofi/omni/scope.rasi".source = ./rofi/omni/scope.rasi;

        ".config/rofi/omni/appsmenu.rasi".source = ./rofi/omni/appsmenu.rasi;
        ".config/rofi/omni/carlson.rasi".source = ./rofi/omni/carlson.rasi;
        ".config/rofi/omni/drun.rasi".source = ./rofi/omni/drun.rasi;
        ".config/rofi/omni/options-menu.rasi".source = ./rofi/omni/options-menu.rasi;
        ".config/rofi/omni/sidebar.rasi".source = ./rofi/omni/sidebar.rasi;

        # omni/nexus
          ".config/rofi/omni/nexus/nexus.rasi".source = ./rofi/omni/nexus/nexus.rasi;
          ".config/rofi/omni/nexus/nexus.sh".source = ./rofi/omni/nexus/nexus.sh;

          # omni/nexus/dynamo
            ".config/rofi/omni/nexus/dynamo/dynamo.rasi".source = ./rofi/omni/nexus/dynamo/dynamo.rasi;
            ".config/rofi/omni/nexus/dynamo/dynamo.sh".source = ./rofi/omni/nexus/dynamo/dynamo.sh;

          # omni/nexus/ecosystem
            ".config/rofi/omni/nexus/ecosystem/ecosystem.rasi".source = ./rofi/omni/nexus/ecosystem/ecosystem.rasi;
            ".config/rofi/omni/nexus/ecosystem/ecosystem.sh".source = ./rofi/omni/nexus/ecosystem/ecosystem.sh;

          # omni/nexus/persona
            ".config/rofi/omni/nexus/persona/persona.rasi".source = ./rofi/omni/nexus/persona/persona.rasi;
            ".config/rofi/omni/nexus/persona/persona.sh".source = ./rofi/omni/nexus/persona/persona.sh;

          # omni/nexus/spectrum
            ".config/rofi/omni/nexus/spectrum/spectrum.rasi".source = ./rofi/omni/nexus/spectrum/spectrum.rasi;
            ".config/rofi/omni/nexus/spectrum/spectrum.sh".source = ./rofi/omni/nexus/spectrum/spectrum.sh;

        # omni/portals
          ".config/rofi/omni/portals/portal.rasi".source = ./rofi/omni/portals/portal.rasi;
          ".config/rofi/omni/portals/portal.sh".source = ./rofi/omni/portals/portal.sh;
          ".config/rofi/omni/portals/i3_empty_workspace.sh".source = ./rofi/omni/portals/i3_empty_workspace.sh;

          # omni/portals/scapes

            # omni/portals/scapes/sense
            ".config/rofi/omni/portals/scapes/sense/sense.rasi".source = ./rofi/omni/portals/scapes/sense/sense.rasi;
            ".config/rofi/omni/portals/scapes/sense/sense.sh".source = ./rofi/omni/portals/scapes/sense/sense.sh;

            # omni/portals/scapes/dash
            ".config/rofi/omni/portals/scapes/dash/dash.rasi".source = ./rofi/omni/portals/scapes/dash/dash.rasi;
            ".config/rofi/omni/portals/scapes/dash/dash.sh".source = ./rofi/omni/portals/scapes/dash/dash.sh;

            # omni/portals/scapes/mecha
            ".config/rofi/omni/portals/scapes/mecha/mecha.rasi".source = ./rofi/omni/portals/scapes/mecha/mecha.rasi;
            ".config/rofi/omni/portals/scapes/mecha/mecha.sh".source = ./rofi/omni/portals/scapes/mecha/mecha.sh;

            # omni/portals/scapes/labs
            ".config/rofi/omni/portals/scapes/labs/labs.rasi".source = ./rofi/omni/portals/scapes/labs/labs.rasi;
            ".config/rofi/omni/portals/scapes/labs/labs.sh".source = ./rofi/omni/portals/scapes/labs/labs.sh;

            # omni/portals/scapes/atlas
              ".config/rofi/omni/portals/scapes/atlas/atlas.rasi".source = ./rofi/omni/portals/scapes/atlas/atlas.rasi;
              ".config/rofi/omni/portals/scapes/atlas/atlas.sh".source = ./rofi/omni/portals/scapes/atlas/atlas.sh;

            # omni/portals/scapes/studio
            ".config/rofi/omni/portals/scapes/studio/studio.rasi".source = ./rofi/omni/portals/scapes/studio/studio.rasi;
            ".config/rofi/omni/portals/scapes/studio/studio.sh".source = ./rofi/omni/portals/scapes/studio/studio.sh;

            # omni/portals/scapes/comms
              ".config/rofi/omni/portals/scapes/comms/comms.rasi".source = ./rofi/omni/portals/scapes/comms/comms.rasi;
              ".config/rofi/omni/portals/scapes/comms/comms.sh".source = ./rofi/omni/portals/scapes/comms/comms.sh;

            # omni/portals/scapes/edge
              ".config/rofi/omni/portals/scapes/edge/edge.rasi".source = ./rofi/omni/portals/scapes/edge/edge.rasi;
              ".config/rofi/omni/portals/scapes/edge/edge.sh".source = ./rofi/omni/portals/scapes/edge/edge.sh;

            # omni/portals/scapes/vision
              ".config/rofi/omni/portals/scapes/vision/vision.rasi".source = ./rofi/omni/portals/scapes/vision/vision.rasi;
              ".config/rofi/omni/portals/scapes/vision/vision.sh".source = ./rofi/omni/portals/scapes/vision/vision.sh;



        # omni/status

      # scripts
        ".config/rofi/scripts/appsmenu.sh".source = ./rofi/scripts/appsmenu.sh;
        ".config/rofi/scripts/network.sh".source = ./rofi/scripts/network.sh;

      # themes
        ".config/rofi/themes/shared/option-menu.rasi".source = ./rofi/themes/shared/option-menu.rasi;
        ".config/rofi/themes/shared/settings.rasi".source = ./rofi/themes/shared/settings.rasi;

        # shared

          # shared/colorschemes
            ".config/rofi/themes/shared/colorschemes/dark-steel-blue.rasi".source = ./rofi/themes/shared/colorschemes/dark-steel-blue.rasi;
            ".config/rofi/themes/shared/colorschemes/base16-atlas.rasi".source = ./rofi/themes/shared/colorschemes/base16-atlas.rasi;

          # shared/resolutions
            ".config/rofi/themes/shared/resolutions/1920x1080.rasi".source = ./rofi/themes/shared/resolutions/1920x1080.rasi;

    # st
    #".config/st/modules/appsmenu.rasi".source = ./st/modules/appsmenu.rasi;

    # wal
      # wal/templates
        ".config/wal/templates/colors-kitty.conf".source = ./wal/templates/colors-kitty.conf;
        ".config/wal/templates/colors-rofi-dark.rasi".source = ./wal/templates/colors-rofi-dark.rasi;
        ".config/wal/templates/colors-rofi-light.rasi".source = ./wal/templates/colors-rofi-light.rasi;
        ".config/wal/templates/colors-speedcrunch.json".source = ./wal/templates/colors-speedcrunch.json;
        ".config/wal/templates/colors-wal-st.h".source = ./wal/templates/colors-wal-st.h;
        ".config/wal/templates/colors-wal-tabbed.h".source = ./wal/templates/colors-wal-tabbed.h;
        ".config/wal/templates/colors.Xresources".source = ./wal/templates/colors.Xresources;

    # plymouth: TODO
  };

}

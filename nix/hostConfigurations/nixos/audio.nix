
{ config, pkgs, ... }:

{
    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;

    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        
        # If you want to use JACK applications, uncomment this
        #jack.enable = true;

        # use the example session manager (no others are packaged yet so this is enabled by default,
        # no need to redefine it in your config for now)
        #media-session.enable = true;

        wireplumber.extraConfig = {
            "noise-suppression" = {
            "context.modules" = [
                {
                name = "libpipewire-module-filter-chain";
                args = {
                    "node.description" = "Noise Canceling Source";
                    "media.name" = "Noise Canceling Source";
                    "filter.graph" = {
                    nodes = [
                        {
                        type = "ladspa";
                        name = "rnnoise";
                        plugin = "librnnoise_ladspa.so";
                        label = "noise_suppressor_mono";
                        control = {
                            "VAD Threshold (%)" = 50.0;
                        };
                        }
                    ];
                    };
                    "capture.props" = {
                    "node.name" = "capture.rnnoise";
                    "media.class" = "Audio/Source";
                    };
                    "playback.props" = {
                    "node.name" = "rnnoise.source";
                    "media.class" = "Audio/Source";
                    };
                };
                }
            ];
            };
        };
    };

    services.pipewire = {
        enable = true;
        pulse.enable = true;
        alsa.enable = true;

        
    };

    sound.enable = true;
}

{...}: {
  services.searx = {
    enable = true;

    settings = {
      server = {
        bind_address = "127.0.0.1";
        port = 6900;
        secret_key = "angelkawaii2";
        image_proxy = true;
        method = "GET";
      };

      general.instance_name = "インターネット";

      search = {
        safe_search = 0;
        autocomplete = "google";
        formats = ["html" "json"];
      };

      ui = {
        results_on_new_tab = false;
        query_in_title = true;

        theme_args.simple_style = "black";
      };

      use_default_settings = {
        engines = {
          keep_only = [
            "apple maps"
            "arch linux wiki"
            "artic"
            "arxiv"
            "askubuntu"
            "bandcamp"
            "brave"
            "bt4g"
            "chefkoch (DE)"
            "currency"
            "dailymotion"
            "deezer"
            "deviantart"
            "devicons"
            "dictzone"
            "docker hub"
            "duckduckgo"
            "duckduckgo images"
            "etymonline"
            "flickr"
            "genius"
            "gentoo"
            "github"
            "google"
            "google cse"
            "google cse images"
            "google news"
            "google scholar"
            "hoogle"
            "imdb"
            "jisho (JA)"
            "kickass"
            "library genesis"
            "lingva"
            "lucide"
            "mankier"
            "mdn"
            "mixcloud"
            "mymemory translated"
            "nixos wiki"
            "openairedatasets"
            "openairepublications"
            "openstreetmap"
            "openverse"
            "pdbe"
            "pexels"
            "photon"
            "pinterest"
            "piratebay"
            "pypi"
            "pubmed"
            "radio browser"
            "reddit"
            "reuters"
            "semantic scholar"
            "sepiasearch"
            "solidtorrents"
            "soundcloud"
            "stackoverflow"
            "startpage"
            "superuser"
            "unsplash"
            "vimeo"
            "wikidata"
            "wikicommons.audio"
            "wikicommons.files"
            "wikicommons.videos"
            "wikinews"
            "wikipedia"
            "wiktionary"
            "wordnik"
            "wttr.in"
            "youtube"
          ];
        };
      };

      engines = [
        {
          name = "apple maps";
          disabled = false;
        }
        {
          name = "arch linux wiki";
          disabled = false;
        }
        {
          name = "artic";
          disabled = false;
        }
        {
          name = "arxiv";
          disabled = false;
        }
        {
          name = "askubuntu";
          disabled = false;
        }
        {
          name = "bandcamp";
          disabled = false;
        }
        {
          name = "brave";
          disabled = false;
        }
        {
          name = "bt4g";
          disabled = false;
        }
        {
          name = "chefkoch (DE)";
          disabled = false;
        }
        {
          name = "currency";
          disabled = false;
        }
        {
          name = "dailymotion";
          disabled = false;
        }
        {
          name = "deezer";
          disabled = false;
        }
        {
          name = "deviantart";
          disabled = false;
        }
        {
          name = "devicons";
          disabled = false;
        }
        {
          name = "dictzone";
          disabled = false;
        }
        {
          name = "docker hub";
          disabled = false;
        }
        {
          name = "duckduckgo";
          disabled = false;
        }
        {
          name = "duckduckgo images";
          disabled = false;
        }
        {
          name = "etymonline";
          disabled = false;
        }
        {
          name = "flickr";
          disabled = false;
        }
        {
          name = "genius";
          disabled = false;
        }
        {
          name = "gentoo";
          disabled = false;
        }
        {
          name = "github";
          disabled = false;
        }
        {
          name = "google";
          disabled = false;
          weight = 3;
        }
        {
          name = "google cse";
          disabled = false;
          weight = 3;
        }
        {
          name = "google cse images";
          disabled = false;
        }
        {
          name = "google news";
          disabled = false;
        }
        {
          name = "google scholar";
          disabled = false;
        }
        {
          name = "hoogle";
          disabled = false;
        }
        {
          name = "imdb";
          disabled = false;
        }
        {
          name = "jisho (JA)";
          disabled = false;
        }
        {
          name = "kickass";
          disabled = false;
        }
        {
          name = "library genesis";
          disabled = false;
        }
        {
          name = "lingva";
          disabled = false;
        }
        {
          name = "lucide";
          disabled = false;
        }
        {
          name = "mankier";
          disabled = false;
        }
        {
          name = "mdn";
          disabled = false;
        }
        {
          name = "mixcloud";
          disabled = false;
        }
        {
          name = "mymemory translated";
          disabled = false;
        }
        {
          name = "nixos wiki";
          disabled = false;
        }
        {
          name = "openairedatasets";
          disabled = false;
        }
        {
          name = "openairepublications";
          disabled = false;
        }
        {
          name = "openstreetmap";
          disabled = false;
        }
        {
          name = "openverse";
          disabled = false;
        }
        {
          name = "pdbe";
          disabled = false;
        }
        {
          name = "pexels";
          disabled = false;
        }
        {
          name = "photon";
          disabled = false;
        }
        {
          name = "pinterest";
          disabled = false;
        }
        {
          name = "piratebay";
          disabled = false;
        }
        {
          name = "pypi";
          disabled = false;
        }
        {
          name = "pubmed";
          disabled = false;
        }
        {
          name = "radio browser";
          disabled = false;
        }
        {
          name = "reddit";
          disabled = false;
        }
        {
          name = "reuters";
          disabled = false;
        }
        {
          name = "semantic scholar";
          disabled = false;
        }
        {
          name = "sepiasearch";
          disabled = false;
        }
        {
          name = "solidtorrents";
          disabled = false;
        }
        {
          name = "soundcloud";
          disabled = false;
        }
        {
          name = "stackoverflow";
          disabled = false;
        }
        {
          name = "startpage";
          disabled = false;
        }
        {
          name = "superuser";
          disabled = false;
        }
        {
          name = "unsplash";
          disabled = false;
        }
        {
          name = "vimeo";
          disabled = false;
        }
        {
          name = "wikidata";
          disabled = false;
        }
        {
          name = "wikicommons.audio";
          disabled = false;
        }
        {
          name = "wikicommons.files";
          disabled = false;
        }
        {
          name = "wikicommons.videos";
          disabled = false;
        }
        {
          name = "wikinews";
          disabled = false;
        }
        {
          name = "wikipedia";
          disabled = false;
        }
        {
          name = "wiktionary";
          disabled = false;
        }
        {
          name = "wordnik";
          disabled = false;
        }
        {
          name = "wttr.in";
          disabled = false;
        }
        {
          name = "youtube";
          disabled = false;
        }
      ];
    };
  };
}

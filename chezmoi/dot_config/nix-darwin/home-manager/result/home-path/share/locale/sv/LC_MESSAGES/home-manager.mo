��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  4   �  *   �  (   �  2     B   B     �  )   �  ;   �  "   �  Q     &   m  .   �     �     �  2   �  9   0  $   j     �  %   �     �  ,   �  U     +   k  �   �  D   G  >   �  8   �  �    �   �  "   m     �     �     �  9   �        
            "                         	   #                                    %                !                                                       $                        %s: unknown option '%s' All done! The home-manager tool should now be installed and you can edit

    %s

to configure Home Manager. Run 'man home-configuration.nix' to
see all available options. Can't inspect options of a flake configuration Can't instantiate a flake configuration Cannot remove the current generation %s Cannot run build in read-only directory Could not find suitable profile directory, tried %s and %s Creating %s... Creating initial Home Manager generation... Home Manager is uninstalled but your home.nix is left untouched. Home Manager not found at %s. Keeping your Home Manager %s in %s is deprecated,
please move it to %s No configuration file found at %s No configuration file found. Please create one at %s No generation with ID %s No generations to expire No home-manager packages seem to be installed. Please set the $EDITOR or $VISUAL environment variable Really uninstall Home Manager? Removing generation %s Run '%s --help' for usage help Sanity checking Nix Switching to empty Home Manager configuration... The fallback Home Manager path %s has been deprecated and a file/directory was found there. The file %s already exists, leaving it unchanged... There is %d unread and relevant news item.
Read it by running the command "%s news". There are %d unread and relevant news items.
Read them by running the command "%s news". This derivation is not buildable, please run it using nix-shell. This is a dry run, nothing will actually be uninstalled. This will remove Home Manager from your system. To remove this warning, do one of the following.

1. Explicitly tell Home Manager to use the path, for example by adding

     { programs.home-manager.path = "%s"; }

   to your configuration.

   If you import Home Manager directly, you can use the `path` parameter

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   when calling the Home Manager package.

2. Remove the deprecated path.

     $ rm -r "%s" Uh oh, the installation failed! Please create an issue at

    %s

if the error seems to be the fault of Home Manager. Unknown "news.display" setting "%s". Unknown argument %s Unknown command: %s Yay! expire-generations expects one argument, got %d. Project-Id-Version: Home Manager
Report-Msgid-Bugs-To: https://github.com/nix-community/home-manager/issues
PO-Revision-Date: 2024-02-18 14:02+0000
Last-Translator: bittin1ddc447d824349b2 <bittin@reimu.nl>
Language-Team: Swedish <https://hosted.weblate.org/projects/home-manager/cli/sv/>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.4
 %s: okänt val '%s' Färdig! Verktyget home-manager borde nu vara installerat och du kan editera

    %s

för att konfigurera Home Manager. Kör 'man home-configuration.nix' för
att se alla tillgängliga alternativ. Kan inte granska alternativ i en flake-konfiguration Kan inte instansera en flake-konfiguration Kan inte ta bort nuvarande generation %s Kan inte bygga i katalog med bara läsrättigheter Kunde inte hitta lämplig profil-katalog, försökte med %s och %s Skapar %s... Skapar initial Home Manager-generation... Home Manager är avinstallerad men din home.nix är orörd. Home Manager hittades inte på %s. Att behålla din Home Manager %s i %s är föråldrat,
snälla flytta den till %s Det finns ingen konfigurationsfil i %s Hittade ingen konfigurationsfil. Skapa en i %s Ingen generation med ID %s Ingen generation att förfalla Paketet home-manager verkar inte vara installerat. Vänligen ställ in miljövariabeln $EDITOR eller $VISUAL Verkligen avinstallera Home Manager? Tar bort generation %s Kör '%s --help' för användarhjälp Kontrollerar att Nix funkar Byter till tom Home Manager-konfiguration... Reservsökvägen för Home Manager %s har fasats ut och en fil/katalog hittades där. Filen %s finns redan, lämnar den orörd... Det finns %d oläst och relevant nyhet.
Läs den genom att köra kommandot "%s news". Det finns %d olästa och relevanta nyheter.
Läs dem genom att köra kommandot "%s news". Denna derivation är inte byggbar, kör den med nix-shell istället. Detta är en testkörning, inget kommer att bli avinstallerat. Detta kommer att ta bort Home Manager från ditt system. För att ta bort denna varning, gör något av följande.

1. Berätta uttryckligen för Home Manager att använda sökvägen, till exempel genom att lägga till

     { programs.home-manager.path = "%s"; }

   till din konfiguration.

   Om du importerar Home Manager direkt kan du använda parametern `path`

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   när du kallar på Home Manager-paketet.

2. Ta bort den föråldrade sökvägen.

     $ rm -r "%s" Ajdå, installationen misslyckades! Skapa gärna en rapport på

    %s

om problemet verkar bero på något Home Manager gör fel. Okänt "news.display"-värde "%s". Okänt argument %s Okänt kommando: %s Hurra! expect-generations förväntar sig ett argument, fick %d. 
��    $      <  5   \      0     1  �   I  .   �  '   $  '   L  '   t  :   �     �  +   �  @        S  F   q  !   �  4   �          (  .   A     p     �     �     �  0   �  [   
  3   f  �   �  @   H  8   �  /   �  �  �  v   �
  $        =     Q     e  0   j  �  �     _  �   {  :   H  +   �  ,   �  #   �  <         =  (   L  K   u  &   �  G   �  '   0  8   X     �  $   �  K   �  !        ?  $   S     x  -   �  X   �  5     �   N  D   �  D   $  -   i  �  �  �   U  *   �               -  1   4        
            !                         	   "                                     $                                                                        #                       %s: unknown option '%s' All done! The home-manager tool should now be installed and you can edit

    %s

to configure Home Manager. Run 'man home-configuration.nix' to
see all available options. Can't inspect options of a flake configuration Can't instantiate a flake configuration Cannot remove the current generation %s Cannot run build in read-only directory Could not find suitable profile directory, tried %s and %s Creating %s... Creating initial Home Manager generation... Home Manager is uninstalled but your home.nix is left untouched. Home Manager not found at %s. Keeping your Home Manager %s in %s is deprecated,
please move it to %s No configuration file found at %s No configuration file found. Please create one at %s No generation with ID %s No generations to expire No home-manager packages seem to be installed. Really uninstall Home Manager? Removing generation %s Run '%s --help' for usage help Sanity checking Nix Switching to empty Home Manager configuration... The fallback Home Manager path %s has been deprecated and a file/directory was found there. The file %s already exists, leaving it unchanged... There is %d unread and relevant news item.
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
PO-Revision-Date: 2024-02-16 22:01+0000
Last-Translator: Robert Helgesson <robert@rycee.net>
Language-Team: Danish <https://hosted.weblate.org/projects/home-manager/cli/da/>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.4
 %s: ukendt indstilling '%s' Alt er færdigt! Home-manager værktøjet burde nu være installeret, og du kan ændre

    %s
 
For at konfigurere Home Manager. Kør 'man home-configuration.nix' for at 
se alle de mulige indstillinger. Kan ikke inspicere indstillinger af en flake konfiguration Kan ikke instantiere en flake konfiguration Kan ikke fjerne den nuværende generation %s Kan ikke bygge i en læs-kun folder Kunne ikke finde en passende profilmappe, forsøgte %s og %s Opretter %s... Laver initial Home Manager generation... Home Manager bliver uinstalleret, men din home.nix bliver forladt uberørt. Home Manager kan ikke findes under %s. At have din Home Manager %s i %s er forældet,
flyt den venligst til %s Ingen konfigurationsfiler fundet ved %s Ingen konfigurationsfiler fundet. Venligst lav en ved %s Ingen generation med ID %s Ingen generationer som skal udløbes Det virker ikke som om der er nogle home-manager pakker der er installeret. Virkelig uinstaller Home Manager? Fjern generation %s Kør '%s --help' for brugsvejledning Tjekker fornuften af Nix Skifter til tom Home Manager konfiguration... Fallback-stien til Home Manager %s er blevet forældet, og en fil/mappe blev fundet der. Filen %s findes allerede, lader den være uændret... Der er %d ulæst og relavante nyheder.
Læs den ved at køre "%s news". Der er %d ulæste og relavante nyheder.
Læs dem ved at køre "%s news". Denne derivation er ikke bygbar, venligst kør den gennem nix-shell. Dette er en tør kørsel, intet vil rent faktisk blive uinstalleret. Dette vil fjerne Home Manager fra dit system. For at fjerne denne advarsel, gør en af følgende:

1. Fortæl eksplicit at Home Manager skal bruge stien, for eksempel ved at tilføje

     { programs.home-manager.path = "%s"; }

   til din konfiguration.

   Hvis du importerer Home Manager direkte, kan du bruge `path` parameteren

      pkgs.callPackage /sti/til/home-manager-pakke { path = "%s"; }

    når du kalder Home Manager pakken.

2. Fjern den forældede sti.

      $ rm -r "%s" Åh nej, installationen fejlede! Venligst opret en fejlrapport ved

    %s
 
hvis fejlen fremstår som forskyldt af Home Manager. Ubekændt "news.display" indstilling "%s". Ubekendt argument %s Ubekendt kommando: %s Juhuu! expire-generations forventer et argument, fik %d. 
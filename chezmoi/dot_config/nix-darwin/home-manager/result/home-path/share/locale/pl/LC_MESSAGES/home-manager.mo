��    $      <  5   \      0     1  �   I  .   �  '   $  '   L  '   t  :   �     �  +   �  @        S  F   q  !   �  4   �          (  .   A     p     �     �     �  0   �  [   
  3   f  �   �  @   H  8   �  /   �  �  �  v   �
  $        =     Q     e  0   j  �  �     �  �   �  )   �  2   �  *   �  :     G   X     �  /   �  M   �  !   .  U   P  (   �  @   �          '  9   D  (   ~     �  *   �     �  6     U   <  4   �     �  R   �  5     *   Q  �  |  �   e  0   �     '     <     Q  <   V        
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
Language-Team: Polish <https://hosted.weblate.org/projects/home-manager/cli/pl/>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Weblate 5.4
 %s: nieznana opcja „%s” Skończone! Narzędzie home-manager powinno być zainstalowane i możesz edytować

    %s

by skonfigurować Home Managera. Uruchom „man home-configuration.nix” aby
sprawdzić wszystkie możliwe opcje konfiguracyjne. Nie mogę sprawdzić konfiguracji flake'a Nie mogę utworzyć instancji konfiguracji flake'a Nie mogę usunąć bieżącej generacji %s Nie mogę uruchomić budowania w katalogu tylko-do-odczytu Nie można znaleźć odpowiedniego katalogu profilu, próbowano %s i %s Tworzenie %s... Tworzenie pierwotnej generacji Home Managera... Home Manager jest usunięty ale twój home.nix jest pozostawiony nietknięty. Home Manager nie znaleziony w %s. Przechowywanie %s Home Managera w %s jest przestarzałe,
proszę przenieść go do %s Nie znaleziono pliku konfiguracyjnego %s Nie znaleziono pliku konfiguracyjnego. Proszę utworzyć plik %s Brak generacji z ID %s Brak wygasających generacji Pakiety home-manager nie wydają się być zainstalowane. Jesteś pewien usunięcia Home Managera? Usuwanie generacji %s Uruchom „%s --help” by otrzymać pomoc Sprawdzanie poprawności Nix Przełączanie do pustej konfiguracji Home Managera... Rezerwowa ścieżka Home Managera %s jest przestarzała ale zawiera plik lub katalog. Plik %s już istnieje, pozostawianie go bez zmian... Jest %d nieodczytana wiadomość.
Możesz ją odczytać uruchamiając „%s news”. Jest %d nieodczytanych wiadomości.
Możesz je odczytać uruchamiając „%s news”. Jest %d nieodczytanych wiadomości.
Możesz je odczytać uruchamiając „%s news”. Ta paczka (derivation) nie da się budować, proszę uruchom używając nix-shell. To jest próba, faktycznie nic nie będzie usunięte. To usunie Home Managera z twojego systemu. Zrób jedną z tych rzeczy aby aby pozbyć się tego ostrzeżenia:

1. Jednoznacznie skonfiguruj Home Manager żeby używał konkretnej ścieżki, np. dodając

     { programs.home-manager.path = "%s"; }

   do twojej konfiguracji.

   Jeśli importujesz Home Manager bezpośrednio, możesz użyć parametru `path`

     pkgs.callPackage /ścieżka/do/pakiet-home-manager { path = "%s"; }

   przy wywołaniu pakietu Home Manager.

2. Usuń przestarzałą ścieżkę.

     $ rm -r "%s" Ojoj, instalacja nie powiodła się! Proszę opisz problem na

    %s

jeśli myślisz, że problem spowodowany jest przez błąd Home Managera. Nieznane ustawienie „%s” „news.display”. Nieznany argument %s Nieznana komenda: %s Jej! expire-generations oczekuje jednego argumentu, otrzymano %d. 
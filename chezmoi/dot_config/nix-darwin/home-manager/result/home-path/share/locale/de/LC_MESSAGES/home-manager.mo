��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  F   �  1   �  4     A   L  U   �     �  ,   �  I      %   j  Z   �  +   �  E        ]     x  >   �  ?   �  2        I  ;   `     �  5   �  s   �  :   e  �   �  I   v  @   �  2     �  4  �   /  +   �     �     �       ?           
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
PO-Revision-Date: 2024-03-04 18:50+0000
Last-Translator: Robert Helgesson <robert@rycee.net>
Language-Team: German <https://hosted.weblate.org/projects/home-manager/cli/de/>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.5-dev
 %s: unbekannte Option '%s' Alles fertig! Das Home Manager Tool sollte nun installiert sein. Sie können

    %s

bearbeiten um Home Manager zu konfigurieren. Führen Sie
'man home-configuration.nix' aus, um alle verfügbaren Optionen zu
sehen. Die Optionen einer Flake-Konfiguration können nicht inspiziert werden Kann eine Flake-Konfiguration nicht instanziieren Die jetzige Generation %s kann nicht entfernt werden Build kann nicht im schreibgeschützten Ordner ausgeführt werden Es konnte kein passendes Profilverzeichnis gefunden werden, %s und %s wurden versucht Erstelle %s... Erstelle initiale Home Manager Generation... Home Manager ist installiert, aber Ihre home.nix Datei bleibt unberührt. Home Manager nicht gefunden unter %s. Das Beibehalten Ihres Home Manager %s in %s ist veraltet.
Bitte verschieben Sie es nach %s Keine Konfigurationsdatei unter %s gefunden Keine Konfigurationsdatei gefunden. Bitte erstellen Sie eine unter %s Keine Generation mit ID %s Keine ablaufenden Generationen Es scheint, als ob keine Home Manager Pakete installiert sind. Bitte definieren Sie die $EDITOR oder $VISUAL Umgebungsvariable Möchten Sie wirklich Home Manager deinstallieren? Entferne Generation %s Führe '%s --help' aus, um Hilfe zur Verwendung zu erhalten Überprüfe zur Sicherheit Nix Wechsle zu einer leeren Home Manager Konfiguration... Der Ausweichpfad für Home-Manager unter %s ist veraltet. Es wurde jedoch eine Datei/ein Verzeichnis dort gefunden. Die Datei %s existiert bereits, sie bleibt unverändert... Es gibt eine ungelesene und relevante Nachricht.
Lesen Sie sie, indem Sie den Befehl "%s news" ausführen. Es gibt %d ungelesene und relevante Nachrichten.
Lesen Sie sie, indem Sie den Befehl "%s news" ausführen. Diese Derivation ist nicht kompilierbar. Bitte führen Sie nix-shell aus. Dies ist ein Probelauf, es wird nichts vom System deinstalliert. Dies wird Home Manager von Ihrem System entfernen. Um diese Warnung zu entfernen, führen Sie einen der folgenden Schritte aus.

1. Weisen Sie Home Manager explizit an, den Pfad zu verwenden, indem Sie z. B. :

     { programs.home-manager.path = "%s"; }

   zu Ihrer Konfiguration hinzufügen.

   Sollten Sie Home Manager direkt importieren, können Sie den Parameter `path` verwenden, wenn Sie das Home Manager-Paket aufrufen:

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

2. Entfernen Sie den veralteten Pfad:

     $ rm -r "%s" Ups, die Installation schlug fehl. Bitte erstellen Sie ein Issue unter

     %s

falls der Fehler auf Home Manager zurückzuführen ist. Unbekannte "news.display" Einstellung "%s". Unbekannte Argumente %s Unbekannter Befehl: %s Juhu! expire-generations erwartet ein Argument, hat aber %d erhalten. 
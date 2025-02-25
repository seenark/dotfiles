��    $      <  5   \      0     1  �   I  .   �  '   $  '   L  '   t  :   �     �  +   �  @        S  F   q  !   �  4   �          (  .   A     p     �     �     �  0   �  [   
  3   f  �   �  @   H  8   �  /   �  �  �  v   �
  $        =     Q     e  0   j  �  �     �  �   �  6   �  *   �  *   �  B     M   T     �  1   �  I   �  1   ,  T   ^  :   �  N   �     =  %   Z  /   �  4   �     �  .   �     -  0   M  k   ~  4   �  �     Y     ;   p  @   �    �  }   �  0   t     �     �     �  =   �        
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
Language-Team: Romanian <https://hosted.weblate.org/projects/home-manager/cli/ro/>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2;
X-Generator: Weblate 5.4
 %s: opțiune necunoscută '%s' Totul este gata! Unealta home-manager ar trebui să fie instalata și acum puteți edita

        %s

ca să configurați Home Manager. Rulați 'man home-configuration.nix' pentru a
putea vedea toate opțiunile. Nu se pot inspecta opțiunile unei configurații flake Nu se poate instanția o configurare flake Nu se poate șterge generația curentă %s Nu se poate rula construirea într-un director numai pentru citire Nu s-a putut găsi un director cu un profil potrivit, s-a încercat %s și %s Creând %s... Se creează generația Home Manager inițială... Home Manager a fost dezinstalat, dar fișierul home.nix a rămas neatins. Home Manager nu a putut fi găsit la locația %s. Păstrarea Home Managerului %s în $s e depreciat,
vă rugăm să îl mutați în %s Nu s-a găsit niciun fișier de configurare la locația %s Nu s-a găsit niciun fișier de configurare. Vă rugăm să creați unul la %s Nicio generație cu ID-ul %s Nu există generații care să expire Nu există instalat niciun pachet home-manager. Doriți cu adevărat să dezinstalați Home Manager? Se șterge generația %s Rulați '%s --help' pentru ajutor de utilizare Se verifică corectitudinea Nix Se trece la o configurare Home Manager goală... Locația de rezervă %s pentru Home Manager a fost depreciată și a fost găsit un fișier/director acolo. Fișierul %s există deja, îl lăsăm neschimbat... Există %d știre necitită și relevantă.
Citiți-o folosind comanda "%s news". Există %d știri necitite și relevante.
Citiți-le folosind comanda "%s news". Există %d de știri necitite și relevante.
Citiți-le folosind comanda "%s news". Această derivație nu poate fi construită, vă rugăm să o rulați folosind nix-shell. Aceasta este o rulare de test, nimic nu v-a fi dezinstalat. Aceasta v-a înlătura Home Manager din sistemul dumneavoastră. Ca să înlăturați această avertizare, faceți una dintre următoarele

1. Spuneți în mod explicit lui Home Manager să folosească locația,  ca exemplu prin adăugarea

          { programs.home-manager.path = "%s"; }

     în fila de configurare a dumneavoastră.

     Dacă importați direct Home Manager, puteți folosi parametrul `path`

          pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

      cănd rulați Home Manager.

2. Ștergeți locația depreciata.

           $ rm -r "%s" Uh oh, instalația a eșuat! Vă rugăm creați o problemă la

        %s

dacă eroarea pare să fie din vina Home manager. Opțiunea "news.display" este necunoscută "%s". Argument necunoscut %s Comandă necunoscută: %s Ura! expire-generations se așteaptă la un argument, a primit %d. 
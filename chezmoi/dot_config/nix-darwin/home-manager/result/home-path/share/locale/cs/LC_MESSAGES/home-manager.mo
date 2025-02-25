��    $      <  5   \      0     1  �   I  .   �  '   $  '   L  '   t  :   �     �  +   �  @        S  F   q  !   �  4   �          (  .   A     p     �     �     �  0   �  [   
  3   f  �   �  @   H  8   �  /   �  �  �  v   �
  $        =     Q     e  0   j  �  �     }  �   �  ,   d  *   �  &   �  C   �  ?   '     g  ,   y  C   �      �  J     (   V  ;        �  (   �  4      "   5     X  -   p     �  4   �  Z   �  0   G  �   x  F   L  5   �  /   �  �  �  t   �  (   N     w     �     �  <   �        
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
Language-Team: Czech <https://hosted.weblate.org/projects/home-manager/cli/cs/>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=((n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2);
X-Generator: Weblate 5.4
 %s: neznámý parametr '%s' Vše dokončeno! Nástroj home-manager je nainstalován. Můžete upravovat

    %s

čimž konfigurujete Home Manager. Spusťte 'man home-configuration.nix' 
k zobrazení všech dostupných možností. Nelze ověřit parametry z konfigurace flake Nelze vytvořit instanci flake konfigurace Nelze odstranit současnou generaci %s Sestavení nelze provést v adresáři dostupném pouze pro čtení Nebyl nalezen vhodný adresář profilu, byly zkoušeny %s a %s Vytvářím %s... Vytvářím první generaci Home Manageru... Home Manager se odinstalovává, ale váš home.nix nebyl změněn. Home Manager nebyl nalezen v %s. Udržovat Home Manager %s v %s je zastaralé,
prosím přesuňte jej do %s V %s nebyl nalezen konfigurační soubor Konfigurační soubor nenalezen. Prosím vytvořte jej v %s Generace s ID %s neexistuje Žádná generace k vypršení platnosti Žádný home-manager balíček není nainstalován. Opravdu odinstalovat Home Manager? Odstraňuji generaci %s Spusťte '%s --help' pro vypsání nápovědy Kontrola správnosti Nix Přepínám na prázdou konfiguraci Home Manageru... Záložní cesta pro Homa Manager % je zastaralá, byl v ní ale nalezen soubor/adresář. Soubor %s již existuje, ponechán beze změn... %d nepřečtená novinka.
Přečtěte ji pomocí příkazu "%s news". %d nepřečtené novinky.
Přečtěte je pomocí příkazu "%s news". %d nepřečtených novinek.
Přečtěte je pomocí příkazu "%s news". Tuto odvozeninu nelze sestavit, prosím spusťte ji pomocí nix-shell. Toto zkouška na nečisto, nic nebude odinstalováno. Toto odstraní Home Manager z vašeho systému. K odstranění tohoto varování udělejte jednu z následujících operací.

1. Jmenovitě určete Home Manageru cestu kterou má použít, například přidáním

     { programs.home-manager.path = "%s"; }

   do vašá konfigurace.

   pokud importujete Home Manager přímo, můžete použít proměnou `path`

     pkgs.callPackage /cesta/k/home-manager-package { path = "%s"; }

   pro volání balíčku Home Manager.

2. Odstraňte zastaralou cestu.

     $ rm -r "%s" Ehm ehm, instalace se nezdařila! Pokud chyba vypadá jako
chyba Homa manageru, prosím založte problém na

    %s Neznáme nastavení "news.display" "%s". Neznámý parametr %s Neznámý příkaz: %s Hurá! expire-generations očekává jeden parametr, přítomno %d. 
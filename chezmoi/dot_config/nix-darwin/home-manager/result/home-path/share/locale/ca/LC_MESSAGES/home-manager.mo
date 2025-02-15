��    $      <  5   \      0     1  �   I  .   �  '   $  '   L  '   t  :   �     �  +   �  @        S  F   q  !   �  4   �          (  .   A     p     �     �     �  0   �  [   
  3   f  �   �  @   H  8   �  /   �  �  �  v   �
  $        =     Q     e  0   j  �  �     `  �   {  A   ;  ,   }  +   �  A   �  I        b  ,   o  P   �  $   �  J     /   ]  E   �  #   �  %   �  1     2   O     �  +   �     �  1   �  `   
  4   k  �   �  S   K  :   �  (   �  �    o   �  0   b     �     �     �  4   �        
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
Language-Team: Catalan <https://hosted.weblate.org/projects/home-manager/cli/ca/>
Language: ca
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.4
 %: opció desconeguda '%s' Tot fet! L'eina home-manager hauria de estar instal·lada i pots editar

    %s

per a configurar Home Manager. Executa 'man home-configuration.nix' per
a veure totes les opcions disponibles. No s'han pogut inspeccionar les opcions de configuració de flake No es pot instanciar una configuració flake Impossible eliminar la generació actual %s Impossible executar la compilació en un directori només lectura No s'ha pogut trobar un directori de perfils adequat, s'ha provat %s i %s Creant %s... Creant generació inicial de Home Manager... Home Manager ha estat desinstal·lat però el vostre home.nix es manté intacte. No s'ha trobat el Home Manager a %s. Mantenir el teu Home Manager %s a %s està obsolet,
si us plau mou-lo a %s No s'ha trobat cap fitxer de configuració a %s No s'ha trobat cap fitxer de configuració. Si us plau, creeu un a %s No existeix la generació amb ID %s No s'han trobat generacions a expirar Cap paquet home-manager sembla estar instal·lat. Estàs segur que vols desinstal·lar Home Manager? Eliminant la generació %s Executa '%s --help' per veure l'ajuda d'ús Comprovant Nix Canviant a configuració buida de Home Manager... La ruta alternativa del Home Manager ha quedat obsoleta i s'ha trobat un fitxer/directori allí. El fitxer %s ja existeix, deixant sense modificar... Hi ha %d notícia rellevant no llegida.
Llegeix-la executant la comanda "%s news". Hi han %d notícies rellevants no llegides.
Llegeix-les executant la comanda "%s news". Aquesta derivació no es pot construir, si us plau executa-la utilitzant nix-shell. Això és un simulacre, res serà realment desinstal·lat. Home Manager serà esborrat del sistema. Per a eliminar aquesta advertència, dugueu a terme una de les següents opcions.

1. Indiqueu explícitament al Home Manager que utilitzi la ruta, per exemple afegint

     { programs.home-manager.path = "%s"; }

   a la vostra configuració.

   Si importeu el Home Manager directament, podeu utilitzar el paràmetre `path`

     pkgs.callPackage /ruta/al/paquet-del-home-manager { path = "%s"; }

   quan invoqueu el paquet del Home Manager.

2. Elimineu la ruta obsoleta.

     $ rm -r "%s" Uh oh, la instal·lació ha fallat! Si us plau, notifica-ho a

    %s

si l'error sembla culpa de Home Manager. Configuració "news.display" no reconeguda "%s". Argument desconegut %s Comanda desconeguda: %s Visca! expire-generations espera un argument, obtinguts %d. 
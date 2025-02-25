��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  A   �  /   �  3     G   G  G   �     �  8   �  @   $      e  O   �  :   �  Q         c     �  5   �  >   �  1     !   H  <   j     �  ;   �  i   �  9   b  �   �  C   t  7   �  1   �  �  "  �     +   �     �     �     �  3           
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
PO-Revision-Date: 2024-03-04 06:44+0000
Last-Translator: Alexis Rossfelder <rossfelderalexis@gmail.com>
Language-Team: French <https://hosted.weblate.org/projects/home-manager/cli/fr/>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 5.5-dev
 %s : option inconnue '%s' Tout est fait! Home Manager devrait désormais être installé et vous pouvez éditer

     %s

pour configurer Home Manager. Pour avoir une liste des options disponibles,
essayez 'man home-configuration.nix'. Impossible d'inspecter les options de la configuration d'un flake Impossible d'instancier une configuration flake Impossible de supprimer la génération courante %s Impossible de lancer une compilation dans un dossier en écriture seule Impossible de trouver le dossier de profil approprié, essayé %s et %s Création de %s ... Création de la génération initiale de Home Manager... Home Manager est désinstallé mais votre home.nix reste intact. Home Manager indisponible à %s. Garder votre Home Manager %s dans %s est obsolète,
Veuillez le déplacer à %s Aucun fichier de configuration trouvé à l'emplacement %s Aucun fichier de configuration trouvé. Veuillez en créer un à l'emplacement %s Aucune génération avec l'ID %s Aucune génération expirée Aucun package home-manager ne semble être installé. Veuillez remplir la variable d'environnement $EDITOR ou VISUAL Voulez-vous vraiment désinstaller Home Manager ? Suppression de la génération %s Exécuter « %s --help » pour de l'aide sur l'utilisation Vérification de Nix Changement vers une configuration vierge de Home Manager... Le chemin d'accès de secours vers Home Manager %s est obsolète et un fichier/dossier y a été trouvé. Le fichier %s existe déjà, il sera laissé inchangé... Il y a %d nouvel élément non lu et pertinent.
Vous pouvez le lire en exécutant la commande "%s news". Il y a %d nouveaux éléments non lus et pertinents.
Vous pouvez les lire en exécutant la commande "%s news". Cette dérivation ne peut être construite, essayez avec nix-shell. C'est un essai, rien ne sera réellement désinstallé. Cela va supprimer Home Manager de votre système. Pour supprimer cet avertissement, exécutez l'une des actions suivantes :

1. Préciser explicitement à Home Manager d'utiliser le chemin d'accès, par exemple en ajoutant ceci à votre configuration :

	{ programs.home-manager.path = "%s" ; }

Si vous importez Home Manager directement, vous pouvez utiliser le paramètre `path` au lancement du package :

	pkgs.callPackage /path/to/home-manager-package { path = "%s" ; }

2. Supprimez le chemin d'accès obsolète.

	$ rm -r "%s" Uh oh, l'installation n'a pas réussi! Veuillez signaler cette erreur à l'adresse suivante

     %s

si l'erreur semble être liée à Home Manager. Configuration "news.display" inconnue "%s". Argument inconnu %s Commande inconnue : %s Yay ! expire-generations attend un argument, a obtenu %d. 
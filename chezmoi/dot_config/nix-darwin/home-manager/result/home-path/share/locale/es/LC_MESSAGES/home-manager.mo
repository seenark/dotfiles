��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  ?   z  .   �  *   �  6     W   K     �  .   �  <   �  *     I   H  -   �  A   �  "     +   %  7   Q  ;   �     �     �  "   �       4   )  f   ^  4   �  �   �  >   �  8   �  '     �  6  m     1   t     �     �     �  9   �        
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
PO-Revision-Date: 2024-02-21 12:02+0000
Last-Translator: gallegonovato <fran-carro@hotmail.es>
Language-Team: Spanish <https://hosted.weblate.org/projects/home-manager/cli/es/>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.5-dev
 %s: opción desconocida '%s' Listo! home-manager ha sido instalado y ahora puede editar

    %s

para configurar Home Manager. Ejecute 'man home-configuration.nix' para
ver todas las opciones disponibles. No se pudo inspeccionar las opciones de la configuración flake No se pudo instanciar una configuración flake No se pudo borrar la generación actual %s No se puede ejecutar en un directorio de sólo lectura No se ha podido encontrar un directorio de perfiles adecuado, se ha probado con %s y %s Creando %s... Creando generación inicial de Home Manager... Home Manager desinstalado pero no se ha modificado home.nix. No se ha encontrado el Home Manager en %s. Mantener tu Home Manager %s en %s está obsoleto,
por favor muévalo a %s Archivo de configuración no encontrado en %s Archivo de configuración no encontrado. Por favor cree uno en %s No existe la generación con ID %s No se encontraron generaciones para expirar No se encontró ningún paquete home-manager instalado. Por favor, defina la variable del entorno $EDITOR o $VISUAL Desinstalar Home Manager? Borrando generación %s Ejecute '%s --help' para ver ayuda Chequeando Nix Cambiando a configuración vacía de Home Manager... La ruta alternativa de Home Manager %s ha quedado obsoleta y se encontró un archivo/directorio allí. El fichero %s ya existe, dejándolo sin modificar... Hay %d noticia relevante no leída.
Léala ejecutando el comando "%s news". Hay %d noticias relevantes no leídas.
Léalas ejecutando el comando "%s news". Esta derivación no se puede construir, ejecute con nix-shell. Este es un simulacro, nada será realmente desinstalado. Home Manager será borrado del sistema. Para eliminar esta advertencia, realiza una de las siguientes acciones.

1. Indica explícitamente a Home Manager que utilice la ruta, por ejemplo añadiendo

     { programs.home-manager.path = "%s"; }

   a tu configuración.

   Si importa Home Manager directamente, puede utilizar el parámetro `path`

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   al llamar al paquete Home Manager.

2. Elimina la ruta obsoleta.

     $ rm -r "%s" La instalación ha fallado. Por favor notifíquelo en

    %s

si el error parecer ser culpa de Home Manager. Configuración "news.display" no reconocida "%s". Argumento desconocido %s Comando desconocido %s Bien! expire-generations espera un argumento pero se dieron %d. 
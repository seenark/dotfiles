��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  :   �  /   �  0   �  =   /  N   m     �  2   �  F   �  (   D  T   m  +   �  B   �     1     O  =   o  >   �  (   �       ,   /     \  5   m  f   �  0   
  �   ;  K   �  A     .   Z  �  �  �   �  (        E     _     w  >   ~        
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
PO-Revision-Date: 2024-02-29 10:10+0000
Last-Translator: FedFer98123 <fede.ferrari123@gmail.com>
Language-Team: Italian <https://hosted.weblate.org/projects/home-manager/cli/it/>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.5-dev
 %s: opzione sconosciuta '%s' Tutto fatto! Home-manager dovrebbe essere installato e puoi modificare

· · · · %s

per configurare Home Manager. Esegui 'man home-configurazion.nix' per
consultare tutte le opzioni disponibili. Impossibile ispezionare le opzioni di configurazione flake Impossibile istanziare una configurazione flake Impossibile rimuovere la generazione corrente %s Impossibile eseguire la build in una cartella in sola lettura Impossibile trovare la directory del profilo adatta, si è provato con %s e %s Creando %s... Creando la generazione iniziale di Home Manager... Home Manager è disinstallato ma la tua home.nix non è stata toccata. Home Manager non è stato trovato in %s. Mantere il tuo Home Manger su %s su %s è obsoleto,
si raccomanda di spostarlo su %s Nessun file di configurazione trovato in %s Nessun file di configurazione trovato. Per favore creane uno in %s Nessuna generazione con ID %s Nessuna generazione in scadenza Sembrerebbe che nessun pacchetto home-manager sia installato. Per favore definisci le variabili d'ambiente $EDITOR o $VISUAL Vuoi davvero disinstallare Home Manager? Rimuovo la generazione %s Esegui '%s --help' per le informazioni d'uso Controllando Nix Passaando ad una configurazione Home Manager vuota... Il percorso di riserva di Home Manager %s è stato deprecato e un file/directory è stato trovato lì. Il file %s esiste già, non verrà modificato... C'è %d novità rilevante non letta.
Leggila con il comando "%s news". Ci sono %d novità rilevanti non lette.
Leggile con il comando "%s news". Questa derivazione non è compilabile, prova ad eseguirla usando nix-shell. Questo è un avvio a secco, nulla verrà realmente disinstallato. Questo rimuoverà Home Manger dal tuo sistema. Per rimuovere questo avvertimento, esegui queste istruzioni.

1.Di esplicitamente a Home Manager di usare il percorso, per esempio aggiungendo

· · · · · { programs.home-manager.path = "%s"; }

nella tua configurazione.

· · · Se hai importato Home Manager direttamente, puoi usare il parametro `path`

· · · · · pkgs.callPackage /percorso/di/home-manager-package { path = "%s";}

· · · quando chiami il pacchetto Home Manager

2. Rimuovi il percorso obsoleto

· · · · · $ rm -r "%s" Oh oh, l'installazione non è andata a buon fine! Per favore aprire un ticket issue a

· · · · %s

se l'errore sembra essere causato da Home Manager. Opzione "news.display" sconosciuta "%s". Argomento sconosciuto: %s Comando sconosciuto: %s Urrà! expire-generations si aspetta un solo argomento, invece di %d. 
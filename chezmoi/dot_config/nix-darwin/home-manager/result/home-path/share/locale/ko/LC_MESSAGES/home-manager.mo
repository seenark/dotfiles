Þ    %      D  5   l      @     A  «   Y  .     '   4  '   \  '     :   ¬     ç  +   ö  @   "     c  F     !   È  4   ê          8  .   Q  6        ·     Ö     í       0      [   Q  3   ­  ­   á  @     8   Ð  /   		  ®  9	  v   è
  $   _               ¬  0   ±  ¶  â       ä   ¸  1     .   Ï  +   þ  >   *  [   i     Å  5   ß  D     .   Z  q     +   û  M   '  -   u  (   £  I   Ì  :     +   Q     }  8        Ô  /   ó     #  ;   ±  u   í  `   c  J   Ä  8     <  H       -   %     S     r       f           
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
PO-Revision-Date: 2024-03-19 04:01+0000
Last-Translator: honnip <me@honnip.page>
Language-Team: Korean <https://hosted.weblate.org/projects/home-manager/cli/ko/>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Weblate 5.5-dev
 %s: ì ì ìë ìµì '%s' ìë£! í ë§¤ëì  ëêµ¬ë¤ì´ ì¤ì¹ ëìê³  ì´ì  

    %s

íì¼ì ìì í´ì í ë§¤ëì ë¥¼ ì¤ì í  ì ììµëë¤. 'man home-configuration.nix'ë¥¼
ì¤íí´ì ê°ë¥í ëª¨ë  ìµìì ì´í´ë³´ì­ìì¤. flake ì¤ì ì ìµìë¤ì ê²ì¬í  ì ìì flake ì¤ì ì ì¸ì¤í´ì¤í í  ì ìì íì¬ ì¸ëì¸ %së¥¼ ì­ì í  ì ìì ì½ê¸°ì ì© í´ëìì ë¹ëë¥¼ ì¤íí  ì ììµëë¤ %sì %së¥¼ ìëíì§ë§, ì í©í íë¡íì¼ ëë í ë¦¬ë¥¼ ì°¾ì ì ììµëë¤ %së¥¼ ìì±íë ì¤... ìµì´ì í ë§¤ëì  ì¸ëë¥¼ ìì±íë ì¤... í ë§¤ëì ë ì­ì ëì§ë§ home.nix íì¼ì ë¨ê²¨ì§ëë¤. %sìì í ë§¤ëì ê° ë°ê²¬ëì§ ìì. í ë§¤ëì  %s ì %s ìì ì ì¸íë ê²ì ë ì´ì ì¬ì©ëì§ ììµëë¤.
%së¡ ì®ê²¨ì£¼ì­ìì¤ %sìì ì¤ì  íì¼ì ì°¾ì ì ìì ì¤ì  íì¼ì ì°¾ì ì ìì. %sì ì¤ì  íì¼ì ìì±íì­ìì¤ ID %së¥¼ ê°ë ì¸ëê° ì¡´ì¬íì§ ìì ì í¨ ê¸°ê°ì´ ì§ë ì¸ëê° ìì í ë§¤ëì  í¨í¤ì§ë¤ì´ ì¤ì¹ëì§ ìì ê²ì¼ë¡ ë³´ìëë¤. $EDITOR ëë $VISUAL íê²½ ë³ìë¥¼ ì¤ì íì­ìì¤ ì ë§ë¡ í ë§¤ëì ë¥¼ ì­ì í ê¹ì? %s ì¸ëë¥¼ ì­ì íë ì¤ ëìë§ì ë³´ë ¤ë©´ '%s --help'ë¥¼ ì¤ííì­ìì¤ Nixê° ì ìì¸ì§ íì¸ ì¤ ë¹ í ë§¤ëì  ì¤ì ì¼ë¡ ë°ê¾¸ë ì¤... ëì²´ í ë§¤ëì  ê²½ë¡ %së ë ì´ì ì¬ì©ëì§ ìê² ëìê³  ì´ë¤ íì¼/ëë í ë¦¬ê° ê·¸ê³³ìì ë°ê²¬ ëììµëë¤. %s íì¼ì ì´ë¯¸ ì¡´ì¬íë¯ë¡, ìì íì§ ìì... ì½ì§ ìì ê´ë ¨ë ë´ì¤ í­ëª©ë¤ì´ %d ê° ììµëë¤.
"%s news" ëªë ¹ì´ë¥¼ ì¤íí´ ì½ì´ë³´ì­ìì¤. ì´ derivationì ë¹ë í  ì ììµëë¤. nix-shellì ì´ì©í´ì ì¤íí´ ì£¼ì­ìì¤. ëª¨ì ì¤í ì¤ì¼ë¡, ìë¬´ê²ë ì¤ì ë¡ ì¤ì¹ëì§ ììµëë¤. ìì¤íìì í ë§¤ëì ë¥¼ ì­ì í  ê²ìëë¤. ì´ ê²½ê³ ë¥¼ ì ê±°íë ¤ë©´, ë¤ì í­ëª© ì¤ íê°ì§ë¥¼ íì­ìì¤.

1. í ë§¤ëì ìê² ëªìì ì¼ë¡ ê²½ë¡ë¥¼ ì¬ì©íëë¡ ì¤ì í©ëë¤.

ìë¥¼ë¤ì´, ë¤ìì ì¤ì ì ì¶ê°íì­ìì¤.

     { programs.home-manager.path = "%s"; }


   ë§ì½ ì§ì  í ë§¤ëì ë¥¼ importíë©´, í ë§¤ëì  í¨í¤ì§ë¥¼ í¸ì¶í  ë ë¤ìê³¼ ê°ì´ `path` íë¼ë¯¸í°ë¥¼ ì¬ì©í  ì ììµëë¤. 

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   
2. ëì´ì ì¬ì©íì§ ìë ê²½ë¡ë¥¼ ì§ì°ì­ìì¤.

     $ rm -r "%s" ì´ë°, ì¤ì¹ê° ì¤í¨íìµëë¤! ë§ì½ ìë¬ê° í ë§¤ëì ì ë¬¸ì ë¼ê³  ìê°ëë¤ë©´

    %s

ì ì¬ì´í¸ìì ì´ìë¥¼ ìì±íì­ìì¤. ì ì ìë "news.display"ì ì¤ì  "%s". ì ì ìë ë§¤ê°ë³ì %s ì ì ìë ëªë ¹ì´: %s ì¼í¸! expire-generations ëªë ¹ì´ë ë§¤ê°ë³ìê° í ê° íìíë°, %d ê°ê° ìë ¥ëììµëë¤. 
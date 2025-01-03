��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  3   x  ,   �  &   �  <      ;   =     y  ,   �  @   �  &   �  N   #  0   r  M   �  "   �       )   .  ;   X  2   �     �     �     �  3     `   :  3   �  �   �  V   �  8   �  .       A  �   V  *   �               0  9   8        
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
PO-Revision-Date: 2024-02-16 22:01+0000
Last-Translator: Oğuz Ersen <oguz@ersen.moe>
Language-Team: Turkish <https://hosted.weblate.org/projects/home-manager/cli/tr/>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.4
 %s: Bilinmeyen komut '%s' Herşey tamam! home-manager aracı kuruldu. Home Manager'ı yapılandırmak için

    %s

dosyasını düzenleyin. Kullanılabilir seçenekleri görmek için:
'man home-configuration.nix'. Flake yapılandırmasının ayarları incelenemiyor Flake yapılandırması örneklendirilemiyor Kullanımda olan %s inşası silinemez Sadece okuma izni olan bir dizinde inşa çalıştırılamaz Kullanılabilir profil dizini bulunamadı, %s ve %s denendi Oluşturuluyor %s... İlk Home Manager inşası oluşturuluyor... Home Manager kaldırıldı ama home.nix dosyasına dokunulmadı. %s konumunda Home Manager bulunamadı. Home Managerı %s de tutmak artık desteklenmemektedir,
lütfen % e taşıyın %s konumunda yapılandırma dosyası bulunamadı Yapılandırma dosyası bulunamadı. Lütfen %s konumunda bir tane oluşturun %s ID'sine sahip nesil bulunamadı Süresi dolacak inşa yok Galiba home-manager paketi kurulu değil. Lütfen $EDITOR veya $VISUAL ortam değişkenini ayarlayın Home Manager'ı silmek istediğinize emin misiniz? İnşa siliniyor %s Yardım için '%s --help' Nix denetleniyor Boş Home Manager yapılandırmasına geçiliyor... Yedek Ana Dizin Yöneticisi yolu %s kullanımdan kaldırıldı ve orada bir dosya/dizin bulundu. %s dosyası zaten var, değişiklik yapılmıyor... %d tane okunmamış ilgili haber bulunmakta.
Okumak için "%s news" komutunu kullanın. %d tane okunmamış ilgili haberler bulunmakta.
Okumak için "%s news" komutunu kullanın. Bu türetim inşa edilebilir değil, lütfen onu nix-shell kullanarak çalıştırın. Bu sadece bir inşa denemesi, hiçbir şey silinmeyecek. Bu, sisteminizden Home Manager'ı kaldıracak. Bu uyarıyı kaldırmak için aşağıdakilerden birini yapın.

1. Ev Dizin Yöneticisi'ne yolu kullanmasını açıkça söyleyin, örneğin

     { programs.home-manager.path = "%s"; }

   şeklinde yapılandırmanıza ekleyebilirsiniz.

  Ev Dizin Yöneticisi'ne doğrudan içe aktarırsanız, Ev Dizin Yöneticisi paketini çağırırken

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   şeklinde `path` parametresini kullanabilirsiniz.

2. Kullanımdan kaldırılan yolu kaldırın.

     $ rm -r "%s" Eyvah, kurulum başarısız! Eğer hatanın Home Manager'dan kaynaklandığını düşünüyorsanız

    %s

adresinden bildirin. Bilinmeyen "news.display" seçeneği "%s". Bilinmeyen argüman %s Bilinmeyen komut: %s Güzel! expire-generations bir argüman istiyor, %d tane girildi. 
��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �    �  ,   �  L  *  Y   w  X   �  K   *  {   v  r   �     e  J   ~  m   �  +   7  �   c  =   �  m   /  &   �  T   �  Y     ^   s  +   �  (   �  g   '  /   �  O   �       P   �  �  �  �   �  a     X   i  �  �  �   k  >   7  &   v  #   �     �  L   �        
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
PO-Revision-Date: 2024-02-18 14:02+0000
Last-Translator: Сергій <sergiy.goncharuk.1@gmail.com>
Language-Team: Ukrainian <https://hosted.weblate.org/projects/home-manager/cli/uk/>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Weblate 5.4
 %s: невідомий параметр '%s' Все готово! Інструмент Home-manager тепер повинен бути встановлений, і ви можете редагувати

    %s,

щоб налаштувати Home Manager. Запустіть 'man home-configuration.nix', щоб
переглянути всі доступні варіанти. Неможливо перевірити параметри flake-конфігурації Не вдається створити екземпляр flake-конфігурації Не вдається видалити поточну генерацію %s Неможливо запустити збірку в каталозі, доступному лише для читання Не вдалося знайти відповідний каталог профілю, спробував %s і %s Створення %s... Створення початкової генерації Home Manager... Home Manager буде видалено, але ваш home.nix залишиться недоторканим. Home Manager не знайдено на %s. Збереження вашого Home Manager %s у %s є застарілим,
будь ласка, перемістіть його до %s Файл конфігурації не знайдено в %s Файл конфігурації не знайдено. Будь ласка, створіть його в %s Немає генерації з ID %s Немає генерацій, термін дії яких закінчується Здається, не встановлено жодних пакунків home-manager. Будь ласка, встановіть змінну оточення $EDITOR або $VISUAL Дійсно видаліть Home Manager? Видалення генерації %s Запустіть '%s --help' для отримання довідки про використання Перевірка адекватності Nix Перехід до порожньої конфігурації Home Manager... Резервний шлях до Home Manager %s застарів, і там було знайдено файл/каталог. Файл %s вже існує, залишаючи його незмінним... Є %d непрочитана і ревалентна новина.
Прочитайте її, виконавши команду "%s news". Є %d непрочитані і ревалентні новини.
Прочитайте їх, виконавши команду "%s news". Є %d непрочитаних і ревалентних новин.
Прочитайте їх, виконавши команду "%s news". Цю похідну не можна зібрати, будь ласка, запустіть її за допомогою nix-shell. Це пробний запуск, насправді нічого не буде видалено. Це призведе до видалення Home Manager з вашої системи. Щоб видалити це попередження, виконайте одну з наведених нижче дій.

1. Чітко скажіть Home Manager використовувати шлях, наприклад, додавши

     { programs.home-manager.path = "%s"; }

   до вашої конфігурації.

   Якщо ви імпортуєте Home Manager безпосередньо, ви можете використовувати параметр `path`

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   при виклику пакету Home Manager.

2. Видаліть застарілий шлях.

     $ rm -r "%s" Ой, не вдалося встановити! Будь ласка, створіть проблему на

    %s

якщо здається, що помилка сталася через Home Manager. Невідоме налаштування "news.display" "%s". Невідомий аргумент %s Невідома команда: %s Ура! expire-generation очікує один аргумент, отримав %d. 
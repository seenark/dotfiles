��    $      <  5   \      0     1  �   I  .   �  '   $  '   L  '   t  :   �     �  +   �  @        S  F   q  !   �  4   �          (  .   A     p     �     �     �  0   �  [   
  3   f  �   �  @   H  8   �  /   �  �  �  v   �
  $        =     Q     e  0   j    �  *   �  -  �  O     S   U  A   �  g   �  i   S     �  B   �  T     ,   l  �   �  9   2  h   l  E   �  I     ]   e  D   �  "     J   +  7   v  S   �  �     L   �  �  �  �   �  b   =  @   �  �  �  �   �  =   _  *   �  )   �     �  V   �        
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
Language-Team: Russian <https://hosted.weblate.org/projects/home-manager/cli/ru/>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Weblate 5.4
 %s: неизвестная опция '%s' Готово! Теперь вам должна быть доступна утилита home-manager,
и вы можете отредактировать настройки в файле

    %s

Выполните 'man home-configuration.nix', чтобы увидеть доступные опции. Не могу получить опции для flake-конфигурации Не могу создать экземляр для flake-конфигурации Не могу удалить текущее поколение %s Не могу начать сборку в директории, защищённой от записи Не найдена подходящая директория профиля, пробовали %s и %s Создание %s... Создаю начальное поколение Home Manager... Home Manager удалён, но ваш home.nix остался нетронутым. Home Manager не был найден в %s. Файл %s вашего Home Manager находится в устаревшем месте %s
пожалуйста, переместите его в %s Не найден файл конфигурации в %s Не найден файл конфигурации. Пожалуйста, создайте его в %s Поколение под номером %s не существует Нет поколений, которые можно просрочить Не обнаружено пакетов, установленных через home-manager. Действительно хотите удалить Home Manager? Удаляю поколение %s Выполните '%s --help', чтобы получить справку Проверка работоспособности Nix Переключаюсь на пустую конфигурацию Home Manager... Резервный путь Home Manager %s считается устаревшим, но в нём был найден файл или папка. Файл %s уже существует и не будет изменен... У вас есть %d непрочитанная и релевантная новость.
Прочтите её, выполнив команду "%s news". У вас есть %d непрочитанные и релевантные новости.
Прочтите их, выполнив команду "%s news". У вас есть %d непрочитанных и релевантных новостей.
Прочтите их, выполнив команду "%s news". Это определение нельзя собрать. Пожалуйста, запустите его через nix-shell. Это пробный запуск, на самом деле ничего не удаляется. Это удалит Home Manager из вашей системы. Чтобы убрать это предупреждение, совершите один из шагов, приведённых ниже.

1. Явно заставьте Home Manager использовать путь, например добавив

     { programs.home-manager.path = "%s"; }

   в ваш файл конфигурации.

   Если вы импортируете Home Manager напрямую, то вы можете использовать параметр `path`

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   когда вызываете пакет Home Manager

2. Удалите устаревший путь.

     $ rm -r "%s" Ой, установка не удалась! Пожалуйста, создайте тему в багтрекере

    %s

если считаете, что в ошибке виноват Home Manager. Неизвестное значение "news.display": "%s". Неизвестный аргумент %s Неизвестная команда: %s Ура! expire-generations требует один аргумент, но передано %d. 
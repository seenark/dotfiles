��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �     �  �   �  %   �     �  !   �  $   �  5        E  3   Y  D   �      �  L   �     @  1   ]      �  !   �  ,   �  *   �  #   *     N  )   j      �  -   �  ]   �  )   A  Y   k  E   �  <     +   H  �  t       2   �     �     �  	   �  A   �        
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
PO-Revision-Date: 2024-03-03 06:24+0000
Last-Translator: immwind <i@immwind.com>
Language-Team: Chinese (Simplified) <https://hosted.weblate.org/projects/home-manager/cli/zh_Hans/>
Language: zh_Hans
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Weblate 5.5-dev
 %s：未知选项 ‘%s’ 全部工作完成了！home-manager 工具现应已安装，您可以编辑

    %s

来配置 Home Manager。运行 ‘man home-configuration.nix’
来查看所有可用选项。 无法检查 flake 配置中的选项 无法创建 flake 配置实例 无法移除当前生成结果 %s 无法在只读目录中运行构建 在 %s 以及 %s 中未能找到合适的档案目录 正在创建 %s ... 正在创建 Home Manager 初始化配置生成 ... Home Manager 已卸载，但未改动您的 home.nix 配置文件。 未在 %s 找到 Home Manager。 需要确保 Home Manager 在 %s 中，%s 已废弃。
请手动移动到 %s 未在 %s 找到配置文件 未找到配置文件。请在 %s 处创建一份 没有 ID 为 %s 的生成结果 没有即将过期的生成结果 似乎没有安装 home-manager 软件包。 请设置 $EDITOR 或 $VISUAL 环境变量 确定要卸载 Home Manager 吗？ 正在移除生成结果 %s 运行 ‘%s --help’ 获取用法帮助 正在进行 Nix 完整性检查 正在切换至空的 Home Manager 配置 ... 后备 Home Manager 路径 %s 已被弃用，但在这里找到了一个文件或文件夹。 文件 %s 已存在，未对其更改 ... 有 %d 条未读的相关新闻或消息。
可运行 “%s news” 命令进行阅读。 此配置文件/变体不可构建，请使用 nix-shell 运行它。 这是试运行结果，没有实际卸载任何软件包。 这将会从系统中移除 Home Manager。 为移除该警告，请完成下列建议的任意一项。

1. 明确地告诉 Home Manager 使用这个路径，例如添加

    { programs.home-manager.path = "%s"; }

   到您的配置。

   如果您直接引用 Home Manager，则可以在使用 Home Manager 包时使用 `path` 参数，如下。

    pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

2. 移除被弃用的路径。

    $ rm -r "%s" 啊哦，安装失败了！如果感觉是 Home Manager 造成的错误，请在下方

    %s

处创建 Issue 告知我们。 未知的 “news.display” 设置项 “%s”。 未知参数 %s 未知命令：%s 好耶！ expire-generations 须要一个参数，但获取到了 %d 个。 
��    %      D  5   l      @     A  �   Y  .     '   4  '   \  '   �  :   �     �  +   �  @   "     c  F   �  !   �  4   �          8  .   Q  6   �     �     �     �       0      [   Q  3   �  �   �  @   �  8   �  /   		  �  9	  v   �
  $   _     �     �     �  0   �  �  �  !   �  �   �  A   �  7   �  /      @   P  O   �     �  .   �  F     #   e  L   �  1   �  B        K     g  0   �  <   �  +   �       ,   4     a  5   q  g   �  ;     �   K  P   �  A   3  0   u  �  �  v   t  ?   �     +     E     b  3   g        
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
PO-Revision-Date: 2024-02-28 13:02+0000
Last-Translator: guto <joaoaugustolanjoni@gmail.com>
Language-Team: Portuguese (Brazil) <https://hosted.weblate.org/projects/home-manager/cli/pt_BR/>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 5.5-dev
 %s: opção não reconhecida '%s' Pronto! O home-manager deve ser instalado agora e você poderá editar o arquivo

    %s

para configurar o Home Manager. Execute 'man home-configuration.nix' para
ver todas as opções disponíveis. Não é possivel inspecionar a opção de configuração do flake Não foi possível instanciar a configuração de flake Não foi possível remover a geração atual %s Não é possível fazer o build em um diretório somente leitura Não foi possível encontrar um diretório de perfil apropriado, tentei %s e %s Criando %s... Criando a geração inicial do Home Manager... Home Manager foi desinstalado, mas o seu home.nix foi deixado intacto. Home Manager não encontrado em %s. Manter seu Home Manager %s em %s foi descontinuado,
por favor mova-o para %s Nenhum arquivo de configuração encontrado no %s Arquivo de configuração não encontrado. Por favor crie um em %s Nenhuma geração com ID %s Nenhuma geração a expirar Nenhum pacote parece instalado com home-manager. Por favor, defina a variável de ambiente $EDITOR ou $VISUAL Confirma a desinstalação do Home Manager? Removendo geração %s Execute '%s --help' para instruções de uso Revalidando Nix Trocando para configuração vazia do Home Manager... O caminho alternativo do Home Manager, %s, foi descontinuado, mas existe algum arquivo/diretório nele. O arquivo %s já existe, mantendo ele sem modificações... Há %d novo item relevante não lido
Leia executando o comando "%s news". Há %d novos itens relevants não lidos
Leia executando o comando "%s news". O build dessa derivation não pode ser feito, por favor rode usando o nix-shell. Essa é uma execução de teste, nada de fato será desinstalado. Isso irá remover o Home Manager do seu sistema. Para remover esse aviso, faça um dos seguintes.

1. Explicitamente diga para o Home Manager usar esse caminho, por exemplo, adicionando

     { programs.home-manager.path = "%s"; }

   à sua configuração.

   Se você importa o Home Manager diretamente, você pode usar o parâmetro `path`

      pkgs.callPackage /caminho/do/pacote-home-manager { path = "%s"; }

   ao chamar o pacote do Home Manager.

2. Apague o caminho descontinuado.

     $ rm -r "%s" Ixi, a instalação falhou! Por favor crie um issue no

    %s

se o erro lhe parecer ser um problema do Home Manager. Valor "%s" para configuração "news.display" não reconhecido. Argumento desconhecido %s Comando não reconhecido: %s Boa! expire-generations espera um argumento, recebeu %d. 
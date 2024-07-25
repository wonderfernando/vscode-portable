# Visual Studio Code No Docker Container

Este repositório fornece um ambiente Docker para executar o Visual Studio Code (VSCode) dentro de um contêiner Docker. Isso permite que você desenvolva em um ambiente isolado, com a conveniência de uma interface gráfica completa para o VSCode, sem a necessidade 
de usar uma maquina virtual

## Requisitos
- Docker instalado na sua máquina.  `OBS:todas as maquinas da cluster têm o docker instalado`
## Estrutura do Repositório

- `Dockerfile` - Define o ambiente e as dependências do contêiner. 
- `scripts/` - Contém scripts auxiliares para a configuração e execução do VSCode.
- `myfiles/projectos/` - Diretório para seus projetos de desenvolvimento.
- `vscode-data/` - Diretório para persistir dados do VSCode.

## Como usar ?

No terminal execute o seguinte comando
```bash
bash vscode.bash
```
Você Pode configurar o sistema do container executando o seguinte comando
```bash
bash config.bash

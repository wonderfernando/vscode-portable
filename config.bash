IMAGEM="vscode-image"
CONTAINER="vscode-container"
#verifica se a imagem ja está criada
if ! docker images --format {{.Repository}} | grep -w "$IMAGEM" > /dev/null; then
	echo "criando a imagem"
	docker build -t vscode-image ./dockerfiles
fi

if docker ps --filter "name=$CONTAINER" --format '{{.Names}}' | grep -w "$CONTAINER" > /dev/null; then
	echo "Parando o container em execução"
	docker stop "$CONTAINER"
fi

echo "Abrindo novo container"
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd)/vscode/projectos:/vscode/projectos -v $(pwd)/vscode-data:/user/vscode-data --name vscode-container vscode-image /bin/bash
	


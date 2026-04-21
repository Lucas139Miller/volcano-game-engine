#include <iostream>

int main(int argc, char* argv[]){

	if(argc > 1){//leitura de parâmetros
		std::cout << "Local: " << argv[0] << std::endl;
		std::cout << "Número de parâmetros: " << argc << std::endl;
		std::cout << "Parâmetros: " << std::endl;
		std::string termo = "init";
		if(argv[1] == termo){//init
			std::cout << "Criando setup!" << std::endl;
		}
		for(int i = 1; i < argc; i++){		
			std::cout << "Par[" << i << "]: " << argv[i] << std::endl;
		}


	}else{//HELP
		std::cout << "Sem parâmetros!" << std::endl; 
	}
	return 0;
}
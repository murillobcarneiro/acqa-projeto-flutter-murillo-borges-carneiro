UNIVERSIDADE DE UBERABA
ANÁLISE E DESENVOLVIMENTO DE SISTEMAS
DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS
PROFESSOR/TUTOR: MATEUS DE SOUSA
ALUNO: MURILLO BORGES CARNEIRO - 1186731

Link do repositório GitHub:
https://github.com/murillobcarneiro/acqa-projeto-flutter-murillo-borges-carneiro.git

O presente projeto foi desenvolvido utilizando o framework Flutter e a linguagem Dart, com o objetivo de criar um aplicativo móvel para gerenciamento de tarefas diárias. A aplicação foi estruturada em diferentes telas, permitindo ao usuário realizar login, efetuar cadastro, selecionar uma data por meio de um calendário e gerenciar suas atividades de forma simples e intuitiva.

Inicialmente foi desenvolvida a tela de login, responsável por permitir o acesso ao sistema e a navegação para as demais funcionalidades. Em seguida foi criada a tela de cadastro, utilizada para o registro de novos usuários. Para proporcionar uma melhor experiência visual, foram utilizados gradientes, cores vibrantes e componentes estilizados, buscando atender aos requisitos de interface e usabilidade propostos na atividade.

A tela de calendário foi implementada utilizando o seletor de datas do Flutter, permitindo ao usuário escolher o dia desejado para visualizar e gerenciar suas tarefas. Após a seleção da data, o aplicativo direciona o usuário para a tela de tarefas correspondente.

Na tela de gerenciamento de tarefas foi implementada a funcionalidade de inclusão de novas atividades por meio de uma janela do tipo ShowDialog. Também foram desenvolvidas as funções de remoção de tarefas e marcação de atividades como concluídas. As tarefas pendentes são exibidas prioritariamente na lista, seguidas das tarefas concluídas, obedecendo ainda à ordenação alfabética dentro de cada grupo, conforme solicitado nos requisitos da atividade.

Para melhorar a experiência do usuário, foram utilizados elementos visuais diferenciados, como cartões coloridos para representar os estados das tarefas, ícones de ação, botões personalizados e indicadores visuais para atividades concluídas. As tarefas concluídas recebem uma marcação visual permanente por meio de texto riscado, facilitando sua identificação.

Durante o desenvolvimento foram aplicados conceitos relacionados à construção de interfaces com widgets, navegação entre telas, gerenciamento de estado com StatefulWidget, utilização de listas dinâmicas, componentes de entrada de dados, diálogos e organização da estrutura do projeto em múltiplos arquivos Dart.

Conclui-se que o projeto permitiu aplicar na prática os principais conceitos estudados ao longo do componente de Desenvolvimento para Dispositivos Móveis, proporcionando experiência com a criação de interfaces modernas, navegação entre telas e implementação de funcionalidades essenciais para aplicações móveis desenvolvidas com Flutter.

Conteúdo atual dos arquivos da pasta lib:

main.dart
login_screen.dart
register_screen.dart
calendar_screen.dart
task_screen.dart
task.dart

Obs: Copie os arquivos da pasta lib para um projeto Flutter criado no Android Studio.

import 'dart:math';

enum Difficulty { FACIL, MEDIO, DIFICIL, EXPERT }

class Question {
  final String questionText;
  final List<String> options;
  final int correctIndex;
  final String category;
  final Difficulty difficulty;
  final int points;

  Question({
    required this.questionText,
    required this.options,
    required this.correctIndex,
    required this.category,
    required this.difficulty,
    required this.points,
  });
}

class QuestionBank {
  static List<Question> getQuestions() {
    return [
      // Conceitos Básicos
      Question(
        questionText: 'Em um ambiente corporativo, qual é a principal função de um SIEM?',
        options: [
          'Monitorar logs de sistema',
          'Coletar e analisar eventos de segurança',
          'Gerenciar senhas dos usuários',
          'Controlar acesso físico'
        ],
        correctIndex: 1,
        category: 'Conceitos Básicos',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é a diferença entre força bruta e dicionário?',
        options: [
          'Força bruta tenta todas as combinações',
          'Dicionário usa palavras comuns',
          'Força bruta é mais rápido',
          'Não há diferença'
        ],
        correctIndex: 0,
        category: 'Conceitos Básicos',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'Qual é a primeira ação após detectar um ataque?',
        options: [
          'Desligar todos os sistemas',
          'Notificar a imprensa',
          'Isolar sistemas afetados',
          'Iniciar recuperação'
        ],
        correctIndex: 2,
        category: 'Conceitos Básicos',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é a diferença entre DoS e DDoS?',
        options: [
          'DoS vem de uma fonte',
          'DDoS usa um computador',
          'DoS é mais perigoso',
          'DDoS é mais fácil de mitigar'
        ],
        correctIndex: 0,
        category: 'Conceitos Básicos',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é um ataque MITM?',
        options: [
          'Ataque em servidores web',
          'Ataque em redes wireless',
          'Interceptação de comunicação',
          'Ataque com firewall'
        ],
        correctIndex: 2,
        category: 'Conceitos Básicos',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Autenticação e Senhas
      Question(
        questionText: 'Qual é a diferença entre 2FA e MFA?',
        options: [
          '2FA usa dois fatores',
          'MFA é mais antigo',
          '2FA é mais seguro',
          'Não há diferença'
        ],
        correctIndex: 0,
        category: 'Autenticação e Senhas',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é a diferença entre hashing e criptografia?',
        options: [
          'Hashing é unidirecional',
          'Criptografia é mais segura',
          'Hashing é reversível',
          'Não há diferença'
        ],
        correctIndex: 0,
        category: 'Autenticação e Senhas',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'Qual é o problema com tokens JWT?',
        options: [
          'São muito lentos',
          'Não podem ser revogados',
          'Podem ser manipulados',
          'São sempre inseguros'
        ],
        correctIndex: 2,
        category: 'Autenticação e Senhas',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é o desafio da biometria?',
        options: [
          'É muito lenta',
          'Não pode ser alterada',
          'É sempre segura',
          'Não pode ser falsificada'
        ],
        correctIndex: 1,
        category: 'Autenticação e Senhas',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade da autenticação por conhecimento?',
        options: [
          'É muito lenta',
          'Não tem vulnerabilidades',
          'Pode ser comprometida',
          'É sempre segura'
        ],
        correctIndex: 2,
        category: 'Autenticação e Senhas',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Redes e Internet
      Question(
        questionText: 'Qual é a diferença entre proxy e VPN?',
        options: [
          'Proxy é mais seguro',
          'VPN é mais lenta',
          'Proxy atua na aplicação',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Redes e Internet',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é ARP spoofing?',
        options: [
          'Ataque em redes wireless',
          'Ataque com firewall',
          'Envenenamento de tabela ARP',
          'Ataque em redes locais'
        ],
        correctIndex: 2,
        category: 'Redes e Internet',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade do WEP?',
        options: [
          'É muito lento',
          'Chave estática',
          'É sempre seguro',
          'Não tem vulnerabilidades'
        ],
        correctIndex: 1,
        category: 'Redes e Internet',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é DNS tunneling?',
        options: [
          'Ataque em servidores DNS',
          'Ataque com firewall',
          'Uso do DNS para outros protocolos',
          'Ataque em redes locais'
        ],
        correctIndex: 2,
        category: 'Redes e Internet',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre WAF e firewall?',
        options: [
          'WAF é mais seguro',
          'WAF é mais lento',
          'WAF analisa HTTP/HTTPS',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Redes e Internet',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Criptografia
      Question(
        questionText: 'Qual é a diferença entre criptografia simétrica e assimétrica?',
        options: [
          'Simétrica é mais segura',
          'Assimétrica é mais lenta',
          'Simétrica usa uma chave',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Criptografia',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é padding oracle?',
        options: [
          'Ataque em algoritmos simétricos',
          'Ataque com chaves longas',
          'Explora mensagens de erro',
          'Ataque em redes wireless'
        ],
        correctIndex: 2,
        category: 'Criptografia',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade do MD5?',
        options: [
          'É muito lento',
          'Vulnerável a colisões',
          'É sempre seguro',
          'Não tem vulnerabilidades'
        ],
        correctIndex: 1,
        category: 'Criptografia',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é side-channel?',
        options: [
          'Ataque em algoritmos simétricos',
          'Ataque com chaves longas',
          'Explora características físicas',
          'Ataque em redes wireless'
        ],
        correctIndex: 2,
        category: 'Criptografia',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre certificado auto-assinado e CA?',
        options: [
          'Auto-assinado é mais seguro',
          'Auto-assinado é mais lento',
          'Sem confiança de terceiros',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Criptografia',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Malware e Ameaças
      Question(
        questionText: 'Qual é a diferença entre vírus e worm?',
        options: [
          'Vírus é mais perigoso',
          'Worm é mais lento',
          'Vírus precisa de hospedeiro',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Malware e Ameaças',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é rootkit?',
        options: [
          'Malware para Windows',
          'Malware detectável por antivírus',
          'Esconde sua presença',
          'Malware de rede'
        ],
        correctIndex: 2,
        category: 'Malware e Ameaças',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'O que é zero-day?',
        options: [
          'Ataque à meia-noite',
          'Ataque em sistemas novos',
          'Explora vulnerabilidades desconhecidas',
          'Ataque em redes'
        ],
        correctIndex: 2,
        category: 'Malware e Ameaças',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é backdoor?',
        options: [
          'Malware para servidores',
          'Malware prevenível com firewall',
          'Cria acesso não autorizado',
          'Malware de rede'
        ],
        correctIndex: 2,
        category: 'Malware e Ameaças',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre phishing e spear phishing?',
        options: [
          'Phishing é mais perigoso',
          'Spear phishing é mais lento',
          'Phishing é genérico',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Malware e Ameaças',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Segurança de Dados
      Question(
        questionText: 'Qual é a diferença entre anonimização e pseudonimização?',
        options: [
          'Anonimização é mais segura',
          'Pseudonimização é mais lenta',
          'Remove identificadores',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança de Dados',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é data masking?',
        options: [
          'Técnica para dados numéricos',
          'Técnica para produção',
          'Oculta dados sensíveis',
          'Técnica para backups'
        ],
        correctIndex: 2,
        category: 'Segurança de Dados',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade sem data retention?',
        options: [
          'Sistema fica lento',
          'Sistema fica rápido',
          'Armazenamento desnecessário',
          'Não há vulnerabilidade'
        ],
        correctIndex: 2,
        category: 'Segurança de Dados',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é DLP?',
        options: [
          'Técnica para dados em trânsito',
          'Técnica para redes',
          'Previne vazamento de dados',
          'Técnica para backups'
        ],
        correctIndex: 2,
        category: 'Segurança de Dados',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre backup incremental e diferencial?',
        options: [
          'Incremental é mais rápido',
          'Diferencial é mais seguro',
          'Backup de mudanças',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança de Dados',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Segurança de Redes
      Question(
        questionText: 'Qual é a diferença entre IDS e IPS?',
        options: [
          'IDS é mais seguro',
          'IPS é mais lento',
          'IDS apenas detecta',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança de Redes',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é DNS amplification?',
        options: [
          'Ataque em servidores DNS',
          'Ataque com firewall',
          'Ataque DDoS com DNS',
          'Ataque em redes locais'
        ],
        correctIndex: 2,
        category: 'Segurança de Redes',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade do SNMP v1?',
        options: [
          'É muito lento',
          'Credenciais em texto plano',
          'É sempre seguro',
          'Não tem vulnerabilidades'
        ],
        correctIndex: 1,
        category: 'Segurança de Redes',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é BGP hijacking?',
        options: [
          'Ataque em redes locais',
          'Ataque com firewall',
          'Redireciona tráfego BGP',
          'Ataque em redes wireless'
        ],
        correctIndex: 2,
        category: 'Segurança de Redes',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre firewall de estado e stateless?',
        options: [
          'Stateless é mais seguro',
          'Stateless é mais lento',
          'Mantém tabela de conexões',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança de Redes',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Segurança de Aplicações
      Question(
        questionText: 'Qual é a diferença entre XSS e CSRF?',
        options: [
          'XSS é mais perigoso',
          'CSRF é mais lento',
          'XSS injeta código',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança de Aplicações',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é race condition?',
        options: [
          'Ataque em aplicações web',
          'Ataque com firewall',
          'Explora timing de operações',
          'Ataque em redes'
        ],
        correctIndex: 2,
        category: 'Segurança de Aplicações',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade sem input validation?',
        options: [
          'Aplicação fica lenta',
          'Aplicação fica rápida',
          'Vulnerável a injeção',
          'Não há vulnerabilidade'
        ],
        correctIndex: 2,
        category: 'Segurança de Aplicações',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é deserialization?',
        options: [
          'Ataque em aplicações Java',
          'Ataque com firewall',
          'Explora deserialização',
          'Ataque em redes'
        ],
        correctIndex: 2,
        category: 'Segurança de Aplicações',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre autenticação e autorização?',
        options: [
          'Autenticação é mais importante',
          'Autorização é mais lenta',
          'Verifica identidade',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança de Aplicações',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Segurança em Nuvem
      Question(
        questionText: 'Qual é a diferença entre IaaS, PaaS e SaaS?',
        options: [
          'IaaS é mais seguro',
          'SaaS é mais lento',
          'Responsabilidade varia',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança em Nuvem',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é shared responsibility model?',
        options: [
          'Modelo para IaaS',
          'Modelo para PaaS',
          'Define responsabilidades',
          'Modelo para SaaS'
        ],
        correctIndex: 2,
        category: 'Segurança em Nuvem',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade em containers Docker?',
        options: [
          'Container fica lento',
          'Container fica rápido',
          'Acesso privilegiado',
          'Não há vulnerabilidade'
        ],
        correctIndex: 2,
        category: 'Segurança em Nuvem',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é CASB?',
        options: [
          'Ferramenta para IaaS',
          'Ferramenta para PaaS',
          'Monitora acesso em nuvem',
          'Ferramenta para SaaS'
        ],
        correctIndex: 2,
        category: 'Segurança em Nuvem',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre backup em nuvem e local?',
        options: [
          'Nuvem é mais seguro',
          'Local é mais lento',
          'Redundância geográfica',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança em Nuvem',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Segurança Móvel
      Question(
        questionText: 'Qual é a diferença entre jailbreak e root?',
        options: [
          'Jailbreak é mais seguro',
          'Root é mais lento',
          'Jailbreak é para iOS',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança Móvel',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é sandbox?',
        options: [
          'Técnica para Android',
          'Técnica para iOS',
          'Ambiente isolado',
          'Técnica para apps'
        ],
        correctIndex: 2,
        category: 'Segurança Móvel',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade sem certificate pinning?',
        options: [
          'App fica lento',
          'App fica rápido',
          'Vulnerável a MITM',
          'Não há vulnerabilidade'
        ],
        correctIndex: 2,
        category: 'Segurança Móvel',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é app signing?',
        options: [
          'Técnica para Android',
          'Técnica para iOS',
          'Garante autenticidade',
          'Técnica para apps'
        ],
        correctIndex: 2,
        category: 'Segurança Móvel',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre biometria e senha?',
        options: [
          'Biometria é mais segura',
          'Senha é mais lenta',
          'Biometria não pode ser alterada',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança Móvel',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Segurança IoT
      Question(
        questionText: 'Qual é a diferença entre IoT e IIoT?',
        options: [
          'IoT é mais seguro',
          'IIoT é mais lento',
          'IIoT tem mais requisitos',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança IoT',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'O que é device fingerprinting?',
        options: [
          'Técnica para sensores',
          'Técnica para câmeras',
          'Identifica dispositivos',
          'Técnica para redes'
        ],
        correctIndex: 2,
        category: 'Segurança IoT',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a vulnerabilidade com senhas padrão?',
        options: [
          'Dispositivo fica lento',
          'Dispositivo fica rápido',
          'Vulnerável a força bruta',
          'Não há vulnerabilidade'
        ],
        correctIndex: 2,
        category: 'Segurança IoT',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é firmware update?',
        options: [
          'Técnica para sensores',
          'Técnica para câmeras',
          'Atualiza software',
          'Técnica para redes'
        ],
        correctIndex: 2,
        category: 'Segurança IoT',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre rede IoT e tradicional?',
        options: [
          'IoT é mais seguro',
          'IoT é mais lento',
          'Mais pontos de vulnerabilidade',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança IoT',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),

      // Novas categorias e questões

      // Segurança Forense
      Question(
        questionText: 'O que é chain of custody?',
        options: [
          'Técnica de backup',
          'Técnica de criptografia',
          'Rastreamento de evidências',
          'Técnica de rede'
        ],
        correctIndex: 2,
        category: 'Segurança Forense',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre análise estática e dinâmica?',
        options: [
          'Estática é mais rápida',
          'Dinâmica é mais segura',
          'Estática sem execução',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Segurança Forense',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é memory forensics?',
        options: [
          'Análise de logs',
          'Análise de rede',
          'Análise de memória RAM',
          'Análise de disco'
        ],
        correctIndex: 2,
        category: 'Segurança Forense',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a importância do write blocker?',
        options: [
          'Acelera análise',
          'Previne alterações',
          'Melhora segurança',
          'Não tem importância'
        ],
        correctIndex: 1,
        category: 'Segurança Forense',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é timeline analysis?',
        options: [
          'Análise de logs',
          'Análise de rede',
          'Sequência de eventos',
          'Análise de disco'
        ],
        correctIndex: 2,
        category: 'Segurança Forense',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),

      // Segurança em Redes Sociais
      Question(
        questionText: 'O que é doxing?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Exposição de dados pessoais',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Redes Sociais',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é o risco de oversharing?',
        options: [
          'Rede fica lenta',
          'Rede fica rápida',
          'Exposição de informações',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'Redes Sociais',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é catfishing?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Perfil falso',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Redes Sociais',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é a importância da privacidade?',
        options: [
          'Melhora performance',
          'Melhora segurança',
          'Protege dados pessoais',
          'Não tem importância'
        ],
        correctIndex: 2,
        category: 'Redes Sociais',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é stalking digital?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Perseguição online',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Redes Sociais',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Segurança em Blockchain
      Question(
        questionText: 'O que é 51% attack?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Controle da rede',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Blockchain',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre PoW e PoS?',
        options: [
          'PoW é mais rápido',
          'PoS é mais seguro',
          'Método de consenso',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Blockchain',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é smart contract?',
        options: [
          'Contrato legal',
          'Contrato digital',
          'Código autônomo',
          'Contrato físico'
        ],
        correctIndex: 2,
        category: 'Blockchain',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é o risco de private key?',
        options: [
          'Rede fica lenta',
          'Rede fica rápida',
          'Perda de acesso',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'Blockchain',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é double spending?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Gasto duplicado',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Blockchain',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Segurança em IA
      Question(
        questionText: 'O que é adversarial attack?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Manipulação de dados',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Inteligência Artificial',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre ML e DL?',
        options: [
          'ML é mais rápido',
          'DL é mais seguro',
          'Complexidade do modelo',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Inteligência Artificial',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é model poisoning?',
        options: [
          'Ataque em redes',
          'Ataque em servidores',
          'Corrupção de dados',
          'Ataque em aplicações'
        ],
        correctIndex: 2,
        category: 'Inteligência Artificial',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é o risco de bias?',
        options: [
          'Modelo fica lento',
          'Modelo fica rápido',
          'Decisões tendenciosas',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'Inteligência Artificial',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é explainable AI?',
        options: [
          'IA mais rápida',
          'IA mais segura',
          'Transparência de decisões',
          'IA mais barata'
        ],
        correctIndex: 2,
        category: 'Inteligência Artificial',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Segurança em DevOps
      Question(
        questionText: 'O que é shift left?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Segurança antecipada',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'DevOps',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre SAST e DAST?',
        options: [
          'SAST é mais rápido',
          'DAST é mais seguro',
          'Momento da análise',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'DevOps',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é infrastructure as code?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Automação de infraestrutura',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'DevOps',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é o risco de secrets?',
        options: [
          'Sistema fica lento',
          'Sistema fica rápido',
          'Exposição de credenciais',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'DevOps',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é blue-green deployment?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Atualização sem downtime',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'DevOps',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Segurança em Redes 5G
      Question(
        questionText: 'O que é network slicing?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Segmentação de rede',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes 5G',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre 4G e 5G?',
        options: [
          '4G é mais rápido',
          '5G é mais seguro',
          'Latência e velocidade',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Redes 5G',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é edge computing?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Processamento local',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes 5G',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é o risco de IoT em 5G?',
        options: [
          'Rede fica lenta',
          'Rede fica rápida',
          'Mais pontos de ataque',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'Redes 5G',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é beamforming?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Foco de sinal',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes 5G',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Segurança em Redes SDN
      Question(
        questionText: 'O que é control plane?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Plano de controle',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes SDN',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre SDN e tradicional?',
        options: [
          'SDN é mais lento',
          'SDN é mais seguro',
          'Centralização do controle',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Redes SDN',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é OpenFlow?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Protocolo de controle',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes SDN',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é o risco de controller?',
        options: [
          'Rede fica lenta',
          'Rede fica rápida',
          'Ponto único de falha',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'Redes SDN',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é network virtualization?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Abstração de rede',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes SDN',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),

      // Segurança em Redes SD-WAN
      Question(
        questionText: 'O que é overlay network?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Rede virtual',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes SD-WAN',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
      Question(
        questionText: 'Qual é a diferença entre MPLS e SD-WAN?',
        options: [
          'MPLS é mais rápido',
          'SD-WAN é mais seguro',
          'Custo e flexibilidade',
          'Não há diferença'
        ],
        correctIndex: 2,
        category: 'Redes SD-WAN',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é zero-touch provisioning?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Configuração automática',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes SD-WAN',
        difficulty: Difficulty.MEDIO,
        points: 2,
      ),
      Question(
        questionText: 'Qual é o risco de branch?',
        options: [
          'Rede fica lenta',
          'Rede fica rápida',
          'Ponto de entrada',
          'Não há risco'
        ],
        correctIndex: 2,
        category: 'Redes SD-WAN',
        difficulty: Difficulty.DIFICIL,
        points: 3,
      ),
      Question(
        questionText: 'O que é path selection?',
        options: [
          'Técnica de backup',
          'Técnica de rede',
          'Seleção de rota',
          'Técnica de criptografia'
        ],
        correctIndex: 2,
        category: 'Redes SD-WAN',
        difficulty: Difficulty.EXPERT,
        points: 4,
      ),
    ];
  }

  static List<Question> getShuffledQuestions() {
    final questions = getQuestions();
    questions.shuffle(Random());
    return questions;
  }
} 
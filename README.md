# CKA Practice Labs — Simulador Completo

Este repositório contém **17 laboratórios interativos** para prática intensiva do exame **CKA (Certified Kubernetes Administrator)**.  
Os exercícios são baseados em questões reais e simulam o ambiente de prova com namespaces, deployments e objetos reais.

## ⚙️ Estrutura do projeto

cka-labs/
├── README.md
├── start-lab.sh            # Cria o ambiente de uma questão
├── validate-lab.sh         # Valida automaticamente a questão resolvida
├── labs/                   # Scripts de criação de ambiente
│ ├── lab-01-argocd.sh
│ ├── lab-02-sidecar.sh
│ └── ...
└── validate/               # Scripts de validação
├── validate-01.sh
├── validate-02.sh

---

## 🧭 Como usar

1 -  Torne os scripts executáveis:
```bash
chmod +x start-lab.sh validate-lab.sh labs/*.sh validate/*.sh
```

2 - Inicie uma questao (exemplo: questao 1)

```bash
./start-lab.sh 1
```

3 - Resolva a questão no cluster.

4 - Valide automaticamente:

```bash
./validate-lab.sh 1
```

5 - Para testar tudo de uma so vez:

```bash
for i in {1..17}; do ./validate-lab.sh $i; done
```

## Requisitos

- Cluster Kubernetes funcional (kubectl configurado)
- Permissão root ou sudo (para editar /etc/hosts ou sysctl)
- Helm instalado (para labs que usam Helm)
- Compatível com ambientes Killercoda, Minikube ou Kind
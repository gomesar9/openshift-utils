# Openshift
## LAB: Anyuid

Algumas aplicações e imagens prontas na internet recaem sobre ações privilegiadas para o bom funcionamento,
porém os deployments em openshift, por padrão, sobem pods com usuários sem privilégios, causando erros e muitas vezes deixando
os pods em estado de _CrashLoopBackOff_

O lab demonstra esse comportamento e exemplifica uma solução prática, de adição da permissão para um usuário de serviço específico,
destinado a ser usado por este deployment.

A pasta `basic` contém o exemplo com deployments, um caso padrão.

A pasta `advanced` contém o exemplo direto do pod, com securityContext setados manualmente.


Bom experimento.


## Basic

O script [run.sh][bsc-run] pode ser usado para fazer deploy dos recursos.

Serão criados:
- Projeto
- ServiceAccount
- Role
- Rolebinding
- Deployment (x2)

O deployment [`anyuid-application-example`][bsc-dpl-common] segue o modelo padrão, não tendo privilégios. 

Já o deployment [`anyuid-application-priv-example`][bsc-dpl-privileged] utiliza a [serviceAccount][bsc-dpl-prv-serviceaccount] criada para rodar, conseguindo executar ações privilegiadas como root.

[bsc-run]: https://github.com/gomesar9/openshift-utils/blob/develop/labs/anyuid/basic/run.sh
[bsc-dpl-common]: https://github.com/gomesar9/openshift-utils/blob/develop/labs/anyuid/basic/04-deployment-common.yaml
[bsc-dpl-privileged]: https://github.com/gomesar9/openshift-utils/blob/develop/labs/anyuid/basic/05-deployment-privileged.yaml
[bsc-dpl-prv-serviceaccount]: https://github.com/gomesar9/openshift-utils/blob/develop/labs/anyuid/basic/05-deployment-privileged.yaml#L16

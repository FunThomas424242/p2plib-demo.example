# p2plib-demo.example
Einstiegsbeispiel in die Benutzung von p2plib

## Notizen zur p2plib 
Beispiel Implementierung
https://gist.github.com/whyrusleeping/169a28cffe1aedd4419d80aa62d361aa

NAT Problematik
https://github.com/libp2p/go-libp2p/issues/375


## Notizen zum Projekterstellung

http://www.ijon.de/comp/tutorials/makefile.html

https://medium.com/golang-learn/go-project-layout-e5213cdcfaa2

https://github.com/golang-standards/project-layout

https://sohlich.github.io/post/go_makefile/

Projektordner unter $GOPATH/src/github.com/your_github_username/your_project

Multibinary Projekt unter cmd
your_project/cmd/your_app

Library Projekt oder shared libs für eigene Projekte unter pkg
your_project/pkg/your_lib

Nicht exportierter Kode unter internal
your_project/internal/pkg/your_private_lib
your_project/internal/app/your_app





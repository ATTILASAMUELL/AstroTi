# 🚀 AstroTiAttila

Aplicativo iOS desenvolvido em **SwiftUI** utilizando a arquitetura **MVVM (Model-View-ViewModel)** e persistência local com **SwiftData**.
O app possui fluxo de splash, listagem de interesses com CRUD completo (criar, editar, excluir e marcar como concluído), e um **menu lateral (Drawer)** animado integrado à Home.

---

## 🧱 Arquitetura

**MVVM (Model - View - ViewModel)**

```
AstroTiAttila/
├── Model/
│   ├── Item.swift
│   ├── MenuItem.swift
│   └── InterestItem.swift
│
├── ViewModel/
│   ├── SplashViewModel.swift
│   ├── DrawerViewModel.swift
│   └── InterestListViewModel.swift
│
├── View/
│   ├── SplashView.swift
│   ├── HomeView.swift
│   ├── DrawerMenuView.swift
│   ├── DrawerContentView.swift
│   ├── EditInterestView.swift
│   └── Components/
│       └── InterestCardView.swift
│
├── Resources/
│   └── PrimaryColor.swift
│
└── AstroTiAttilaApp.swift
```

### 📂 Descrição dos módulos

* **Model:** Contém as entidades persistidas e estruturas de dados do app.
* **ViewModel:** Responsável pela lógica de negócio e interação com o `ModelContext` (SwiftData).
* **View:** Telas e componentes visuais do app, escritos em SwiftUI.
* **Resources:** Recursos auxiliares como cores, temas e extensões globais.

---

## 🧩 Tecnologias Utilizadas

| Tecnologia      | Descrição                                     |
| --------------- | --------------------------------------------- |
| **Swift 5.10+** | Linguagem principal                           |
| **SwiftUI**     | Framework declarativo para UI                 |
| **SwiftData**   | Persistência local substituta do CoreData     |
| **MVVM**        | Arquitetura de separação de responsabilidades |
| **Xcode 16+**   | Ambiente de desenvolvimento                   |
| **iOS 17+**     | Versão mínima do sistema suportado            |

---

## ⚙️ Funcionalidades

* Splash Screen com transição automática para Home
* Lista de Interesses (CRUD completo com SwiftData)
* Marcar item como concluído
* Edição e exclusão de registros locais
* Drawer lateral animado com opções de navegação
* Design limpo e responsivo

---

## 🧠 Fluxo do App

1. **SplashView** – Tela inicial que exibe a logo e redireciona para Home.
2. **HomeView** – Tela principal com:

   * Campo de criação de novos interesses
   * Listagem em cards
   * Botão de menu lateral (Drawer)
3. **DrawerMenuView** – Menu lateral com botões de navegação.
4. **EditInterestView** – Modal de edição de item existente.

---

## 📦 Persistência

Utiliza **SwiftData** com o schema configurado em `AstroTiAttilaApp.swift`.
Os dados são armazenados localmente no dispositivo, com suporte a inserção, atualização e remoção automática.

---

## 🧪 Requisitos de Execução

* macOS Sonoma 14+
* Xcode 16 ou superior
* iOS Simulator 17+ ou dispositivo físico compatível

---

## ▶️ Execução do Projeto

1. Clone o repositório:

   ```bash
   git clone https://github.com/seuusuario/AstroTiAttila.git
   ```
2. Abra o projeto no Xcode.
3. Selecione o esquema **AstroTiAttilaApp**.
4. Execute com **Cmd + R**.

---

## 👨‍💻 Autor

**Attila Tabory**
Desenvolvedor iOS

---

## 🏗️ Versão

**Versão atual:** 1.0.0
**Data de build:** Outubro / 2025

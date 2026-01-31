# File Server – EduNet Secondary School

## 1. Introduction
Le File Server permet de stocker et partager les fichiers des étudiants, enseignants et administration de manière sécurisée.

---

## 2. Création des dossiers partagés
C:\SchoolShares
├── Students
├── Teachers
└── Admin

---

## 3. Permissions
- Étudiants → accès uniquement au dossier `Students`  
- Enseignants → accès uniquement au dossier `Teachers`  
- Admin → accès complet sur tous les dossiers  
- Permissions appliquées via **Groupes** (G_Students, G_Teachers, G_Admin)

---

## 4. Test d’accès
- Se connecter depuis un client avec un compte étudiant / enseignant / admin  
- Vérifier l’accès aux dossiers corrects  
- Screenshots des tests dans `/screenshots/`

---

## 5. Bonnes pratiques
- Utiliser les groupes pour gérer les permissions  
- Ne pas donner d’accès individuel aux utilisateurs  
- Préparer des backups réguliers du File Server

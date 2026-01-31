# Group Policy (GPO) – EduNet Secondary School

## 1. Introduction
Les GPO permettent d’appliquer des règles de sécurité et de configuration sur les utilisateurs et ordinateurs.  
Dans notre projet, les GPO sont appliquées aux OU pour contrôler l’accès et les permissions.

---

## 2. GPO pour les étudiants (OU=Students)
- Interdire l’accès au **Panneau de configuration**  
- Bloquer l’accès aux **lecteurs USB**  
- Appliquer une politique de **mot de passe**  
- Masquer le **lecteur C:** sur l’ordinateur  

---

## 3. GPO pour les enseignants (OU=Teachers)
- Accès limité aux dossiers partagés enseignants  
- Possibilité d’éditer les documents pédagogiques  
- Restrictions système limitées

---

## 4. GPO pour l’administration (OU=Admin)
- Contrôle complet sur tous les systèmes  
- Aucun blocage

---

## 5. Mise en place
1. Créer une nouvelle GPO dans `Group Policy Management`  
2. Configurer les paramètres  
3. Lier la GPO à l’OU correspondante  
4. Tester sur un client pour vérifier l’application

---

## 6. Bonnes pratiques
- Nommer les GPO de façon descriptive (ex: GPO_Students_USB_Block)  
- Toujours tester sur un client avant de déployer  
- Sauvegarder les GPO avant modification

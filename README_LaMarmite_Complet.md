# LaMarmite

**LaMarmite** est un outil de consultation simple, gratuit et collaboratif, conçu pour être utilisé dans les contextes techniques, normatifs, associatifs ou métiers.

---

## 🚀 Fonctionnalités principales

- ✅ Interface simple, responsive (1/3 - 2/3)
- 🔐 Authentification par email + mot de passe (`lamarmite`)
- 🧑‍⚖️ Gestion des rôles : `admin` et `member`
- 📋 Liste des consultations triées par date limite
- 🎨 Code couleur thermique selon l’urgence
- 📄 Description + spécialités + documents joints
- 📝 Réponse par texte + upload de fichier (PDF uniquement, max 5 Mo)
- 📊 Tableau de bord admin + graphique circulaire (Recharts)
- 📤 Export CSV des réponses

---

## 🛠 Stack utilisée

- **Next.js 15**
- **Supabase** (base + authentification + stockage fichiers)
- **Tailwind CSS** pour le style
- **Recharts** pour les graphiques

---

## 🧱 Structure des tables Supabase

### users
| Champ     | Type   | Détail         |
|-----------|--------|----------------|
| email     | text   | clé unique     |
| role      | text   | `admin`/`member` |

### consultations
| Champ       | Type     |
|-------------|----------|
| id          | uuid     |
| title       | text     |
| description | text     |
| deadline    | date     |
| specialties | text[]   |
| documents   | text[]   |

### responses
| Champ           | Type     |
|-----------------|----------|
| id              | uuid     |
| consultation_id | uuid     |
| user_email      | text     |
| content         | text     |
| documents       | text[]   |
| created_at      | timestamp |

### storage
- Bucket `reponses` : pour stocker les fichiers PDF des réponses

---

## ⚙️ Déploiement Vercel

1. Cloner ce repo :
```bash
git clone https://github.com/VOTRE-UTILISATEUR/lamarmite.git
cd lamarmite
```

2. Installer les dépendances :
```bash
npm install
```

3. Ajouter les variables d'environnement (dans `.env.local`) :
```
NEXT_PUBLIC_SUPABASE_URL=https://xxxxxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=xxxxxxxxxxxxxxxxx
```

4. Lancer l’app :
```bash
npm run dev
```

---

## 📦 Dépendances supplémentaires

```bash
npm install recharts
```

---

## ✍️ Démo

En cours de déploiement sur : https://lamarmite.vercel.app

---

## 👤 Auteur

Développé avec ❤️ pour répondre à un besoin collectif de concertation efficace et traçable.

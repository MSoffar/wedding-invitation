# Mohamed & Mariam Wedding Invitation Website

An elegant, interactive wedding invitation website with personalized guest URLs and RSVP functionality.

## 🌐 Live Site
- **Production**: https://mohamed-mariam-wedding-six.vercel.app/
- **Personalized URLs**: Add `?n=GuestName` to personalize (e.g., `?n=John`)

## 📁 Project Structure

```
mohamed-mariam-site/
├── index.html              # Main wedding invitation page
├── _redirects              # Netlify/Vercel redirect rules
├── README.md               # This file
│
├── assets/
│   └── illustrations/      # All image assets used in the site
│       ├── arch.png
│       ├── bride-looking-away-before-envelope-open.png
│       ├── bride-after-open-envelope.png
│       ├── couple.png
│       ├── dance.png
│       ├── dinner.png
│       ├── dress-code.png
│       ├── groom-before-opening-envelope.png
│       ├── groom-after-opening-envelope.png
│       ├── hourglass.png
│       ├── kneel.png
│       ├── raddison.png
│       ├── wedding-couple.png
│       ├── wedding-day.png
│       └── wedding-rings.png
│
├── scripts/                # Automation scripts
│   ├── generate-links.sh   # Generate personalized URLs
│   ├── send-invitations.sh # Send invitations via WhatsApp
│   └── send-test.sh        # Test invitation sending
│
├── docs/                   # Documentation and data
│   ├── SIMPLE-SETUP.txt    # Quick setup guide
│   ├── LOVABLE-PROMPT.md   # Prompt for rebuilding with Lovable
│   ├── guest-list.txt      # Guest list with names and phones
│   ├── guest-list-test.txt # Test guest list
│   ├── generated-links.txt # Generated personalized URLs
│   └── whatsapp-messages.txt # WhatsApp message templates
│
├── whatsapp.jpeg           # WhatsApp preview image (option 1)
└── whatsapp-2.jpeg         # WhatsApp preview image (option 2)
```

## ✨ Features

### 🎨 Interactive Elements
- **Envelope Opening Animation**: Click to reveal the invitation
- **Personalized Greeting**: URL parameter shows guest name
- **Scratch-Off Date**: Interactive canvas date reveal
- **Live Countdown**: Days, hours, minutes, seconds until wedding
- **Falling Petals**: Beautiful rose petal animation
- **Background Music**: Optional romantic music with toggle

### 📱 Sections
1. **Loading Screen**: Wedding rings animation
2. **Envelope Stage**: Personalized envelope with guest name
3. **Couple Introduction**: Mohamed & Mariam with illustration
4. **Photo**: Polaroid-style couple photo
5. **Message**: Personal love story
6. **Date Reveal**: Interactive scratch card (Feb 1, 2025)
7. **Countdown**: Live timer until wedding
8. **Schedule**: Ceremony, Dinner, Party timeline
9. **Location**: Radisson Blu Hotel, Cairo
10. **Dress Code**: Formal elegance guidelines
11. **RSVP Form**: Guest response form

## 🚀 Usage

### Personalized Invitations
Add guest name to URL:
```
https://mohamed-mariam-wedding-six.vercel.app/?n=Ahmed
https://mohamed-mariam-wedding-six.vercel.app/?n=Sarah
```

### Generate Links
```bash
cd scripts
./generate-links.sh
```

### Send Invitations
```bash
cd scripts
./send-invitations.sh
```

## 🎨 Design System

### Colors
- **Ivory**: `#F7F2EC` - Background
- **Rose**: `#CFA6A3` - Accent
- **Sage**: `#A8A38F` - Secondary accent
- **Ink**: `#5B4F4A` - Text

### Fonts
- **Cormorant Garamond** - Body text
- **Pinyon Script** - Decorative text
- **Amiri** - Arabic names

## 📝 RSVP Data

Form submissions go to: `submit-form.com/2JdQ8Zvzs`

## 🔧 Development

### Local Testing
Simply open `index.html` in a browser. No build process needed.

### Deploy
- **Vercel**: Connect GitHub repo for auto-deploy
- **Netlify**: Drag & drop or connect repo

## 📅 Event Details

**Date**: February 1, 2025  
**Time**: 6:00 PM  
**Venue**: Radisson Blu Hotel, Cairo Heliopolis

### Schedule
- 6:00 PM - Ceremony
- 7:30 PM - Dinner
- 9:00 PM - Party

## 🎭 Images Used

All illustrations in `assets/illustrations/`:
- ✅ All files are currently in use
- No unused images

## 📄 Scripts

### `generate-links.sh`
Reads guest list and generates personalized URLs

### `send-invitations.sh`
Sends WhatsApp messages with personalized links

### `send-test.sh`
Tests invitation sending with a small group

## 🔐 Guest Data

- `guest-list.txt` - Production guest list
- `guest-list-test.txt` - Test guest list
- Format: `Name|PhoneNumber`

## 📮 Contact

For questions or updates, contact the couple or web admin.

---

**Built with ❤️ for Mohamed & Mariam's special day**

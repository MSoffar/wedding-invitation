# Wedding Invitation Website - Enhanced Version

Create a modern, elegant, and interactive wedding invitation website with the following features and improvements:

## Core Features to Include

### 1. **Animated Envelope Opening**
- Interactive envelope that opens when clicked/tapped
- Smooth CSS animations for flap opening
- Personalized guest name on envelope (URL parameter: `?n=GuestName`)
- Bride and groom illustrations that change expression after envelope opens
- Falling rose petals animation
- Background music toggle button

### 2. **Names Section**
- Animated reveal of couple names: "Mohamed & Mariam"
- SVG illustration of couple hugging and holding childhood photos
- Elegant text animations with staggered reveals
- Decorative branch illustrations in corners
- "Dear Guests" message with invitation text
- Scroll cue to continue

### 3. **Photo Section**
- Polaroid-style frame with tape at top corners
- SVG sketch overlay effect on photo
- Decorative flower sprigs
- Heading: "Love in Every Language"

### 4. **Personal Message**
- Italic font style
- Decorative flower illustration
- Personal love story or message from couple

### 5. **Date Reveal (Interactive Scratch Card)**
- Canvas-based scratch-off effect
- Calendar view highlighting wedding date (February 1, 2025)
- Heart animation drawing around the date
- Time display: "6:00 PM"

### 6. **Countdown Timer**
- **Animated hourglass icon** (this is important!)
  - Use Lottie animation for smooth, professional hourglass
  - Should show sand draining/filling animation
  - Loop continuously
  - 20-second animation cycle preferred
- Live countdown showing Days, Hours, Minutes, Seconds
- Elegant grid layout

### 7. **Event Schedule**
- Three event cards with icons:
  - **6:00 PM - Ceremony** (wedding rings icon)
  - **7:30 PM - Dinner** (dinner icon)  
  - **9:00 PM - Party** (dancing icon)
- Connected by decorative dots
- Icons: Use custom illustrations matching the style

### 8. **Venue Information**
- Hotel illustration/icon
- Venue name: "Radisson Blu Hotel, Cairo Heliopolis"
- Address and interactive map
- "Get Directions" button linking to Google Maps

### 9. **Dress Code**
- Illustration of formal attire
- Text: "Formal Elegance"
- Description of expected attire

### 10. **RSVP Form**
- Guest name input (pre-filled from URL parameter)
- Attendance radio buttons (Attending / Unable to attend)
- Number of guests selector
- Dietary preferences/restrictions textarea
- Submit button
- Integration with FormSubmit.co or similar service

## Design System

### Color Palette
- **Ivory**: `#F7F2EC` (background)
- **Nude**: `#EFE4DA`
- **White**: `#FFFDFC` (card backgrounds)
- **Rose**: `#CFA6A3` (accent color)
- **Sage**: `#A8A38F` (secondary accent)
- **Ink**: `#5B4F4A` (text)
- **Ink Soft**: `#85766f` (secondary text)

### Typography
- **Serif font**: Cormorant Garamond (body text, headings)
- **Script font**: Pinyon Script (names, decorative text)
- **Arabic font**: Amiri (for Arabic guest names if needed)

### Design Style
- Elegant, minimalist, romantic
- Vintage/classic wedding aesthetic
- Soft animations and transitions
- Hand-drawn illustration style
- Subtle texture overlay (grain/noise)

## Technical Requirements

### Animations & Interactions
1. **Smooth scroll-triggered animations** - fade in as sections enter viewport
2. **Staggered text reveals** - words appear one by one with clip-path animation
3. **Interactive elements** - hover states, button feedback
4. **Parallax effects** - subtle movement on decorative elements
5. **Page transitions** - smooth fade between stages
6. **Canvas scratch effect** - for date reveal

### Responsive Design
- Mobile-first approach
- Works perfectly on iPhone/Android
- Touch-friendly interaction areas
- Safe area insets for notched phones
- Optimized images and SVGs

### Performance
- Fast loading (< 3 seconds)
- Optimized SVGs inline for critical content
- Lazy loading for images
- Smooth 60fps animations

### Special Features
- **URL personalization**: `?n=GuestName` shows name on envelope and pre-fills RSVP
- **Background music**: Soft romantic music with toggle control
- **WhatsApp preview**: Proper OG tags for link sharing
- **Offline-friendly**: Works without JavaScript (with fallbacks)

## Important Improvements from Original

### 1. **Better Hourglass Animation**
- Use **Lottie animation** from LottieFiles (free)
- Find elegant, minimal hourglass with sand draining
- Should be smooth, professional, not hand-drawn SVG
- Fallback to static icon if Lottie fails

### 2. **Enhanced Animations**
- Faster initial load (reduce delays)
- More natural easing functions
- Smoother transitions between stages

### 3. **Better Mobile UX**
- Larger touch targets
- Clearer tap hints
- Better scroll behavior
- Optimized for one-handed use

### 4. **Accessibility**
- Proper ARIA labels
- Keyboard navigation
- Screen reader friendly
- Reduced motion support

### 5. **Form Enhancement**
- Real-time validation
- Success/error messages
- Loading states
- Email confirmation option

## File Structure
```
wedding-site/
├── index.html
├── styles.css
├── script.js
├── assets/
│   ├── illustrations/
│   │   ├── wedding-rings.png
│   │   ├── couple.png
│   │   ├── bride-before.png
│   │   ├── bride-after.png
│   │   ├── groom-before.png
│   │   ├── groom-after.png
│   │   ├── arch.png
│   │   ├── dinner.png
│   │   ├── dance.png
│   │   ├── hotel.png
│   │   ├── dress-code.png
│   │   └── hourglass.json (Lottie)
│   └── music/
│       └── background-music.mp3
```

## Implementation Notes

1. **Start with the envelope stage** - this creates the wow factor
2. **Use modern CSS** - Grid, Flexbox, Custom Properties
3. **Keep JavaScript minimal** - Use for interactions, not layout
4. **Test on real devices** - iPhone and Android
5. **Optimize images** - Use WebP with PNG fallbacks
6. **Add loading state** - Show rings animation while content loads

## Key User Flow

1. User opens link with personalized name
2. Loading screen (wedding rings) appears
3. Envelope stage with guest name shows
4. User taps envelope → it opens with animation
5. Couple illustrations change expressions
6. Rose petals fall
7. Letter content fades in
8. User scrolls through sections
9. Interactive date scratch-off
10. Form submission at end

## Success Criteria

✅ Beautiful, romantic aesthetic  
✅ Smooth animations (60fps)  
✅ Fast loading (< 3s)  
✅ Works perfectly on mobile  
✅ Personalized for each guest  
✅ RSVP form functional  
✅ Easy to share on WhatsApp  
✅ Professional hourglass animation  
✅ Accessible and inclusive  

---

**Additional Context:**
- Wedding date: February 1, 2025, 6:00 PM
- Venue: Radisson Blu Hotel, Cairo Heliopolis
- Couple: Mohamed & Mariam
- Style: Elegant, romantic, vintage-modern blend
- Target audience: Wedding guests (all ages, mobile-first)

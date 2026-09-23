#!/bin/bash

# Wedding Invitation Sender
# Opens WhatsApp for each guest automatically

# CHANGE THIS TO YOUR ACTUAL WEBSITE URL
WEBSITE_URL="https://mohamed-mariam-wedding-six.vercel.app"

# Country code for all guests (Egypt)
COUNTRY_CODE="20"

# File paths
GUEST_LIST="guest-list.txt"
SENT_FILE="sent-invitations.txt"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Create sent file if it doesn't exist
if [ ! -f "$SENT_FILE" ]; then
    echo "# Sent invitations tracking" > "$SENT_FILE"
    echo "# Format: Name | Phone | Sent Date" >> "$SENT_FILE"
    echo "" >> "$SENT_FILE"
fi

echo -e "${BLUE}Wedding Invitation Sender${NC}"
echo "============================="
echo ""
echo "This script will open WhatsApp for each guest."
echo "You'll need to click SEND manually for each one."
echo ""
read -p "Press ENTER to start sending invitations..."
echo ""

# Counter
SENT_COUNT=0
SKIPPED_COUNT=0
TOTAL=0

# Read guest list
while IFS=, read -r name phone; do
    # Trim whitespace
    name=$(echo "$name" | xargs)
    phone=$(echo "$phone" | xargs)
    
    # Skip empty lines
    if [ -z "$name" ]; then
        continue
    fi
    
    TOTAL=$((TOTAL + 1))
    
    # Check if already sent
    if grep -q "$name|" "$SENT_FILE"; then
        echo -e "${YELLOW}⏭  Skipping $name (already sent)${NC}"
        SKIPPED_COUNT=$((SKIPPED_COUNT + 1))
        continue
    fi
    
    # Remove any + or leading zeros, then add country code
    phone=$(echo "$phone" | sed 's/^+//' | sed 's/^0//')
    phone="+${COUNTRY_CODE}${phone}"
    
    # URL encode name
    encoded_name=$(echo "$name" | sed 's/ /+/g')
    
    # Generate personalized link (clean URL format)
    invitation_link="${WEBSITE_URL}/${encoded_name}"
    
    # Generate WhatsApp message (URL encoded)
    message="Dear ${name},%0A%0AWe would love to have you celebrate our special day with us!%0A%0A${invitation_link}%0A%0AMohamed & Mariam"
    
    # WhatsApp link
    whatsapp_link="https://wa.me/${phone}?text=${message}"
    
    # Open WhatsApp in browser
    echo -e "${GREEN}📱 Opening WhatsApp for: $name ($phone)${NC}"
    open "$whatsapp_link"
    
    # Mark as sent
    echo "${name} | ${phone} | $(date)" >> "$SENT_FILE"
    SENT_COUNT=$((SENT_COUNT + 1))
    
    # Wait for user to send before continuing
    echo ""
    echo -e "${YELLOW}👉 Click SEND in WhatsApp, then press ENTER to continue to next guest...${NC}"
    read
    
    # Small delay
    sleep 1
    
done < "$GUEST_LIST"

echo ""
echo "============================="
echo -e "${GREEN}Sending Complete!${NC}"
echo "Total guests: $TOTAL"
echo "Invitations sent: $SENT_COUNT"
echo "Already sent (skipped): $SKIPPED_COUNT"
echo ""
echo "Tracking file updated: $SENT_FILE"
echo "============================="

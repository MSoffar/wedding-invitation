#!/bin/bash

# Test invitation sender

WEBSITE_URL="https://mohamed-mariam.vercel.app"
COUNTRY_CODE="20"
GUEST_LIST="guest-list-test.txt"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Test Invitation Sender${NC}"
echo "======================="
echo ""

while IFS=, read -r name phone; do
    name=$(echo "$name" | xargs)
    phone=$(echo "$phone" | xargs)
    
    if [ -z "$name" ]; then
        continue
    fi
    
    phone=$(echo "$phone" | sed 's/^+//' | sed 's/^0//')
    phone="+${COUNTRY_CODE}${phone}"
    
    encoded_name=$(echo "$name" | sed 's/ /-/g')
    invitation_link="${WEBSITE_URL}/${encoded_name}"
    
    # Just the link, no message
    message="${invitation_link}"
    
    whatsapp_link="https://wa.me/${phone}?text=${message}"
    
    echo -e "${GREEN}📱 Opening WhatsApp for: $name ($phone)${NC}"
    echo ""
    echo "Message preview:"
    echo "$invitation_link"
    echo ""
    echo "We're waiting for you! 💍"
    echo ""
    
    open "$whatsapp_link"
    
done < "$GUEST_LIST"

echo "======================="
echo -e "${GREEN}Test sent!${NC}"

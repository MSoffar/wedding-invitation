export const config = {
  runtime: 'edge',
};

export default async function handler(req) {
  const url = new URL(req.url);
  const guestPath = url.searchParams.get('guest') || '';
  
  // Fetch the index.html
  const baseUrl = url.origin;
  const htmlResponse = await fetch(`${baseUrl}/index.html`);
  let html = await htmlResponse.text();
  
  if (guestPath) {
    const guestName = decodeURIComponent(guestPath)
      .replace(/-/g, ' ')
      .split(' ')
      .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
      .join(' ');
    
    // Update meta tags with guest name
    html = html
      .replace(/<title>.*?<\/title>/, `<title>Wedding Invitation for ${guestName} - Mohamed & Mariam</title>`)
      .replace(/property="og:title" content=".*?"/, `property="og:title" content="You're Invited to Mohamed & Mariam's Wedding, ${guestName}"`)
      .replace(/property="og:description" content=".*?"/, `property="og:description" content="Dear ${guestName}, we would love to have you celebrate our special day with us!"`)
      .replace(/name="twitter:title" content=".*?"/, `name="twitter:title" content="Wedding Invitation for ${guestName}"`)
      .replace(/name="twitter:description" content=".*?"/, `name="twitter:description" content="Dear ${guestName}, we would love to have you celebrate our special day with us!"`);
  }
  
  return new Response(html, {
    headers: {
      'Content-Type': 'text/html; charset=utf-8',
      'Cache-Control': 'public, max-age=0, must-revalidate',
    },
  });
}

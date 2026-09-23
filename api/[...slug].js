export const config = {
  runtime: 'edge',
};

export default async function handler(request) {
  const url = new URL(request.url);
  const slug = url.pathname.slice(1); // Remove leading /
  
  // Extract guest name from path (e.g., /Mariam-Raafat -> Mariam Raafat)
  const guestName = decodeURIComponent(slug).replace(/-/g, ' ');
  
  // Fetch the static index.html
  const indexUrl = new URL('/index.html', url.origin);
  const response = await fetch(indexUrl);
  let html = await response.text();
  
  // Inject personalized OG tags
  const ogTitle = guestName 
    ? `${guestName}, you're invited to Mohamed & Mariam's Wedding`
    : "You're Invited to Our Wedding";
  
  html = html.replace(
    /<meta property="og:title" content="[^"]*">/,
    `<meta property="og:title" content="${ogTitle}">`
  );
  
  html = html.replace(
    /<meta name="twitter:title" content="[^"]*">/,
    `<meta name="twitter:title" content="${ogTitle}">`
  );
  
  return new Response(html, {
    headers: {
      'Content-Type': 'text/html; charset=utf-8',
      'Cache-Control': 'public, max-age=60',
    },
  });
}

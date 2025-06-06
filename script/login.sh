curl -v -X POST http://localhost:3000/api/v1/login \
  -H "Content-Type: application/json" \
  -H "X-CSRF-Token: ekTGfoxeVR3QTf4jkuOoMLpEa3QzYe3qNFrg-NLhbAksnC6kFveWReDKnUGF8s2NYUu5R192pjRBH0bLVEAziw" \
  -d '{"email":"default@example.com", "password":"password123"}'


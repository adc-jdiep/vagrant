# site.pp must exist (puppet #15106, foreman #1708)

Package { 
  allow_virtual => true,
} 

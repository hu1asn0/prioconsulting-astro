// Központi schema.org adatforrás a Prio Consulting site-hoz.
// JSON-LD-be ezekből renderelünk: Organization, ProfessionalService (LocalBusiness), Person.
//
// NAP konzisztencia: minden mező EXAKT azonos a site footer + impressum + GBP + LinkedIn-en.
// Lásd: ~/docs/projects/prioconsulting/gbp-setup-checklist.md

export const SITE_URL = 'https://prioconsulting.hu';

const ADDRESS = {
  '@type': 'PostalAddress',
  streetAddress: 'Wesselényi utca 4., 3.em./15A',
  addressLocality: 'Budapest',
  postalCode: '1077',
  addressCountry: 'HU',
} as const;

export const organization = {
  '@context': 'https://schema.org',
  '@type': 'Organization',
  '@id': `${SITE_URL}#org`,
  name: 'Prio Consulting Kft.',
  legalName: 'Prio Consulting Korlátolt Felelősségű Társaság',
  url: SITE_URL,
  logo: `${SITE_URL}/favicon.svg`,
  email: 'info@prioconsulting.hu',
  telephone: '+36-30-822-5771',
  taxID: '29024331-2-42',
  vatID: 'HU29024331',
  address: ADDRESS,
  founder: { '@id': `${SITE_URL}#simon` },
  sameAs: [
    'https://www.linkedin.com/in/simonandras/',
  ],
};

export const localBusiness = {
  '@context': 'https://schema.org',
  '@type': 'ProfessionalService',
  '@id': `${SITE_URL}#business`,
  name: 'Prio Consulting Kft.',
  image: `${SITE_URL}/favicon.svg`,
  url: SITE_URL,
  telephone: '+36-30-822-5771',
  email: 'info@prioconsulting.hu',
  address: ADDRESS,
  openingHoursSpecification: [
    {
      '@type': 'OpeningHoursSpecification',
      dayOfWeek: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
      opens: '09:00',
      closes: '17:00',
    },
  ],
  priceRange: '$$$',
  areaServed: [
    { '@type': 'Country', name: 'Hungary' },
    { '@type': 'AdministrativeArea', name: 'Európai Unió' },
  ],
  founder: { '@id': `${SITE_URL}#simon` },
};

export const person = {
  '@context': 'https://schema.org',
  '@type': 'Person',
  '@id': `${SITE_URL}#simon`,
  name: 'Simon András',
  alternateName: 'Andras Simon',
  jobTitle: 'IT Project Manager / Workstream Lead',
  worksFor: { '@id': `${SITE_URL}#org` },
  url: `${SITE_URL}/rolam/`,
  telephone: '+36-30-822-5771',
  email: 'simon.andras@prioconsulting.hu',
  alumniOf: [
    { '@type': 'CollegeOrUniversity', name: 'Bánki Donát Főiskola' },
    { '@type': 'CollegeOrUniversity', name: 'Nottingham Trent University' },
  ],
  knowsLanguage: ['hu', 'en'],
  hasCredential: [
    { '@type': 'EducationalOccupationalCredential', name: 'AI for PM (2025)' },
    { '@type': 'EducationalOccupationalCredential', name: 'SAP Ariba — Udemy (2025)' },
    { '@type': 'EducationalOccupationalCredential', name: 'PMBOK / Project and People Management (Gothenburg, 2005)' },
    { '@type': 'EducationalOccupationalCredential', name: 'Multi-PM — SkillPath (Sydney, 2009)' },
  ],
  knowsAbout: [
    'SAP IS-U',
    'SAP ECC',
    'SAP S/4HANA',
    'AWS Cloud Migration',
    'Carve-out IT',
    'Data Migration',
    'Workday Rollout',
    'ETRM (ENDUR)',
    'GIS / SCADA',
    'Stakeholder Management',
  ],
  sameAs: [
    'https://www.linkedin.com/in/simonandras/',
  ],
};

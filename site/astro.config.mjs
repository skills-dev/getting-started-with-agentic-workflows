import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://example.com',
  server: {
    host: true,
    port: 4321,
  },
});

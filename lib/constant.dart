String defaultUrl = 'https://terkirim.cloud/api';

enum Service { email, whatsapp }

Map<Service, String> serviceUrlPaths = {
  Service.email: '/email',
  Service.whatsapp: '/whatsapp',
};

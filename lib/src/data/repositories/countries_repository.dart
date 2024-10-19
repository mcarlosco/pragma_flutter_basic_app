import '../models/country.dart';

final class CountriesRepository {
  const CountriesRepository();

  Set<Country> get() => const {
        Country(
          name: 'Colombia',
          flag: '🇨🇴',
        ),
        Country(
          name: 'Perú',
          flag: '🇵🇪',
        ),
        Country(
          name: 'Panamá',
          flag: '🇵🇦',
        ),
        Country(
          name: 'Guatemala',
          flag: '🇬🇹',
        ),
        Country(
          name: 'México',
          flag: '🇲🇽',
        ),
      };
}

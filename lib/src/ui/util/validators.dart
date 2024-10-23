String? validateNonNull(Object? value) => value == null ? 'Requerdio' : null;

String? validateNonEmpty(String? value) =>
    value?.trim().isEmpty ?? true ? 'Requerido' : null;

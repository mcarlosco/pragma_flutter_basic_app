import 'package:flutter/material.dart';

import '../../data/models.dart';
import '../util/validators.dart';
import '../widgets.dart';

final class FormView extends StatefulWidget {
  final Set<Country> countries;
  final Set<Team> teams;

  final void Function(Job job) onSaved;

  final Job? job;

  bool get hasJob => job != null;

  const FormView({
    super.key,
    required this.countries,
    required this.teams,
    required this.onSaved,
    this.job,
  });

  @override
  State<FormView> createState() => _FormViewState();
}

final class _FormViewState extends State<FormView> {
  late final GlobalKey<FormState> _formKey;
  late final Map<Country, bool> _countrySelection;

  late bool _urgent;

  String? _title;
  Team? _team;
  String? _description;

  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey();
    _countrySelection = Map.fromEntries(widget.countries.map((country) =>
        MapEntry(country, widget.job?.countries.contains(country) ?? false)));

    _urgent = widget.job?.isUrgent ?? false;

    _title = widget.job?.title;
    _team = widget.job?.team;
    _description = widget.job?.description;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            initialValue: _title,
            decoration: const InputDecoration(
              label: Text('Título*'),
            ),
            readOnly: widget.hasJob,
            maxLength: 50,
            validator: validateNonEmpty,
            onSaved: (title) {
              _title = title;
            },
          ),
          DropdownButtonFormField(
            value: _team,
            decoration: const InputDecoration(
              label: Text('Equipo*'),
            ),
            items: widget.teams
                .map((team) => DropdownMenuItem<Team>(
                      value: team,
                      child: Text(team.name),
                    ))
                .toList(),
            validator: validateNonNull,
            onChanged: (_) {},
            onSaved: (team) {
              _team = team;
            },
          ),
          const OurSpacer.x4(),
          TextFormField(
            initialValue: _description,
            decoration: const InputDecoration(
              label: Text('Descripción*'),
            ),
            maxLines: 3,
            maxLength: 500,
            keyboardType: TextInputType.text,
            validator: validateNonEmpty,
            onSaved: (description) {
              _description = description;
            },
          ),
          const OurSpacer.x1(),
          const Text('Países'),
          for (final country in widget.countries)
            CheckboxListTile(
              title: Text(_countrySelection[country]!
                  ? country.compoundName
                  : country.name),
              value: _countrySelection[country],
              onChanged: (checked) {
                setState(() {
                  _countrySelection[country] = checked!;
                });
              },
            ),
          const Divider(),
          const OurSpacer.x3(),
          const Text('Urgencia'),
          SwitchListTile(
            title: Text(_urgent ? '¡Como pa\' ayer!' : 'Como pa\' hoy'),
            value: _urgent,
            onChanged: (checked) {
              setState(() {
                _urgent = checked;
              });
            },
          ),
          const Divider(),
          const OurSpacer.x2(),
          if (!widget.hasJob)
            FilledButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  final job = Job(
                    title: _title!,
                    team: _team!,
                    description: _description!,
                    countries: (_countrySelection
                          ..removeWhere((_, selected) => !selected))
                        .keys
                        .toSet(),
                    urgency: Urgency.from(_urgent),
                  );

                  widget.onSaved(job);
                }
              },
              child: const Text('Guardar'),
            )
          else
            OutlinedButton(
              onPressed: () {
                _formKey.currentState!.reset();

                setState(() {
                  _countrySelection.updateAll((_, __) => false);
                  _urgent = false;
                });
              },
              child: const Text('Limpiar'),
            ),
        ],
      ),
    );
  }
}

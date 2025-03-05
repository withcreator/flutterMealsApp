import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),

      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isCheked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.glutenFree, isCheked);
            },
            title: Text(
              'Gluten-free',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include gluten-free meals.',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isCheked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.lactoseFree, isCheked);
            },
            title: Text(
              'Lactose-free',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include lactose-free meals.',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isCheked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegetarian, isCheked);
            },
            title: Text(
              'Vegetarian-free',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include vegetarian-free meals.',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isCheked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegan, isCheked);
            },
            title: Text(
              'Vegan-free',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include vegan-free meals.',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}

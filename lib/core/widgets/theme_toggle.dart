import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../shared/providers/theme_provider.dart';

class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final isDark = themeMode == ThemeMode.dark;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: IconButton(
        onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Icon(
            isDark ? Icons.light_mode : Icons.dark_mode,
            key: ValueKey(isDark),
            color: isDark ? Colors.yellow : Colors.grey[700],
          ),
        ),
        tooltip: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
      ),
    );
  }
}

class ThemeSelector extends ConsumerWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Theme',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Column(
            children: [
              _buildThemeOption(
                context,
                ref,
                ThemeMode.system,
                'System',
                'Follow device settings',
                Icons.settings_suggest,
                currentTheme,
              ),
              _buildThemeOption(
                context,
                ref,
                ThemeMode.light,
                'Light',
                'Light theme',
                Icons.light_mode,
                currentTheme,
              ),
              _buildThemeOption(
                context,
                ref,
                ThemeMode.dark,
                'Dark',
                'Dark theme',
                Icons.dark_mode,
                currentTheme,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    WidgetRef ref,
    ThemeMode themeMode,
    String title,
    String subtitle,
    IconData icon,
    ThemeMode currentTheme,
  ) {
    final isSelected = currentTheme == themeMode;

    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? Theme.of(context).colorScheme.primary : null,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: Theme.of(context).colorScheme.primary,
            )
          : null,
      onTap: () => ref.read(themeProvider.notifier).setTheme(themeMode),
      tileColor: isSelected
          ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
} 
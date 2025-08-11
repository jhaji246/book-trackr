import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../../../../shared/providers/reading_goals_provider.dart';

class ReadingStatisticsScreen extends ConsumerWidget {
  const ReadingStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookshelfState = ref.watch(bookshelfProvider);
    final goalsState = ref.watch(readingGoalsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Statistics'),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildOverviewCards(context, bookshelfState, goalsState),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildReadingProgressChart(context, bookshelfState),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildGenreAnalysis(context, bookshelfState),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildReadingStreak(context, goalsState),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildMonthlyProgress(context, bookshelfState),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildInsights(context, bookshelfState, goalsState),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewCards(BuildContext context, bookshelfState, goalsState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context,
                'Total Books',
                bookshelfState.totalBooks.toString(),
                Icons.library_books,
                Colors.blue,
              ),
            ),
            const SizedBox(width: AppConstants.paddingMedium),
            Expanded(
              child: _buildStatCard(
                context,
                'Books Read',
                bookshelfState.completed.length.toString(),
                Icons.check_circle,
                Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context,
                'Current Streak',
                '${goalsState.currentStreak} days',
                Icons.local_fire_department,
                Colors.orange,
              ),
            ),
            const SizedBox(width: AppConstants.paddingMedium),
            Expanded(
              child: _buildStatCard(
                context,
                'Avg Rating',
                _calculateAverageRating(bookshelfState.completed),
                Icons.star,
                Colors.yellow,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatCard(BuildContext context, String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReadingProgressChart(BuildContext context, bookshelfState) {
    final completed = bookshelfState.completed.length;
    final reading = bookshelfState.reading.length;
    final wantToRead = bookshelfState.wantToRead.length;
    final total = bookshelfState.totalBooks;

    if (total == 0) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Center(
            child: Column(
              children: [
                Icon(Icons.pie_chart, size: 64, color: AppConstants.lightOnSurfaceVariant),
                const SizedBox(height: AppConstants.paddingMedium),
                Text(
                  'No reading data yet',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppConstants.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reading Progress',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: completed.toDouble(),
                      title: 'Completed\n$completed',
                      color: Colors.green,
                      radius: 60,
                      titleStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      value: reading.toDouble(),
                      title: 'Reading\n$reading',
                      color: Colors.blue,
                      radius: 60,
                      titleStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      value: wantToRead.toDouble(),
                      title: 'Want to Read\n$wantToRead',
                      color: Colors.orange,
                      radius: 60,
                      titleStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  centerSpaceRadius: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGenreAnalysis(BuildContext context, bookshelfState) {
    final genreMap = <String, int>{};
    
    for (final book in bookshelfState.completed) {
      for (final genre in book.book.genres) {
        genreMap[genre] = (genreMap[genre] ?? 0) + 1;
      }
    }

    final sortedGenres = genreMap.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorite Genres',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            if (sortedGenres.isEmpty)
              Center(
                child: Column(
                  children: [
                    Icon(Icons.category, size: 48, color: AppConstants.lightOnSurfaceVariant),
                    const SizedBox(height: AppConstants.paddingSmall),
                    Text(
                      'No genre data available',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppConstants.lightOnSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              )
            else
              Column(
                children: sortedGenres.take(5).map((entry) {
                  final percentage = (entry.value / bookshelfState.completed.length * 100).round();
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppConstants.paddingSmall),
                    child: Row(
                      children: [
                        Expanded(
                          flex: entry.value,
                          child: Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: AppConstants.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppConstants.paddingSmall),
                        Expanded(
                          flex: bookshelfState.completed.length - entry.value,
                          child: Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: AppConstants.lightOnSurfaceVariant.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppConstants.paddingSmall),
                        SizedBox(
                          width: 80,
                          child: Text(
                            '${entry.key}\n$percentage%',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildReadingStreak(BuildContext context, goalsState) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reading Streak',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                Icon(
                  Icons.local_fire_department,
                  size: 48,
                  color: goalsState.currentStreak > 0 ? Colors.orange : Colors.grey,
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${goalsState.currentStreak} days',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: goalsState.currentStreak > 0 ? Colors.orange : Colors.grey,
                        ),
                      ),
                      Text(
                        goalsState.currentStreak > 0 
                            ? 'Keep up the great work! 🔥'
                            : 'Start your reading journey today!',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppConstants.lightOnSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMonthlyProgress(BuildContext context, bookshelfState) {
    // Get real monthly data from user's reading history
    final monthlyData = _getMonthlyReadingData(bookshelfState);
    
    if (monthlyData.isEmpty) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monthly Progress',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingMedium),
              const Center(
                child: Text(
                  'No reading data available yet.\nStart reading to see your progress!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Monthly Progress',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: _getMaxBooksCount(monthlyData).toDouble(),
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, index) {
                          if (value.toInt() < monthlyData.length) {
                            return Text(
                              monthlyData[value.toInt()]['month'] as String,
                              style: const TextStyle(fontSize: 12),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: const TextStyle(fontSize: 12),
                          );
                        },
                      ),
                    ),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: monthlyData.asMap().entries.map((entry) {
                    return BarChartGroupData(
                      x: entry.key,
                      barRods: [
                        BarChartRodData(
                          toY: (entry.value['books'] as int).toDouble(),
                          color: AppConstants.primaryColor,
                          width: 20,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Get real monthly reading data from user's bookshelf
  List<Map<String, dynamic>> _getMonthlyReadingData(bookshelfState) {
    final monthlyData = <Map<String, dynamic>>[];
    final currentYear = DateTime.now().year;
    
    // Get all completed books from this year
    final completedBooks = bookshelfState.completed.where((book) {
      if (book.completedAt == null) return false;
      return book.completedAt!.year == currentYear;
    }).toList();
    
    // Group books by month
    final monthlyCounts = <int, int>{};
    for (int month = 1; month <= 12; month++) {
      monthlyCounts[month] = 0;
    }
    
    for (final book in completedBooks) {
      final month = book.completedAt!.month;
      monthlyCounts[month] = (monthlyCounts[month] ?? 0) + 1;
    }
    
    // Convert to chart data format
    final monthNames = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    
    for (int month = 1; month <= 12; month++) {
      if (monthlyCounts[month]! > 0) {
        monthlyData.add({
          'month': monthNames[month - 1],
          'books': monthlyCounts[month],
        });
      }
    }
    
    return monthlyData;
  }
  
  /// Get the maximum number of books for chart scaling
  int _getMaxBooksCount(List<Map<String, dynamic>> monthlyData) {
    if (monthlyData.isEmpty) return 1;
    
    final maxBooks = monthlyData.fold<int>(
      0,
      (max, month) => month['books'] > max ? month['books'] : max,
    );
    
    return maxBooks == 0 ? 1 : maxBooks;
  }

  Widget _buildInsights(BuildContext context, bookshelfState, goalsState) {
    final insights = <String>[];
    
    if (bookshelfState.completed.isNotEmpty) {
      insights.add('You\'ve read ${bookshelfState.completed.length} books this year');
    }
    
    if (goalsState.currentStreak > 0) {
      insights.add('You\'re on a ${goalsState.currentStreak}-day reading streak!');
    }
    
    if (bookshelfState.completed.length > 10) {
      insights.add('You\'re an avid reader! Keep it up!');
    }
    
    if (insights.isEmpty) {
      insights.add('Start reading to see your insights here');
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Insights',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            ...insights.map((insight) => Padding(
              padding: const EdgeInsets.symmetric(vertical: AppConstants.paddingSmall),
              child: Row(
                children: [
                  Icon(Icons.lightbulb, color: Colors.yellow[700], size: 20),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Expanded(
                    child: Text(
                      insight,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  String _calculateAverageRating(List completedBooks) {
    if (completedBooks.isEmpty) return '0.0';
    
    final totalRating = completedBooks.fold<int>(0, (sum, book) => sum + (book.rating as int));
    final average = totalRating / completedBooks.length;
    return average.toStringAsFixed(1);
  }
} 
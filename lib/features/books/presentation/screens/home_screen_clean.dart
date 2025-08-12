import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/theme_toggle.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import 'book_detail_screen.dart';
import 'search_screen.dart';
import '../../../../core/widgets/custom_page_transition.dart';
import '../widgets/animated_book_card.dart';
import 'library_screen.dart';

// Import the new clean architecture providers
import '../providers/books_clean_provider.dart';
import '../../domain/entities/book_entity.dart';

class HomeScreenClean extends HookConsumerWidget {
  const HomeScreenClean({super.key});

  // Categories for the home screen
  static const List<Map<String, dynamic>> categories = [
    {
      'name': 'Fiction',
      'icon': Icons.book,
      'color': Colors.blue,
      'description': 'Stories and novels'
    },
    {
      'name': 'Non-Fiction',
      'icon': Icons.school,
      'color': Colors.green,
      'description': 'Knowledge and learning'
    },
    {
      'name': 'Science Fiction',
      'icon': Icons.rocket_launch,
      'color': Colors.purple,
      'description': 'Future and space'
    },
    {
      'name': 'Mystery',
      'icon': Icons.search,
      'color': Colors.orange,
      'description': 'Thrillers and suspense'
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use the new clean architecture providers
    final booksState = ref.watch(booksCleanProvider);
    final featuredBooks = ref.watch(featuredBooksProvider);
    final trendingBooks = ref.watch(trendingBooksProvider);
    final recommendedBooks = ref.watch(recommendedBooksProvider);
    final isLoading = ref.watch(booksLoadingProvider);
    final errorMessage = ref.watch(booksErrorProvider);
    final hasError = ref.watch(booksHasErrorProvider);
    
    final searchController = useTextEditingController();

    // Load data when the screen is first built
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(booksCleanProvider.notifier).loadFeaturedBooks();
        ref.read(booksCleanProvider.notifier).loadTrendingBooks();
        ref.read(booksCleanProvider.notifier).loadRecommendedBooks('user123'); // TODO: Get actual user ID
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.book,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
            const SizedBox(width: 8),
            Text(
              'BookTrackr',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          const ThemeToggle(),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            ),
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
              child: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSearchBar(context, searchController, ref),
          Expanded(
            child: isLoading
                ? _buildLoadingState(context)
                : hasError
                    ? _buildErrorState(context, errorMessage ?? 'Unknown error', ref)
                    : _buildContent(context, ref, featuredBooks, trendingBooks, recommendedBooks),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, TextEditingController controller, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search for books, authors, or genres...',
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(booksCleanProvider.notifier).searchBooks(controller.text);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(searchQuery: controller.text),
                  ),
                );
              }
            },
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        onSubmitted: (query) {
          if (query.isNotEmpty) {
            ref.read(booksCleanProvider.notifier).searchBooks(query);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchScreen(searchQuery: query),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildLoadingState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Loading your reading journey...',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.error_outline,
              size: 48,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Oops! Something went wrong',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          GradientButton(
            onPressed: () {
              ref.read(booksCleanProvider.notifier).clearError();
              ref.read(booksCleanProvider.notifier).refresh();
            },
            icon: Icons.refresh,
            text: 'Try Again',
          ),
        ],
      ),
    );
  }

  Widget _buildContent(
    BuildContext context, 
    WidgetRef ref, 
    List<BookEntity> featuredBooks,
    List<BookEntity> trendingBooks,
    List<BookEntity> recommendedBooks,
  ) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.read(booksCleanProvider.notifier).refresh();
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 32), // Increased padding to prevent overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AI Recommendations Section
            _buildSectionHeader(context, '🤖 Recommended for You', 'Based on your reading history'),
            _buildRecommendationSection(context, recommendedBooks, '🤖 Recommended for You'),

            // Trending Books Section
            _buildSectionHeader(context, '🔥 Trending Now', 'Popular books everyone is reading'),
            _buildRecommendationSection(context, trendingBooks, '🔥 Trending Now'),

            // Featured Books Section
            if (featuredBooks.isNotEmpty) ...[
              _buildSectionHeader(context, '📚 Featured Books', 'Handpicked for you'),
              _buildFeaturedBooks(context, featuredBooks),
            ],

            // Browse by Category Section
            _buildSectionHeader(context, '📂 Browse by Category', 'Discover new genres'),
            _buildCategoryGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationSection(BuildContext context, List<BookEntity> books, String title) {
    return SizedBox(
      height: 160, // Increased height to prevent overflow
      child: books.isEmpty
          ? _buildEmptyRecommendationState(context, title)
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return Container(
                  width: 110,
                  margin: const EdgeInsets.only(right: 16),
                  child: _buildRecommendationCard(context, book),
                );
              },
            ),
    );
  }

  Widget _buildEmptyRecommendationState(BuildContext context, String title) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book_outlined,
            size: 48,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
          ),
          const SizedBox(height: 8),
          Text(
            'No $title available',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(BuildContext context, BookEntity book) {
    return Card(
      elevation: 3,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          CustomPageTransitions.heroTransition(
            child: BookDetailScreen(bookId: book.id, book: null), // TODO: Convert BookEntity to Book
          ),
        ),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 110,
          height: 130,
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // AI Badge
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      width: 0.5,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.psychology,
                        size: 8,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        'AI',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 6),

              // Book Cover Placeholder
              Container(
                width: 45,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                    ],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.book,
                    size: 24,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 6),

              // Book Title
              Flexible(
                child: Text(
                  book.title,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 2),

              // Book Author
              Flexible(
                child: Text(
                  book.author,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 8,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedBooks(BuildContext context, List<BookEntity> books) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Container(
            width: 140, // Increased width to prevent overflow
            margin: const EdgeInsets.only(right: 16),
            child: _buildAnimatedBookCard(context, book),
          );
        },
      ),
    );
  }

  Widget _buildAnimatedBookCard(BuildContext context, BookEntity book) {
    // TODO: Convert BookEntity to Book for AnimatedBookCard
    // For now, create a simple card
    return Card(
      elevation: 3,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          CustomPageTransitions.heroTransition(
            child: BookDetailScreen(bookId: book.id, book: null), // TODO: Convert BookEntity to Book
          ),
        ),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Book Cover Placeholder
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                    ],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.book,
                    size: 32,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              
              // Book Title
              Text(
                book.title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              
              // Book Author
              Text(
                book.author,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 300,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.4,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CustomPageTransitions.slideRight(
                      child: SearchScreen(category: category['name'] as String),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        (category['color'] as Color).withValues(alpha: 0.1),
                        (category['color'] as Color).withValues(alpha: 0.05),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: (category['color'] as Color).withValues(alpha: 0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          category['icon'] as IconData,
                          size: 20,
                          color: category['color'] as Color,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        category['name'] as String,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        category['description'] as String,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

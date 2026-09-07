import 'package:flutter/material.dart';
import 'src/widgets/gamified_sql_scenarios.dart';

import 'part2_interview_scenarios/01_combine_two_tables/combine_two_tables_screen.dart';
import 'part2_interview_scenarios/02_second_highest_salary/second_highest_salary_screen.dart';
import 'part2_interview_scenarios/03_nth_highest_salary/nth_highest_salary_screen.dart';
import 'part2_interview_scenarios/04_rank_scores/rank_scores_screen.dart';
import 'part2_interview_scenarios/05_consecutive_numbers/consecutive_numbers_screen.dart';
import 'part2_interview_scenarios/06_employees_earning_more_than_their_managers/employees_earning_more_than_their_managers_screen.dart';
import 'part2_interview_scenarios/07_duplicate_emails/duplicate_emails_screen.dart';
import 'part2_interview_scenarios/08_customers_who_never_order/customers_who_never_order_screen.dart';
import 'part2_interview_scenarios/09_department_highest_salary/department_highest_salary_screen.dart';
import 'part2_interview_scenarios/100_get_the_second_most_recent_activity/get_the_second_most_recent_activity_screen.dart';
import 'part2_interview_scenarios/101_replace_employee_id_with_the_unique_identifier/replace_employee_id_with_the_unique_identifier_screen.dart';
import 'part2_interview_scenarios/102_total_sales_amount_by_year/total_sales_amount_by_year_screen.dart';
import 'part2_interview_scenarios/103_capital_gain_loss/capital_gain_loss_screen.dart';
import 'part2_interview_scenarios/104_customers_who_bought_products_a_and_b_but_not_c/customers_who_bought_products_a_and_b_but_not_c_screen.dart';
import 'part2_interview_scenarios/105_top_travellers/top_travellers_screen.dart';
import 'part2_interview_scenarios/106_find_the_quiet_students_in_all_exams/find_the_quiet_students_in_all_exams_screen.dart';
import 'part2_interview_scenarios/10_department_top_three_salaries/department_top_three_salaries_screen.dart';
import 'part2_interview_scenarios/11_delete_duplicate_emails/delete_duplicate_emails_screen.dart';
import 'part2_interview_scenarios/12_rising_temperature/rising_temperature_screen.dart';
import 'part2_interview_scenarios/13_trips_and_users/trips_and_users_screen.dart';
import 'part2_interview_scenarios/14_game_play_analysis_i/game_play_analysis_i_screen.dart';
import 'part2_interview_scenarios/15_game_play_analysis_ii/game_play_analysis_ii_screen.dart';
import 'part2_interview_scenarios/16_game_play_analysis_iii/game_play_analysis_iii_screen.dart';
import 'part2_interview_scenarios/17_game_play_analysis_iv/game_play_analysis_iv_screen.dart';
import 'part2_interview_scenarios/18_median_employee_salary/median_employee_salary_screen.dart';
import 'part2_interview_scenarios/19_managers_with_at_least_5_direct_reports/managers_with_at_least_5_direct_reports_screen.dart';
import 'part2_interview_scenarios/20_find_median_given_frequency_of_numbers/find_median_given_frequency_of_numbers_screen.dart';
import 'part2_interview_scenarios/21_winning_candidate/winning_candidate_screen.dart';
import 'part2_interview_scenarios/22_employee_bonus/employee_bonus_screen.dart';
import 'part2_interview_scenarios/23_get_highest_answer_rate_question/get_highest_answer_rate_question_screen.dart';
import 'part2_interview_scenarios/24_find_cumulative_salary_of_an_employee/find_cumulative_salary_of_an_employee_screen.dart';
import 'part2_interview_scenarios/25_count_student_number_in_departments/count_student_number_in_departments_screen.dart';
import 'part2_interview_scenarios/26_find_customer_referee/find_customer_referee_screen.dart';
import 'part2_interview_scenarios/27_investments_in_2016/investments_in_2016_screen.dart';
import 'part2_interview_scenarios/28_customer_placing_the_largest_number_of_orders/customer_placing_the_largest_number_of_orders_screen.dart';
import 'part2_interview_scenarios/29_big_countries/big_countries_screen.dart';
import 'part2_interview_scenarios/30_classes_more_than_5_students/classes_more_than_5_students_screen.dart';
import 'part2_interview_scenarios/31_friend_requests_i_overall_acceptance_rate/friend_requests_i_overall_acceptance_rate_screen.dart';
import 'part2_interview_scenarios/32_human_traffic_of_stadium/human_traffic_of_stadium_screen.dart';
import 'part2_interview_scenarios/33_friend_requests_ii_who_has_the_most_friends/friend_requests_ii_who_has_the_most_friends_screen.dart';
import 'part2_interview_scenarios/34_consecutive_available_seats/consecutive_available_seats_screen.dart';
import 'part2_interview_scenarios/35_sales_person/sales_person_screen.dart';
import 'part2_interview_scenarios/36_tree_node/tree_node_screen.dart';
import 'part2_interview_scenarios/37_triangle_judgement/triangle_judgement_screen.dart';
import 'part2_interview_scenarios/38_shortest_distance_in_a_plane/shortest_distance_in_a_plane_screen.dart';
import 'part2_interview_scenarios/39_shortest_distance_in_a_line/shortest_distance_in_a_line_screen.dart';
import 'part2_interview_scenarios/40_second_degree_follower/second_degree_follower_screen.dart';
import 'part2_interview_scenarios/41_average_salary_departments_vs_company/average_salary_departments_vs_company_screen.dart';
import 'part2_interview_scenarios/42_students_report_by_geography/students_report_by_geography_screen.dart';
import 'part2_interview_scenarios/43_biggest_single_number/biggest_single_number_screen.dart';
import 'part2_interview_scenarios/44_not_boring_movies/not_boring_movies_screen.dart';
import 'part2_interview_scenarios/45_exchange_seats/exchange_seats_screen.dart';
import 'part2_interview_scenarios/46_swap_salary/swap_salary_screen.dart';
import 'part2_interview_scenarios/47_customers_who_bought_all_products/customers_who_bought_all_products_screen.dart';
import 'part2_interview_scenarios/48_actors_and_directors_who_cooperated_at_least_three_times/actors_and_directors_who_cooperated_at_least_three_times_screen.dart';
import 'part2_interview_scenarios/49_product_sales_analysis_i/product_sales_analysis_i_screen.dart';
import 'part2_interview_scenarios/50_product_sales_analysis_ii/product_sales_analysis_ii_screen.dart';
import 'part2_interview_scenarios/51_product_sales_analysis_iii/product_sales_analysis_iii_screen.dart';
import 'part2_interview_scenarios/52_project_employees_i/project_employees_i_screen.dart';
import 'part2_interview_scenarios/53_project_employees_ii/project_employees_ii_screen.dart';
import 'part2_interview_scenarios/54_project_employees_ii/project_employees_ii_screen.dart';
import 'part2_interview_scenarios/55_sales_analysis_i/sales_analysis_i_screen.dart';
import 'part2_interview_scenarios/56_sales_analysis_i/sales_analysis_i_screen.dart';
import 'part2_interview_scenarios/57_sales_analysis_i/sales_analysis_i_screen.dart';
import 'part2_interview_scenarios/58_game_play_analysis_v/game_play_analysis_v_screen.dart';
import 'part2_interview_scenarios/59_unpopular_books/unpopular_books_screen.dart';
import 'part2_interview_scenarios/60_new_users_daily_count/new_users_daily_count_screen.dart';
import 'part2_interview_scenarios/61_highest_grade_for_each_student/highest_grade_for_each_student_screen.dart';
import 'part2_interview_scenarios/62_reported_posts/reported_posts_screen.dart';
import 'part2_interview_scenarios/63_active_businesses/active_businesses_screen.dart';
import 'part2_interview_scenarios/64_user_purchase_platform/user_purchase_platform_screen.dart';
import 'part2_interview_scenarios/65_reported_posts_ii/reported_posts_ii_screen.dart';
import 'part2_interview_scenarios/66_user_activity_for_the_past_30_days_i/user_activity_for_the_past_30_days_i_screen.dart';
import 'part2_interview_scenarios/67_user_activity_for_the_past_30_days_ii/user_activity_for_the_past_30_days_ii_screen.dart';
import 'part2_interview_scenarios/68_article_views_i/article_views_i_screen.dart';
import 'part2_interview_scenarios/69_article_views_ii/article_views_ii_screen.dart';
import 'part2_interview_scenarios/70_market_analysis_i/market_analysis_i_screen.dart';
import 'part2_interview_scenarios/71_market_analysis_ii/market_analysis_ii_screen.dart';
import 'part2_interview_scenarios/72_product_price_at_a_given_date/product_price_at_a_given_date_screen.dart';
import 'part2_interview_scenarios/73_immediate_food_delivery_i/immediate_food_delivery_i_screen.dart';
import 'part2_interview_scenarios/74_immediate_food_delivery_ii/immediate_food_delivery_ii_screen.dart';
import 'part2_interview_scenarios/75_reformat_department_table/reformat_department_table_screen.dart';
import 'part2_interview_scenarios/76_monthly_transactions_i/monthly_transactions_i_screen.dart';
import 'part2_interview_scenarios/77_tournament_winners/tournament_winners_screen.dart';
import 'part2_interview_scenarios/78_last_person_to_fit_in_the_elevator/last_person_to_fit_in_the_elevator_screen.dart';
import 'part2_interview_scenarios/79_monthly_transactions_ii/monthly_transactions_ii_screen.dart';
import 'part2_interview_scenarios/80_queries_quality_and_percentage/queries_quality_and_percentage_screen.dart';
import 'part2_interview_scenarios/81_team_scores_in_football_tournament/team_scores_in_football_tournament_screen.dart';
import 'part2_interview_scenarios/82_report_contiguous_dates/report_contiguous_dates_screen.dart';
import 'part2_interview_scenarios/83_number_of_comments_per_post/number_of_comments_per_post_screen.dart';
import 'part2_interview_scenarios/84_average_selling_price/average_selling_price_screen.dart';
import 'part2_interview_scenarios/85_page_recommendations/page_recommendations_screen.dart';
import 'part2_interview_scenarios/86_all_people_report_to_the_given_manager/all_people_report_to_the_given_manager_screen.dart';
import 'part2_interview_scenarios/87_students_and_examinations/students_and_examinations_screen.dart';
import 'part2_interview_scenarios/88_find_the_start_and_end_number_of_continuous_ranges/find_the_start_and_end_number_of_continuous_ranges_screen.dart';
import 'part2_interview_scenarios/89_weather_type_in_each_country/weather_type_in_each_country_screen.dart';
import 'part2_interview_scenarios/90_find_the_team_size/find_the_team_size_screen.dart';
import 'part2_interview_scenarios/91_running_total_for_different_genders/running_total_for_different_genders_screen.dart';
import 'part2_interview_scenarios/92_restaurant_growth/restaurant_growth_screen.dart';
import 'part2_interview_scenarios/93_ads_performance/ads_performance_screen.dart';
import 'part2_interview_scenarios/94_list_the_products_ordered_in_a_period/list_the_products_ordered_in_a_period_screen.dart';
import 'part2_interview_scenarios/95_number_of_transactions_per_visit/number_of_transactions_per_visit_screen.dart';
import 'part2_interview_scenarios/96_movie_rating/movie_rating_screen.dart';
import 'part2_interview_scenarios/97_students_with_invalid_departments/students_with_invalid_departments_screen.dart';
import 'part2_interview_scenarios/98_activity_participants/activity_participants_screen.dart';
import 'part2_interview_scenarios/99_number_of_trusted_contacts_of_a_customer/number_of_trusted_contacts_of_a_customer_screen.dart';

class SqlMasteryDashboard extends StatefulWidget {
  const SqlMasteryDashboard({super.key});

  @override
  State<SqlMasteryDashboard> createState() => _SqlMasteryDashboardState();
}

class _SqlMasteryDashboardState extends State<SqlMasteryDashboard> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredLeetCodeItems = leetCodeQuestions.where((item) {
      final q = _searchQuery.toLowerCase();
      return item.id.contains(q) || item.title.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('🗄️ Track 02: SQL Mastery Hub'),
        backgroundColor: Colors.teal.shade100,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal.shade900,
          tabs: const [
            Tab(icon: Icon(Icons.videogame_asset), text: 'Gamified SQL UI'),
            Tab(icon: Icon(Icons.list_alt), text: '106 LeetCode Scenarios'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // TAB 1: Gamified SQL UI
          _buildGamifiedTab(context),

          // TAB 2: 106 LeetCode Scenario Features
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _searchController,
                  onChanged: (val) => setState(() => _searchQuery = val),
                  decoration: InputDecoration(
                    hintText: 'Search 106 SQL Questions (e.g. "105" or "Travellers")...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredLeetCodeItems.length,
                  itemBuilder: (context, index) {
                    final item = filteredLeetCodeItems[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal.shade50,
                        child: Text(item.id, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                      ),
                      title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: const Text('Feature Module: SQL Query + Live UI Screen + Widget'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: item.screenBuilder)),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildGamifiedTab(BuildContext context) {
    final gamifiedScenarios = [
      _SqlScenarioItem(
        title: '🎮 Scenario 01: Leaderboard Rankings',
        subtitle: 'Fix SQL ORDER BY sorting to assign Gold/Silver/Bronze medals!',
        color: Colors.amber,
        screen: const LeaderboardGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 02: E-Commerce Product Catalog',
        subtitle: 'Fix SQL WHERE in_stock = 1 to clear "Out of Stock" error badges!',
        color: Colors.blue,
        screen: const ProductCatalogGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 03: Customer Order Directory',
        subtitle: 'Fix SQL LEFT JOIN to prevent \$0 customers from disappearing!',
        color: Colors.green,
        screen: const CustomerOrdersGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 04: Department Top Earners',
        subtitle: 'Fix SQL DENSE_RANK() window functions to highlight top salaries!',
        color: Colors.purple,
        screen: const DepartmentTopEarnersGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 05: Revenue Analytics Dashboard',
        subtitle: 'Fix SQL SUM(CASE WHEN...) to calculate net profit/loss trend cards!',
        color: Colors.teal,
        screen: const FinancialRevenueGamifiedScreen(),
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: gamifiedScenarios.length,
      itemBuilder: (context, index) {
        final item = gamifiedScenarios[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            leading: CircleAvatar(
              backgroundColor: item.color.withAlpha(50),
              child: Text('${index + 1}', style: TextStyle(color: item.color, fontWeight: FontWeight.bold)),
            ),
            title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(item.subtitle, style: const TextStyle(fontSize: 12)),
            trailing: const Icon(Icons.play_circle_fill, color: Colors.teal),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item.screen)),
          ),
        );
      },
    );
  }
}

class _SqlScenarioItem {
  final String title;
  final String subtitle;
  final Color color;
  final Widget screen;

  _SqlScenarioItem({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.screen,
  });
}

class _LeetCodeSqlItem {
  final String id;
  final String title;
  final WidgetBuilder screenBuilder;

  _LeetCodeSqlItem({
    required this.id,
    required this.title,
    required this.screenBuilder,
  });
}

final leetCodeQuestions = [
  _LeetCodeSqlItem(
    id: '01',
    title: '#01: Combine Two Tables',
    screenBuilder: (_) => const CombineTwoTables01Screen(),
  ),
  _LeetCodeSqlItem(
    id: '02',
    title: '#02: Second Highest Salary',
    screenBuilder: (_) => const SecondHighestSalary02Screen(),
  ),
  _LeetCodeSqlItem(
    id: '03',
    title: '#03: Nth Highest Salary',
    screenBuilder: (_) => const NthHighestSalary03Screen(),
  ),
  _LeetCodeSqlItem(
    id: '04',
    title: '#04: Rank Scores',
    screenBuilder: (_) => const RankScores04Screen(),
  ),
  _LeetCodeSqlItem(
    id: '05',
    title: '#05: Consecutive Numbers',
    screenBuilder: (_) => const ConsecutiveNumbers05Screen(),
  ),
  _LeetCodeSqlItem(
    id: '06',
    title: '#06: Employees Earning More Than Their Managers',
    screenBuilder: (_) => const EmployeesEarningMoreThanTheirManagers06Screen(),
  ),
  _LeetCodeSqlItem(
    id: '07',
    title: '#07: Duplicate Emails',
    screenBuilder: (_) => const DuplicateEmails07Screen(),
  ),
  _LeetCodeSqlItem(
    id: '08',
    title: '#08: Customers Who Never Order',
    screenBuilder: (_) => const CustomersWhoNeverOrder08Screen(),
  ),
  _LeetCodeSqlItem(
    id: '09',
    title: '#09: Department Highest Salary',
    screenBuilder: (_) => const DepartmentHighestSalary09Screen(),
  ),
  _LeetCodeSqlItem(
    id: '100',
    title: '#100: Get The Second Most Recent Activity',
    screenBuilder: (_) => const GetTheSecondMostRecentActivity100Screen(),
  ),
  _LeetCodeSqlItem(
    id: '101',
    title: '#101: Replace Employee Id With The Unique Identifier',
    screenBuilder: (_) => const ReplaceEmployeeIdWithTheUniqueIdentifier101Screen(),
  ),
  _LeetCodeSqlItem(
    id: '102',
    title: '#102: Total Sales Amount By Year',
    screenBuilder: (_) => const TotalSalesAmountByYear102Screen(),
  ),
  _LeetCodeSqlItem(
    id: '103',
    title: '#103: Capital Gain Loss',
    screenBuilder: (_) => const CapitalGainLoss103Screen(),
  ),
  _LeetCodeSqlItem(
    id: '104',
    title: '#104: Customers Who Bought Products A And B But Not C',
    screenBuilder: (_) => const CustomersWhoBoughtProductsAAndBButNotC104Screen(),
  ),
  _LeetCodeSqlItem(
    id: '105',
    title: '#105: Top Travellers',
    screenBuilder: (_) => const TopTravellers105Screen(),
  ),
  _LeetCodeSqlItem(
    id: '106',
    title: '#106: Find The Quiet Students In All Exams',
    screenBuilder: (_) => const FindTheQuietStudentsInAllExams106Screen(),
  ),
  _LeetCodeSqlItem(
    id: '10',
    title: '#10: Department Top Three Salaries',
    screenBuilder: (_) => const DepartmentTopThreeSalaries10Screen(),
  ),
  _LeetCodeSqlItem(
    id: '11',
    title: '#11: Delete Duplicate Emails',
    screenBuilder: (_) => const DeleteDuplicateEmails11Screen(),
  ),
  _LeetCodeSqlItem(
    id: '12',
    title: '#12: Rising Temperature',
    screenBuilder: (_) => const RisingTemperature12Screen(),
  ),
  _LeetCodeSqlItem(
    id: '13',
    title: '#13: Trips And Users',
    screenBuilder: (_) => const TripsAndUsers13Screen(),
  ),
  _LeetCodeSqlItem(
    id: '14',
    title: '#14: Game Play Analysis I',
    screenBuilder: (_) => const GamePlayAnalysisI14Screen(),
  ),
  _LeetCodeSqlItem(
    id: '15',
    title: '#15: Game Play Analysis Ii',
    screenBuilder: (_) => const GamePlayAnalysisIi15Screen(),
  ),
  _LeetCodeSqlItem(
    id: '16',
    title: '#16: Game Play Analysis Iii',
    screenBuilder: (_) => const GamePlayAnalysisIii16Screen(),
  ),
  _LeetCodeSqlItem(
    id: '17',
    title: '#17: Game Play Analysis Iv',
    screenBuilder: (_) => const GamePlayAnalysisIv17Screen(),
  ),
  _LeetCodeSqlItem(
    id: '18',
    title: '#18: Median Employee Salary',
    screenBuilder: (_) => const MedianEmployeeSalary18Screen(),
  ),
  _LeetCodeSqlItem(
    id: '19',
    title: '#19: Managers With At Least 5 Direct Reports',
    screenBuilder: (_) => const ManagersWithAtLeast5DirectReports19Screen(),
  ),
  _LeetCodeSqlItem(
    id: '20',
    title: '#20: Find Median Given Frequency Of Numbers',
    screenBuilder: (_) => const FindMedianGivenFrequencyOfNumbers20Screen(),
  ),
  _LeetCodeSqlItem(
    id: '21',
    title: '#21: Winning Candidate',
    screenBuilder: (_) => const WinningCandidate21Screen(),
  ),
  _LeetCodeSqlItem(
    id: '22',
    title: '#22: Employee Bonus',
    screenBuilder: (_) => const EmployeeBonus22Screen(),
  ),
  _LeetCodeSqlItem(
    id: '23',
    title: '#23: Get Highest Answer Rate Question',
    screenBuilder: (_) => const GetHighestAnswerRateQuestion23Screen(),
  ),
  _LeetCodeSqlItem(
    id: '24',
    title: '#24: Find Cumulative Salary Of An Employee',
    screenBuilder: (_) => const FindCumulativeSalaryOfAnEmployee24Screen(),
  ),
  _LeetCodeSqlItem(
    id: '25',
    title: '#25: Count Student Number In Departments',
    screenBuilder: (_) => const CountStudentNumberInDepartments25Screen(),
  ),
  _LeetCodeSqlItem(
    id: '26',
    title: '#26: Find Customer Referee',
    screenBuilder: (_) => const FindCustomerReferee26Screen(),
  ),
  _LeetCodeSqlItem(
    id: '27',
    title: '#27: Investments In 2016',
    screenBuilder: (_) => const InvestmentsIn201627Screen(),
  ),
  _LeetCodeSqlItem(
    id: '28',
    title: '#28: Customer Placing The Largest Number Of Orders',
    screenBuilder: (_) => const CustomerPlacingTheLargestNumberOfOrders28Screen(),
  ),
  _LeetCodeSqlItem(
    id: '29',
    title: '#29: Big Countries',
    screenBuilder: (_) => const BigCountries29Screen(),
  ),
  _LeetCodeSqlItem(
    id: '30',
    title: '#30: Classes More Than 5 Students',
    screenBuilder: (_) => const ClassesMoreThan5Students30Screen(),
  ),
  _LeetCodeSqlItem(
    id: '31',
    title: '#31: Friend Requests I Overall Acceptance Rate',
    screenBuilder: (_) => const FriendRequestsIOverallAcceptanceRate31Screen(),
  ),
  _LeetCodeSqlItem(
    id: '32',
    title: '#32: Human Traffic Of Stadium',
    screenBuilder: (_) => const HumanTrafficOfStadium32Screen(),
  ),
  _LeetCodeSqlItem(
    id: '33',
    title: '#33: Friend Requests Ii Who Has The Most Friends',
    screenBuilder: (_) => const FriendRequestsIiWhoHasTheMostFriends33Screen(),
  ),
  _LeetCodeSqlItem(
    id: '34',
    title: '#34: Consecutive Available Seats',
    screenBuilder: (_) => const ConsecutiveAvailableSeats34Screen(),
  ),
  _LeetCodeSqlItem(
    id: '35',
    title: '#35: Sales Person',
    screenBuilder: (_) => const SalesPerson35Screen(),
  ),
  _LeetCodeSqlItem(
    id: '36',
    title: '#36: Tree Node',
    screenBuilder: (_) => const TreeNode36Screen(),
  ),
  _LeetCodeSqlItem(
    id: '37',
    title: '#37: Triangle Judgement',
    screenBuilder: (_) => const TriangleJudgement37Screen(),
  ),
  _LeetCodeSqlItem(
    id: '38',
    title: '#38: Shortest Distance In A Plane',
    screenBuilder: (_) => const ShortestDistanceInAPlane38Screen(),
  ),
  _LeetCodeSqlItem(
    id: '39',
    title: '#39: Shortest Distance In A Line',
    screenBuilder: (_) => const ShortestDistanceInALine39Screen(),
  ),
  _LeetCodeSqlItem(
    id: '40',
    title: '#40: Second Degree Follower',
    screenBuilder: (_) => const SecondDegreeFollower40Screen(),
  ),
  _LeetCodeSqlItem(
    id: '41',
    title: '#41: Average Salary Departments Vs Company',
    screenBuilder: (_) => const AverageSalaryDepartmentsVsCompany41Screen(),
  ),
  _LeetCodeSqlItem(
    id: '42',
    title: '#42: Students Report By Geography',
    screenBuilder: (_) => const StudentsReportByGeography42Screen(),
  ),
  _LeetCodeSqlItem(
    id: '43',
    title: '#43: Biggest Single Number',
    screenBuilder: (_) => const BiggestSingleNumber43Screen(),
  ),
  _LeetCodeSqlItem(
    id: '44',
    title: '#44: Not Boring Movies',
    screenBuilder: (_) => const NotBoringMovies44Screen(),
  ),
  _LeetCodeSqlItem(
    id: '45',
    title: '#45: Exchange Seats',
    screenBuilder: (_) => const ExchangeSeats45Screen(),
  ),
  _LeetCodeSqlItem(
    id: '46',
    title: '#46: Swap Salary',
    screenBuilder: (_) => const SwapSalary46Screen(),
  ),
  _LeetCodeSqlItem(
    id: '47',
    title: '#47: Customers Who Bought All Products',
    screenBuilder: (_) => const CustomersWhoBoughtAllProducts47Screen(),
  ),
  _LeetCodeSqlItem(
    id: '48',
    title: '#48: Actors And Directors Who Cooperated At Least Three Times',
    screenBuilder: (_) => const ActorsAndDirectorsWhoCooperatedAtLeastThreeTimes48Screen(),
  ),
  _LeetCodeSqlItem(
    id: '49',
    title: '#49: Product Sales Analysis I',
    screenBuilder: (_) => const ProductSalesAnalysisI49Screen(),
  ),
  _LeetCodeSqlItem(
    id: '50',
    title: '#50: Product Sales Analysis Ii',
    screenBuilder: (_) => const ProductSalesAnalysisIi50Screen(),
  ),
  _LeetCodeSqlItem(
    id: '51',
    title: '#51: Product Sales Analysis Iii',
    screenBuilder: (_) => const ProductSalesAnalysisIii51Screen(),
  ),
  _LeetCodeSqlItem(
    id: '52',
    title: '#52: Project Employees I',
    screenBuilder: (_) => const ProjectEmployeesI52Screen(),
  ),
  _LeetCodeSqlItem(
    id: '53',
    title: '#53: Project Employees Ii',
    screenBuilder: (_) => const ProjectEmployeesIi53Screen(),
  ),
  _LeetCodeSqlItem(
    id: '54',
    title: '#54: Project Employees Ii',
    screenBuilder: (_) => const ProjectEmployeesIi54Screen(),
  ),
  _LeetCodeSqlItem(
    id: '55',
    title: '#55: Sales Analysis I',
    screenBuilder: (_) => const SalesAnalysisI55Screen(),
  ),
  _LeetCodeSqlItem(
    id: '56',
    title: '#56: Sales Analysis I',
    screenBuilder: (_) => const SalesAnalysisI56Screen(),
  ),
  _LeetCodeSqlItem(
    id: '57',
    title: '#57: Sales Analysis I',
    screenBuilder: (_) => const SalesAnalysisI57Screen(),
  ),
  _LeetCodeSqlItem(
    id: '58',
    title: '#58: Game Play Analysis V',
    screenBuilder: (_) => const GamePlayAnalysisV58Screen(),
  ),
  _LeetCodeSqlItem(
    id: '59',
    title: '#59: Unpopular Books',
    screenBuilder: (_) => const UnpopularBooks59Screen(),
  ),
  _LeetCodeSqlItem(
    id: '60',
    title: '#60: New Users Daily Count',
    screenBuilder: (_) => const NewUsersDailyCount60Screen(),
  ),
  _LeetCodeSqlItem(
    id: '61',
    title: '#61: Highest Grade For Each Student',
    screenBuilder: (_) => const HighestGradeForEachStudent61Screen(),
  ),
  _LeetCodeSqlItem(
    id: '62',
    title: '#62: Reported Posts',
    screenBuilder: (_) => const ReportedPosts62Screen(),
  ),
  _LeetCodeSqlItem(
    id: '63',
    title: '#63: Active Businesses',
    screenBuilder: (_) => const ActiveBusinesses63Screen(),
  ),
  _LeetCodeSqlItem(
    id: '64',
    title: '#64: User Purchase Platform',
    screenBuilder: (_) => const UserPurchasePlatform64Screen(),
  ),
  _LeetCodeSqlItem(
    id: '65',
    title: '#65: Reported Posts Ii',
    screenBuilder: (_) => const ReportedPostsIi65Screen(),
  ),
  _LeetCodeSqlItem(
    id: '66',
    title: '#66: User Activity For The Past 30 Days I',
    screenBuilder: (_) => const UserActivityForThePast30DaysI66Screen(),
  ),
  _LeetCodeSqlItem(
    id: '67',
    title: '#67: User Activity For The Past 30 Days Ii',
    screenBuilder: (_) => const UserActivityForThePast30DaysIi67Screen(),
  ),
  _LeetCodeSqlItem(
    id: '68',
    title: '#68: Article Views I',
    screenBuilder: (_) => const ArticleViewsI68Screen(),
  ),
  _LeetCodeSqlItem(
    id: '69',
    title: '#69: Article Views Ii',
    screenBuilder: (_) => const ArticleViewsIi69Screen(),
  ),
  _LeetCodeSqlItem(
    id: '70',
    title: '#70: Market Analysis I',
    screenBuilder: (_) => const MarketAnalysisI70Screen(),
  ),
  _LeetCodeSqlItem(
    id: '71',
    title: '#71: Market Analysis Ii',
    screenBuilder: (_) => const MarketAnalysisIi71Screen(),
  ),
  _LeetCodeSqlItem(
    id: '72',
    title: '#72: Product Price At A Given Date',
    screenBuilder: (_) => const ProductPriceAtAGivenDate72Screen(),
  ),
  _LeetCodeSqlItem(
    id: '73',
    title: '#73: Immediate Food Delivery I',
    screenBuilder: (_) => const ImmediateFoodDeliveryI73Screen(),
  ),
  _LeetCodeSqlItem(
    id: '74',
    title: '#74: Immediate Food Delivery Ii',
    screenBuilder: (_) => const ImmediateFoodDeliveryIi74Screen(),
  ),
  _LeetCodeSqlItem(
    id: '75',
    title: '#75: Reformat Department Table',
    screenBuilder: (_) => const ReformatDepartmentTable75Screen(),
  ),
  _LeetCodeSqlItem(
    id: '76',
    title: '#76: Monthly Transactions I',
    screenBuilder: (_) => const MonthlyTransactionsI76Screen(),
  ),
  _LeetCodeSqlItem(
    id: '77',
    title: '#77: Tournament Winners',
    screenBuilder: (_) => const TournamentWinners77Screen(),
  ),
  _LeetCodeSqlItem(
    id: '78',
    title: '#78: Last Person To Fit In The Elevator',
    screenBuilder: (_) => const LastPersonToFitInTheElevator78Screen(),
  ),
  _LeetCodeSqlItem(
    id: '79',
    title: '#79: Monthly Transactions Ii',
    screenBuilder: (_) => const MonthlyTransactionsIi79Screen(),
  ),
  _LeetCodeSqlItem(
    id: '80',
    title: '#80: Queries Quality And Percentage',
    screenBuilder: (_) => const QueriesQualityAndPercentage80Screen(),
  ),
  _LeetCodeSqlItem(
    id: '81',
    title: '#81: Team Scores In Football Tournament',
    screenBuilder: (_) => const TeamScoresInFootballTournament81Screen(),
  ),
  _LeetCodeSqlItem(
    id: '82',
    title: '#82: Report Contiguous Dates',
    screenBuilder: (_) => const ReportContiguousDates82Screen(),
  ),
  _LeetCodeSqlItem(
    id: '83',
    title: '#83: Number Of Comments Per Post',
    screenBuilder: (_) => const NumberOfCommentsPerPost83Screen(),
  ),
  _LeetCodeSqlItem(
    id: '84',
    title: '#84: Average Selling Price',
    screenBuilder: (_) => const AverageSellingPrice84Screen(),
  ),
  _LeetCodeSqlItem(
    id: '85',
    title: '#85: Page Recommendations',
    screenBuilder: (_) => const PageRecommendations85Screen(),
  ),
  _LeetCodeSqlItem(
    id: '86',
    title: '#86: All People Report To The Given Manager',
    screenBuilder: (_) => const AllPeopleReportToTheGivenManager86Screen(),
  ),
  _LeetCodeSqlItem(
    id: '87',
    title: '#87: Students And Examinations',
    screenBuilder: (_) => const StudentsAndExaminations87Screen(),
  ),
  _LeetCodeSqlItem(
    id: '88',
    title: '#88: Find The Start And End Number Of Continuous Ranges',
    screenBuilder: (_) => const FindTheStartAndEndNumberOfContinuousRanges88Screen(),
  ),
  _LeetCodeSqlItem(
    id: '89',
    title: '#89: Weather Type In Each Country',
    screenBuilder: (_) => const WeatherTypeInEachCountry89Screen(),
  ),
  _LeetCodeSqlItem(
    id: '90',
    title: '#90: Find The Team Size',
    screenBuilder: (_) => const FindTheTeamSize90Screen(),
  ),
  _LeetCodeSqlItem(
    id: '91',
    title: '#91: Running Total For Different Genders',
    screenBuilder: (_) => const RunningTotalForDifferentGenders91Screen(),
  ),
  _LeetCodeSqlItem(
    id: '92',
    title: '#92: Restaurant Growth',
    screenBuilder: (_) => const RestaurantGrowth92Screen(),
  ),
  _LeetCodeSqlItem(
    id: '93',
    title: '#93: Ads Performance',
    screenBuilder: (_) => const AdsPerformance93Screen(),
  ),
  _LeetCodeSqlItem(
    id: '94',
    title: '#94: List The Products Ordered In A Period',
    screenBuilder: (_) => const ListTheProductsOrderedInAPeriod94Screen(),
  ),
  _LeetCodeSqlItem(
    id: '95',
    title: '#95: Number Of Transactions Per Visit',
    screenBuilder: (_) => const NumberOfTransactionsPerVisit95Screen(),
  ),
  _LeetCodeSqlItem(
    id: '96',
    title: '#96: Movie Rating',
    screenBuilder: (_) => const MovieRating96Screen(),
  ),
  _LeetCodeSqlItem(
    id: '97',
    title: '#97: Students With Invalid Departments',
    screenBuilder: (_) => const StudentsWithInvalidDepartments97Screen(),
  ),
  _LeetCodeSqlItem(
    id: '98',
    title: '#98: Activity Participants',
    screenBuilder: (_) => const ActivityParticipants98Screen(),
  ),
  _LeetCodeSqlItem(
    id: '99',
    title: '#99: Number Of Trusted Contacts Of A Customer',
    screenBuilder: (_) => const NumberOfTrustedContactsOfACustomer99Screen(),
  ),
];

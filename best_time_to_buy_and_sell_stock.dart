class Solution {
  int maxProfit(List<int> prices) {
    // Initialize variables
    int minPrice = prices.isNotEmpty ? prices[0] : 0;
    int maxProfit = 0;

    // Traverse through each price in the list
    for (int price in prices) {
      // Update the minimum price encountered so far
      if (price < minPrice) {
        minPrice = price;
      }
      // Calculate the profit if we sell at the current price
      int profit = price - minPrice;
      // Update the maximum profit
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }

    // Return the maximum profit found
    return maxProfit;
  }
}


void main() {
  List<int> prices = [5, 4, 3, 2, 1];

  Solution solution = Solution();
  print(solution.maxProfit(prices));
}
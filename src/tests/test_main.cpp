#include <gtest/gtest.h>

int sum(int a, int b) {
    return a + b;
}

TEST(SumTest, PositiveNumbers) {
    EXPECT_EQ(3, sum(1, 2));
}

TEST(SumTest, NegativeNumbers) {
    EXPECT_EQ(-3, sum(-1, -2));
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

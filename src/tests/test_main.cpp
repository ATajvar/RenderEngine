#include <gtest/gtest.h>
#include <vector>

// Example function that you could test
std::vector<float> getSquareVertices(float size) {
    // Just for example purposes; actual implementation may vary
    return {
        -size, size,   // Top-left
        size, size,    // Top-right
        size, -size,   // Bottom-right
        -size, -size,  // Bottom-left
    };
}

TEST(SquareTest, VerticesSize) {
    float size = 0.5f;
    auto vertices = getSquareVertices(size);

    // Expect 8 entries (4 vertices with x and y)
    EXPECT_EQ(8, vertices.size());
}

TEST(SquareTest, VerticesValues) {
    float size = 0.5f;
    auto vertices = getSquareVertices(size);

    // Check the values of the vertices
    EXPECT_FLOAT_EQ(-size, vertices[0]);  // Top-left x
    EXPECT_FLOAT_EQ(size, vertices[1]);   // Top-left y

    EXPECT_FLOAT_EQ(size, vertices[2]);   // Top-right x
    EXPECT_FLOAT_EQ(size, vertices[3]);   // Top-right y

    // Continue for the rest of the vertices
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

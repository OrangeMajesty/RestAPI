#define BOOST_TEST_MODULE UnitTestSuite
#include <boost/test/included/unit_test.hpp>

BOOST_AUTO_TEST_CASE(unit) {
    BOOST_CHECK(1 + 1 == 2);
}

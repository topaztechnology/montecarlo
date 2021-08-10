-- | ignore

import "brownianbridge"
module bridge = mk_brownian_bridge f64

-- | Two step tests

-- ==
-- entry: test_brownian_bridge2_left_index
-- input { [1.0, 2.0] }
-- output { [0i64, 0i64] }

entry test_brownian_bridge2_left_index [n] (times: [n]f64) = (bridge.build times).left_index

-- ==
-- entry: test_brownian_bridge2_right_index
-- input { [1.0, 2.0] }
-- output { [0i64, 1i64] }

entry test_brownian_bridge2_right_index [n] (times: [n]f64) = (bridge.build times).right_index

-- ==
-- entry: test_brownian_bridge2_bridge_index
-- input { [1.0, 2.0] }
-- output { [1i64, 0i64] }

entry test_brownian_bridge2_bridge_index [n] (times: [n]f64) = (bridge.build times).bridge_index

-- ==
-- entry: test_brownian_bridge2_left_weight
-- input { [1.0, 2.0] }
-- output { [0.0, 0.5] }

entry test_brownian_bridge2_left_weight [n] (times: [n]f64) = (bridge.build times).left_weight

-- ==
-- entry: test_brownian_bridge2_right_weight
-- input { [1.0, 2.0] }
-- output { [0.0, 0.5] }

entry test_brownian_bridge2_right_weight [n] (times: [n]f64) = (bridge.build times).right_weight

-- ==
-- entry: test_brownian_bridge2_std_dev
-- input { [1.0, 2.0] }
-- output { [1.4142135623730951, 0.7071067811865476] }

entry test_brownian_bridge2_std_dev [n] (times: [n]f64) = (bridge.build times).std_dev


-- | Five step tests

-- ==
-- entry: test_brownian_bridge5_left_index
-- input { [1.0, 2.0, 3.0, 4.0, 5.0] }
-- output { [0i64, 0i64, 0i64, 2i64, 3i64] }

entry test_brownian_bridge5_left_index [n] (times: [n]f64) = (bridge.build times).left_index

-- ==
-- entry: test_brownian_bridge5_right_index
-- input { [1.0, 2.0, 3.0, 4.0, 5.0] }
-- output { [0i64, 4i64, 1i64, 4i64, 4i64] }

entry test_brownian_bridge5_right_index [n] (times: [n]f64) = (bridge.build times).right_index

-- ==
-- entry: test_brownian_bridge5_bridge_index
-- input { [1.0, 2.0, 3.0, 4.0, 5.0] }
-- output { [4i64, 1i64, 0i64, 2i64, 3i64] }

entry test_brownian_bridge5_bridge_index [n] (times: [n]f64) = (bridge.build times).bridge_index

-- ==
-- entry: test_brownian_bridge5_left_weight
-- input { [1.0, 2.0, 3.0, 4.0, 5.0] }
-- output { [0.0, 0.6, 0.5, 0.6666666666666666, 0.5] }

entry test_brownian_bridge5_left_weight [n] (times: [n]f64) = (bridge.build times).left_weight

-- ==
-- entry: test_brownian_bridge5_right_weight
-- input { [1.0, 2.0, 3.0, 4.0, 5.0] }
-- output { [0.0, 0.4, 0.5, 0.33333333333333337, 0.5] }

entry test_brownian_bridge5_right_weight [n] (times: [n]f64) = (bridge.build times).right_weight

-- ==
-- entry: test_brownian_bridge5_std_dev
-- input { [1.0, 2.0, 3.0, 4.0, 5.0] }
-- output { [2.23606797749979, 1.0954451150103321, 0.7071067811865476, 0.816496580927726, 0.7071067811865476] }

entry test_brownian_bridge5_std_dev [n] (times: [n]f64) = (bridge.build times).std_dev

-- Bridge transform tests

-- TODO
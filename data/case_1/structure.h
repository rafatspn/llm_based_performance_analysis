#pragma once

#include <memory>

namespace bg {
	template<typename T>
	class DataStruct {
	protected:
		std::shared_ptr<T[]> raw_data = nullptr;
		T* data = nullptr;
		size_t _num_elements = 0;
	public:
		std::shared_ptr<T[]> internal_raw_data() const {
			return raw_data;
		}
		size_t num_elements() const {
			return _num_elements;
		}
	};
}

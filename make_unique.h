#ifndef WGMS3D_MAKE_UNIQUE_H
#define WGMS3D_MAKE_UNIQUE_H

#include <memory>
#include <utility>

namespace wgms3d{

    /// Convenience function. Avoids having to type T twice. Will be
    /// in C++14.
    template <typename T, typename ... Args>
    std::unique_ptr<T> make_unique (Args && ... args)
    {
	return std::unique_ptr<T>( new T(std::forward<Args>(args) ...) );
    }

}

#endif

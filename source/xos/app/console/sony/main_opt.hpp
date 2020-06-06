///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main_opt.hpp
///
/// Author: $author$
///   Date: 5/23/2020
///////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_SONY_MAIN_OPT_HPP
#define XOS_APP_CONSOLE_SONY_MAIN_OPT_HPP

#include "xos/app/console/network/protocol/xttp/main.hpp"
#include "xos/protocol/xttp/request/line.hpp"
#include "xos/protocol/http/request/method/nameof.hpp"
#include "xos/protocol/http/content/type/nameof.hpp"

namespace xos {
namespace app {
namespace console {
namespace sony {

/// class main_optt
template <class TExtends = network::protocol::xttp::main, class TImplements = typename TExtends::implements>
class exported main_optt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef main_optt derives;

    typedef typename extends::file_t file_t;
    typedef typename extends::string_t string_t;
    enum { end_char = extends::end_char };

    /// constructor / destructor
    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    main_optt()
    : volume_param_begin_("{\"volume\": "), volume_param_end_("}"), 
      volume_begin_("{\"method\": \"setAudioVolume\", \"id\": 73, \"params\": ["), 
      volume_end_("], \"version\": 1.1}") {
    }
    virtual ~main_optt() {
    }
    
private:
    main_optt(const main_optt& copy) {
    }

protected:
    virtual int run/*before_connect*/(int argc, char_t** argv, char** env) {
        int err = 0;
        ssize_t count = 0;
        out_writer_t output(*this);
        xos::protocol::http::request::method::nameof::POST method;
        xos::protocol::xttp::request::line line;
        line.set_method(method);
        line.write(count, output);
        return err;
    }

protected:
    typedef typename extends::out_writer_t out_writer_t;

protected:
    string_t volume_param_begin_, volume_param_end_, volume_begin_, volume_end_;
}; /// class main_optt
typedef main_optt<> main_opt;

} /// namespace sony
} /// namespace console
} /// namespace app
} /// namespace xos

#endif /// ndef XOS_APP_CONSOLE_SONY_MAIN_OPT_HPP 

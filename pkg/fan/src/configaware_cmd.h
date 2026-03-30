// **************************************************************************
// File       [ configaware_cmd.h ]
// Author     [ auto-generated ]
// Synopsis   [ aggregator header for CONFIGAWARE commands ]
// Date       [ 2026/03/30 created ]
// **************************************************************************

#ifndef _FAN_CONFIGAWARE_CMD_H_
#define _FAN_CONFIGAWARE_CMD_H_

#include "common/cmd.h"
#include "fan_mgr.h"

// Future configaware commands should add their headers to this file.

namespace FanNs {

class GenAddonCmd : public CommonNs::Cmd {
public:
    GenAddonCmd(const std::string &name, FanMgr *fanMgr);
    ~GenAddonCmd();

    bool exec(const std::vector<std::string> &argv);

private:
    FanMgr *fanMgr_;
};

}

#endif

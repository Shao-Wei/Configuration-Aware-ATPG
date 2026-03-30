// ***************************************************************************
// File       [ gen_addon_cmd.cpp ]
// Author     [ auto-generated ]
// Synopsis   [ implement command to generate addon MDT file ]
// Date       [ 2026/03/30 created ]
// ***************************************************************************

#include <fstream>
#include <iostream>

#include "configaware_cmd.h"

using namespace std;
using namespace FanNs;
using namespace CommonNs;

GenAddonCmd::GenAddonCmd(const std::string &name, FanMgr *fanMgr) : Cmd(name)
{
    fanMgr_ = fanMgr;
    optMgr_.setName(name);
    optMgr_.setShortDes("generate addon mdt file");
    optMgr_.setDes("generate an MDT addon file that defines THRESHOLD_0");
    optMgr_.regArg(new Arg(Arg::OPT, "output MDT file (default: techlib/mod_nangate45_addon.mdt)", "out_file"));
    Opt *opt = new Opt(Opt::BOOL, "print usage", "");
    opt->addFlag("h");
    opt->addFlag("help");
    optMgr_.regOpt(opt);
}

GenAddonCmd::~GenAddonCmd() {}

bool GenAddonCmd::exec(const std::vector<std::string> &argv)
{
    optMgr_.parse(argv);

    if (optMgr_.isFlagSet("h")) {
        optMgr_.usage();
        return true;
    }

    std::string out = "techlib/mod_nangate45_addon.mdt";
    if (optMgr_.getNParsedArg() > 0)
        out = optMgr_.getParsedArg(0);

    // Write a small MDT that defines THRESHOLD_0 as OR(A,B,C)
    ofstream ofs(out.c_str());
    if (!ofs) {
        cerr << "**ERROR GenAddonCmd::exec(): cannot open output file `" << out << "'\n";
        return false;
    }

    ofs << "// Generated addon MDT: THRESHOLD_0 (A+B+C)\n";
    ofs << "model THRESHOLD_0\n";
    ofs << "  (A, B, C, Y)\n";
    ofs << "(\n";
    ofs << "  input (A) ( )\n";
    ofs << "  input (B) ( )\n";
    ofs << "  input (C) ( )\n";
    ofs << "  output (Y) (\n";
    ofs << "    primitive = _or th_or ( A, B, C, Y );\n";
    ofs << "  )\n";
    ofs << ")\n";

    ofs.close();

    cout << "#  Generated addon MDT: " << out << "\n";
    return true;
}

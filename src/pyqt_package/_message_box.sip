// Mantid Repository : https://github.com/mantidproject/mantid
//
// Copyright &copy; 2021 ISIS Rutherford Appleton Laboratory UKRI,
//   NScD Oak Ridge National Laboratory, European Spallation Source,
//   Institut Laue - Langevin & CSNS, Institute of High Energy Physics, CAS
// SPDX - License - Identifier: GPL - 3.0 +
// This file defines the Python bindings for the
// _common library.
%Module(name=_message_box)

%UnitCode
#if defined(_MSC_VER)
  # pragma warning( disable: 4290 )
#elif defined(__GNUC__) && !defined(__clang__)
  // We need default visibility for this module so that
  // python can see the init function.
  #pragma GCC visibility push(default)
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wpedantic"
  #if __GNUC__ >= 5
    #pragma GCC diagnostic ignored "-Wsuggest-override"
  #endif
#endif
%End

// PyQt5 widgets
%Import QtGui/QtGuimod.sip
%Import QtWidgets/QtWidgetsmod.sip

class MessageBox {
%TypeHeaderCode
#include "message_box.h"
%End
public:
    MessageBox(QWidget *parent, QString &title, QString &cppMsg);
};
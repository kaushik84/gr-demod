/* -*- c++ -*- */

#define DEMOD_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "demod_swig_doc.i"

%{
#include "demod/my_qpsk_demod_cb.h"
%}


%include "demod/my_qpsk_demod_cb.h"
GR_SWIG_BLOCK_MAGIC2(demod, my_qpsk_demod_cb);

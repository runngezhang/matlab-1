function specs = thisgetspecs(this)
%THISGETSPECS   Get the specs.

%   Author(s): V. Pellissier
%   Copyright 2005 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2005/06/16 08:28:59 $

specs.Fstop1 = this.Fstop1;
specs.Fpass1 = this.Fpass1;
specs.Fpass2 = this.Fpass2;
specs.Fstop2 = this.Fstop2;
specs.Apass = NaN;
specs.Astop1 = NaN;
specs.Astop2 = NaN;


% [EOF]

function [Yall, t] = getplotdata(this)
%GETPLOTDATA Returns the data to plot

%   Author(s): J. Schickler
%   Copyright 1988-2004 The MathWorks, Inc.
%   $Revision: 1.1.4.6 $  $Date: 2004/12/26 22:19:00 $

if isempty(this.Filters)
    Yall = {};
    t    = {};
else

    if strcmpi(get(this, 'SpecifyLength'), 'off'),
        opts = {};
    else
        opts = {get(this, 'Length')};
    end

    optsstruct.showref  = showref(this.FilterUtils);
    optsstruct.showpoly = showpoly(this.FilterUtils);
    optsstruct.sosview  = get(this, 'SOSViewOpts');

    [Yall, t] = stepz(get(this, 'Filters'), opts{:}, optsstruct);
end

% [EOF]


%   wgms3d - a full-vectorial finite-difference mode solver.
%
%   Copyright (C) 2005-2010  Michael Krause <m.krause@tu-harburg.de>
%
%   This program is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with this program.  If not, see <http://www.gnu.org/licenses/>.

function wgms3d_grid_write (fn, x)
  
    f = fopen(fn, 'w');
    fprintf(f, '%d\n', length(x));
    for i = 1 : length(x)
        fprintf(f, '%e\n', x(i));
    end
    fclose(f);

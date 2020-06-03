function headvol = initHeadvol()

headvol = struct( ...
                 'pathname', '', ...
                 'name', 'headvol', ...
                 'handles',struct('hSurf',[], 'hAxes',[], 'axes', []), ...
                 'img',uint8([]), ...
                 'imgOrig',uint8([]), ...
                 'center',[], ...
                 'centerRotation',[], ...
                 'mesh',AVUtils.initMesh(), ...
                 'tiss_prop',struct('name','', 'scattering',[], 'anisotropy',[], 'absorption',[], 'refraction',[]), ...
                 'T_2digpts',eye(4), ...
                 'T_2mc',eye(4), ...
                 'T_2ras',eye(4), ...
                 'T_2ref',[], ...
                 'orientation', '', ...
                 'orientationOrig', '', ...
                 'checkCompatability',[], ...
                 'isempty',@isempty_loc, ...                 
                 'prepObjForSave',[] ...                 
                );

% --------------------------------------------------------------
function b = isempty_loc(headvol)

b = false;
if isempty(headvol)
    b = true;
elseif isempty(headvol.img)
    b = true;
end


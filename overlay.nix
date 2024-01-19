# You can use this file as a nixpkgs overlay. This is useful in the
# case where you don't want to add the whole NUR namespace to your
# configuration.

self: super:
let
  isReserved = n: n == "lib" || n == "overlays" || n == "modules";
  nameValuePair = n: v: { name = n; value = v; };
  nurAttrs = import ./default.nix { pkgs = super; };

in
# builtins.listToAttrs
#   (map (n: nameValuePair n nurAttrs.${n})
#     (builtins.filter (n: !isReserved n)
#       (builtins.attrNames nurAttrs)))
{
colima = super.colima.overrideAttrs (finalAttrs: prevAttrs: {
  version = prevAttrs.version + "-1";
  name = "${prevAttrs.pname}-${finalAttrs.version}";
  postPatch =
    super.lib.optionalString super.stdenv.isDarwin (prevAttrs.postPatch or "")
    + ''
      substituteInPlace config/dirs.go \
        --replace '"github.com/abiosoft/colima/util"' "" \
        --replace " || util.MacOS()" ""
    '';
});
}

# Final VBar STL and SCAD Parts

The ten final STL files and ten same-name SCAD files sit side by side in this directory. Open the SCAD in OpenSCAD from a downloaded copy of the entire directory so its neighboring STL resolves by relative filename. The stand preview and `_vbar_stand_geometry.scad` are additional source/helper files.

| Part group | Files | Notes |
| --- | --- | --- |
| Handle clamp | Left/right body and matching left/right cap | Four separate parts; shallow `L`/`R` marks face inward on the radio |
| Pivot mechanism | Left/right pivot stub and detent ring | Ring and spring-ball detent are on the right |
| V/BAR stand | HEADER-CORE, WRAP, BAR | Import all three STLs at one shared origin for color printing |

All per-part SCAD files load their **exact final STL by default**. The three stand SCADs can also generate an editable OpenSCAD reconstruction: set `exact_mesh=false` and change dimensions in `_vbar_stand_geometry.scad`. Font shaping and offset tessellation may differ from the fit-tested STL, so validate a regenerated part before printing it.

The clamp bodies were built from a measured handle path joined to the proven pivot donor with voxel mesh operations. The stubs and ring are carried-forward donor meshes. Their SCADs contain `add_material()` and `remove_material()` hooks for local boolean changes to the exact final mesh; their base shapes are not fully parametric OpenSCAD primitives. This distinction is deliberate.

The [stand assembly preview](VBar-SMUT-stand-assembly-preview.scad) displays the three aligned parts in color. For printing, use the individual STLs or the prepared [stand 3MF](../bambu-studio-3mf/stand/VBar-Stand.3mf). Do not import the three STLs as independently centered objects.

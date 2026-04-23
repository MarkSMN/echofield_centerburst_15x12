// ============================================================
// ECHO FIELDS — CENTER BURST — 12×15 SYSTEM
// ============================================================
// Center-burst gradient variant sized for 12" wide × 15" tall work.
//
// CENTER BURST: finger height peaks at the CENTER of each gradient
//   zone and tapers symmetrically to both edges.
//   Shape follows a cosine ease — wide, flat-topped oval arch —
//   NOT a sharp linear tent.
//
// Color A (Normal)  : ARCH  — tall at zone center, short at edges
// Color B (Mirror)  : VALLEY — short at zone center, tall at edges
//
// When interleaved the two colors complete each other:
//   A's peak fills B's valley; B's peaks fill A's grooves.
//   Creates luminous lens/oval forms floating across the slab.
//
// Zone boundaries: both colors have their extreme (min for A,
//   max for B) at every zone edge. This produces articulated
//   vertical seam lines — dark groove (A) / bright ridge (B).
//
// "No center finger" note: fingers are spaced 0.25" apart.
// The zone center falls between two fingers — there is always
// a symmetric PAIR of peak fingers, not a single crown.
// The cosine curve holds both at near-maximum height, reading
// as a broad flat crown rather than a sharp point.
//
// Physical pieces — 12" width, asymmetric splits:
//   Color A: 2 pieces — 8" + 4"  (seam at x=8")
//   Color B: 2 pieces — 4" + 8"  (seam at x=4")
//   Asymmetric layout produces alternating brick seam pattern
//   when Color A and Color B strips are assembled together.
//
// Max finger height capped at 0.5" for structural integrity.
// Up to 12 gradient zones at 1" minimum width each.
// ============================================================

/* [Display Settings] */
// Display mode: 1=Print bed layout, 2=Linear visualization
display_mode = 2;  // [1:Print bed layout, 2:Linear visualization]

// Which color to display/export
// 1 = Color A (Normal, 8"+4"), 2 = Color B (Mirror, 4"+8")
color_mode = 1;  // [1:Color A Normal, 2:Color B Mirror]

// Joint visibility:
//   1 = All joints        (standard interior strip)
//   2 = No outies, no innies  (Color A TOP endcap — completely flat top face,
//                              nothing above it to connect to)
//   3 = No innies, all outies (suppress innies entirely — not typically used)
//   4 = No outies, BLIND pocket innies  (Color B BOTTOM endcap — flat bottom face,
//       pocket accepts peg from strip above, stays closed on exterior)
show_joints = 1;  // [1:All joints, 2:Color A endcap top, 3:No innies, 4:Color B endcap bottom]

/* [Physical Dimensions] */
// Strip thickness (inches)
height = 0.125;

// Strip width — base body (inches)
width = 0.5;

// Finger width (inches)
finger_width = 0.125;

// Maximum finger length (inches) — arch peak at zone center
// Capped at 0.5" for structural integrity in current finger geometry.
finger_length_max = 0.5;

// Minimum finger length (inches) — arch trough at zone edges
// Slightly raised from 0.25 to soften the zone-boundary seam lines.
finger_length_min = 0.30;

// Finger spacing — center-to-center (inches)
finger_spacing = 0.25;

// Wall thickness for hollow fingers (mm)
wall_thickness_mm = 0.8;
wall_thickness = wall_thickness_mm / 25.4;

/* [Joint Dimensions] */
// Outie peg size (mm)
outie_size_mm = 4.8;
outie_size = outie_size_mm / 25.4;

// Outie peg height — fraction of strip thickness
outie_height = height / 3;

// Innie pocket size (mm) — slightly larger than outie for clearance
innie_size_mm = 4.9;
innie_size = innie_size_mm / 25.4;

// Blind pocket clearance (mm) — extra depth beyond outie_height for blind pockets
// Provides glue room without punching through the exterior face
blind_pocket_clearance_mm = 0.3;
blind_pocket_clearance    = blind_pocket_clearance_mm / 25.4;
blind_pocket_depth        = outie_height + blind_pocket_clearance;

/* [Gradient Pattern] */
// Total strip length (inches) — fixed for 12×15 system
total_length = 12;

// Number of gradient zones (1–12)
// Each zone has its own independent center burst arch/valley.
// Wider zones produce wider, more gradual ovals.
// Narrower zones produce tighter, denser multi-lobe patterns.
// Minimum zone width: 1" (gives 4 fingers per arch)
num_gradient_zones = 2;  // [1:1:12]

// Gradient zone lengths — must sum to total_length (12")
// Examples:
//   2 zones: 6 + 6 = 12  (two broad arches)
//   2 zones: 8 + 4 = 12  (wide + narrow)
//   3 zones: 4 + 4 + 4 = 12  (three medium arches)
//   4 zones: 3 + 3 + 3 + 3 = 12  (four medium arches)
//   6 zones: 2 + 2 + 2 + 2 + 2 + 2 = 12  (dense ripple)
zone1_length  =  6;  // [1:1:12]
zone2_length  =  6;  // [1:1:12]
zone3_length  =  1;  // [1:1:12]
zone4_length  =  1;  // [1:1:12]
zone5_length  =  1;  // [1:1:12]
zone6_length  =  1;  // [1:1:12]
zone7_length  =  1;  // [1:1:12]
zone8_length  =  1;  // [1:1:12]
zone9_length  =  1;  // [1:1:12]
zone10_length =  1;  // [1:1:12]
zone11_length =  1;  // [1:1:12]
zone12_length =  1;  // [1:1:12]

/* [Print Bed Layout] */
// Y spacing between strips on print bed (inches)
y_spacing = 1.25 + (2 / 25.4);

// X spacing between pieces on print bed (inches)
x_spacing = 0.4;

// ============================================================
// COMPUTED VALUES — do not edit below this line
// ============================================================

z1  = (num_gradient_zones >=  1) ? zone1_length  : 0;
z2  = (num_gradient_zones >=  2) ? zone2_length  : 0;
z3  = (num_gradient_zones >=  3) ? zone3_length  : 0;
z4  = (num_gradient_zones >=  4) ? zone4_length  : 0;
z5  = (num_gradient_zones >=  5) ? zone5_length  : 0;
z6  = (num_gradient_zones >=  6) ? zone6_length  : 0;
z7  = (num_gradient_zones >=  7) ? zone7_length  : 0;
z8  = (num_gradient_zones >=  8) ? zone8_length  : 0;
z9  = (num_gradient_zones >=  9) ? zone9_length  : 0;
z10 = (num_gradient_zones >= 10) ? zone10_length : 0;
z11 = (num_gradient_zones >= 11) ? zone11_length : 0;
z12 = (num_gradient_zones >= 12) ? zone12_length : 0;

total_configured = z1 + z2 + z3 + z4 + z5 + z6 + z7 + z8 + z9 + z10 + z11 + z12;

// Zone start positions along X
zp1  = 0;
zp2  = zp1  + z1;
zp3  = zp2  + z2;
zp4  = zp3  + z3;
zp5  = zp4  + z4;
zp6  = zp5  + z5;
zp7  = zp6  + z6;
zp8  = zp7  + z7;
zp9  = zp8  + z8;
zp10 = zp9  + z9;
zp11 = zp10 + z10;
zp12 = zp11 + z11;

// Color A physical piece positions — 8" + 4", seam at x=8"
a_piece1_start = 0;
a_piece1_len   = 8;
a_piece2_start = 8;
a_piece2_len   = 4;

// Color B physical piece positions — 4" + 8", seam at x=4"
b_piece1_start = 0;
b_piece1_len   = 4;
b_piece2_start = 4;
b_piece2_len   = 8;

// ============================================================
// ZONE LOOKUP HELPERS
// ============================================================
function get_zone(pos) =
    (pos < zp2)  ? 1  :
    (pos < zp3)  ? 2  :
    (pos < zp4)  ? 3  :
    (pos < zp5)  ? 4  :
    (pos < zp6)  ? 5  :
    (pos < zp7)  ? 6  :
    (pos < zp8)  ? 7  :
    (pos < zp9)  ? 8  :
    (pos < zp10) ? 9  :
    (pos < zp11) ? 10 :
    (pos < zp12) ? 11 : 12;

function get_zone_start(z) =
    (z ==  1) ? zp1  :
    (z ==  2) ? zp2  :
    (z ==  3) ? zp3  :
    (z ==  4) ? zp4  :
    (z ==  5) ? zp5  :
    (z ==  6) ? zp6  :
    (z ==  7) ? zp7  :
    (z ==  8) ? zp8  :
    (z ==  9) ? zp9  :
    (z == 10) ? zp10 :
    (z == 11) ? zp11 : zp12;

function get_zone_length(z) =
    (z ==  1) ? z1  :
    (z ==  2) ? z2  :
    (z ==  3) ? z3  :
    (z ==  4) ? z4  :
    (z ==  5) ? z5  :
    (z ==  6) ? z6  :
    (z ==  7) ? z7  :
    (z ==  8) ? z8  :
    (z ==  9) ? z9  :
    (z == 10) ? z10 :
    (z == 11) ? z11 : z12;

// ============================================================
// CENTER BURST GRADIENT FUNCTION
//
// For each finger at absolute X position `pos`:
//   1. Find which zone it belongs to
//   2. Compute distance from that zone's center (0=center, 1=edge)
//   3. Apply cosine ease — wide flat-topped oval, not a sharp tent
//   4. Color A → arch (max at center, min at edges)
//      Color B → valley (min at center, max at edges)
//
// Cosine ease: t_eased = (1 - cos(t * 180°)) / 2
//   At t=0 (center):  eased=0  → finger at maximum
//   At t=1 (edge):    eased=1  → finger at minimum
// ============================================================
function get_finger_length(pos, is_mirror) =
    let(
        zone        = get_zone(pos),
        zstart      = get_zone_start(zone),
        zlen        = get_zone_length(zone),
        zone_center = zstart + zlen / 2,

        // Normalized distance from zone center: 0=center, 1=edge
        dist        = abs(pos - zone_center),
        half_width  = (zlen > 0) ? zlen / 2 : 1,
        t           = min(dist / half_width, 1),

        // Cosine ease — smooth wide oval profile
        t_eased     = (1 - cos(t * 180)) / 2,

        // Arch: max at center → min at edge
        arch_len    = finger_length_max - t_eased * (finger_length_max - finger_length_min),

        // Valley: min at center → max at edge (exact complement of arch)
        valley_len  = finger_length_min + t_eased * (finger_length_max - finger_length_min)
    )
    is_mirror ? valley_len : arch_len;

// ============================================================
// MODULES
// ============================================================

// Hollow finger — U-shaped profile (left wall, right wall, tip cap)
module hollow_finger(len) {
    union() {
        // Left wall
        cube([wall_thickness, len, height]);
        // Right wall
        translate([finger_width - wall_thickness, 0, 0])
            cube([wall_thickness, len, height]);
        // Tip cap
        translate([0, len - wall_thickness, 0])
            cube([finger_width, wall_thickness, height]);
    }
}

// Through-hole innie pocket — punches completely through strip thickness.
module innie_pocket_through() {
    translate([0, 0, -height])
        cube([innie_size, innie_size, height * 3]);
}

// Blind innie pocket — for exterior face endcap strips (show_joints = 4).
// Pocket starts at Z=0 (bottom face) and goes UP into the strip body.
module innie_pocket_blind() {
    translate([0, 0, 0])
        cube([innie_size, innie_size, blind_pocket_depth]);
}

// ============================================================
// SEGMENT MODULE
// ============================================================
module segment(length, pos_offset, is_mirror) {

    innie_positions = is_mirror
        ? [for (i = [0 : 2 : length - 0.01]) for (j = [0.75, 1.75]) i + j]
        : [for (i = [0 : 2 : length - 0.01]) for (j = [0.25, 1.25]) i + j];

    outie_positions = is_mirror
        ? [for (i = [0 : 2 : length - 0.01]) for (j = [0.25, 1.25]) i + j]
        : [for (i = [0 : 2 : length - 0.01]) for (j = [0.75, 1.75]) i + j];

    // Color B fingers offset by half finger_spacing to interleave
    finger_offset = is_mirror ? finger_spacing / 2 : 0;

    difference() {
        union() {
            // Base body
            color(is_mirror ? "SteelBlue" : "Peru")
                cube([length, width, height]);

            // Hollow fingers — heights from center-burst function
            color(is_mirror ? "LightSteelBlue" : "Wheat")
            for (fx = [finger_offset : finger_spacing : length - finger_width]) {
                global_x = fx + pos_offset;
                flen = get_finger_length(global_x, is_mirror);
                translate([fx, width, 0])
                    hollow_finger(flen);
            }

            // Outie pegs
            // Suppressed for show_joints=2 (Color A top endcap) and show_joints=4 (Color B bottom endcap)
            if (show_joints == 1 || show_joints == 2) {
                color("Orange")
                for (i = [0 : len(outie_positions) - 1]) {
                    op = outie_positions[i];
                    if (op >= 0 && op <= length) {
                        translate([op - outie_size / 2,
                                   (width - outie_size) / 2,
                                   height])
                            cube([outie_size, outie_size, outie_height]);
                    }
                }
            }
        }

        // Innie pockets subtracted from base
        // Mode 1:  through-hole (all interior strips)
        // Mode 2:  NO innies (Color A top endcap — flat top, nothing above)
        // Mode 3:  no innies at all
        // Mode 4:  blind pocket (Color B bottom endcap)
        if (show_joints == 1) {
            for (i = [0 : len(innie_positions) - 1]) {
                ip = innie_positions[i];
                if (ip >= 0 && ip <= length) {
                    translate([ip - innie_size / 2,
                               (width - innie_size) / 2,
                               0])
                        innie_pocket_through();
                }
            }
        }
        if (show_joints == 4) {
            for (i = [0 : len(innie_positions) - 1]) {
                ip = innie_positions[i];
                if (ip >= 0 && ip <= length) {
                    translate([ip - innie_size / 2,
                               (width - innie_size) / 2,
                               0])
                        innie_pocket_blind();
                }
            }
        }
    }
}

// ============================================================
// MAIN ASSEMBLY
// ============================================================

if (abs(total_configured - total_length) > 0.01) {

    color("Red") cube([4, 4, 0.5]);
    echo("════════════════════════════════════════");
    echo("ERROR: Zone lengths do not sum to 12\"");
    echo(str("Configured total: ", total_configured, "\""));
    echo(str("Required total:   ", total_length, "\""));
    echo("════════════════════════════════════════");

} else {

    // ---- COLOR A — ARCH (tall at zone center, short at edges) ---
    if (color_mode == 1) {

        if (display_mode == 2) {
            segment(a_piece1_len, a_piece1_start, false);
            translate([a_piece2_start, 0, 0])
                segment(a_piece2_len, a_piece2_start, false);

            echo("════════════════════════════════════════");
            echo("CENTER BURST 12×15 — COLOR A — LINEAR VIEW");
            echo("Piece A1: 8\"  pos offset: 0\"");
            echo("Piece A2: 4\"  pos offset: 8\"");
            echo("Gradient: ARCH — tall at zone centers");
            echo("════════════════════════════════════════");

        } else if (display_mode == 1) {
            segment(a_piece1_len, a_piece1_start, false);
            translate([0, y_spacing, 0])
                segment(a_piece2_len, a_piece2_start, false);

            echo("════════════════════════════════════════");
            echo("CENTER BURST 12×15 — COLOR A — PRINT BED");
            echo("Row 1: A1 (8\")  assembled pos x=0\"");
            echo("Row 2: A2 (4\")  assembled pos x=8\"");
            echo("════════════════════════════════════════");
        }
    }

    // ---- COLOR B — VALLEY (short at zone center, tall at edges) -
    if (color_mode == 2) {

        if (display_mode == 2) {
            segment(b_piece1_len, b_piece1_start, true);
            translate([b_piece2_start, 0, 0])
                segment(b_piece2_len, b_piece2_start, true);

            echo("════════════════════════════════════════");
            echo("CENTER BURST 12×15 — COLOR B — LINEAR VIEW");
            echo("Piece B1: 4\"  pos offset: 0\"");
            echo("Piece B2: 8\"  pos offset: 4\"");
            echo("Gradient: VALLEY — short at zone centers");
            echo("════════════════════════════════════════");

        } else if (display_mode == 1) {
            segment(b_piece1_len, b_piece1_start, true);
            translate([b_piece1_len + x_spacing, 0, 0])
                segment(b_piece2_len, b_piece2_start, true);

            echo("════════════════════════════════════════");
            echo("CENTER BURST 12×15 — COLOR B — PRINT BED");
            echo("Row 1 — Both pieces side by side:");
            echo("  LEFT:  B1 (4\")  assembled pos x=0\"");
            echo("  RIGHT: B2 (8\")  assembled pos x=4\"");
            echo("════════════════════════════════════════");
        }
    }

    // ---- CONFIGURATION REPORT --------------------------------
    echo("════════════════════════════════════════");
    echo("CENTER BURST 12×15 — CONFIGURATION");
    echo(str("Color mode: ", color_mode == 1 ? "A (Arch — tall center)" : "B (Valley — short center)"));
    echo(str("Gradient zones: ", num_gradient_zones));
    echo(str("Zone lengths: ",
        z1, "\" + ",
        (num_gradient_zones >=  2) ? str(z2,  "\" + ") : "",
        (num_gradient_zones >=  3) ? str(z3,  "\" + ") : "",
        (num_gradient_zones >=  4) ? str(z4,  "\" + ") : "",
        (num_gradient_zones >=  5) ? str(z5,  "\" + ") : "",
        (num_gradient_zones >=  6) ? str(z6,  "\" + ") : "",
        (num_gradient_zones >=  7) ? str(z7,  "\" + ") : "",
        (num_gradient_zones >=  8) ? str(z8,  "\" + ") : "",
        (num_gradient_zones >=  9) ? str(z9,  "\" + ") : "",
        (num_gradient_zones >= 10) ? str(z10, "\" + ") : "",
        (num_gradient_zones >= 11) ? str(z11, "\" + ") : "",
        (num_gradient_zones >= 12) ? str(z12, "\" = ") : "= ",
        total_configured, "\""
    ));
    echo("Burst shape: cosine ease (wide oval, not linear tent)");
    echo(str("Finger range: ", finger_length_min, "\" (edge) to ", finger_length_max, "\" (center peak)"));
    echo(str("Peak pair: two fingers symmetric about each zone center"));
    echo("Color A seam:  x=8\"   (8\"+4\")");
    echo("Color B seam:  x=4\"   (4\"+8\")");
    echo("Asymmetric seams create brick-offset pattern in assembly");
    echo(str("Joint spec: outie=", outie_size_mm, "mm  innie=", innie_size_mm, "mm"));
    echo(str("Innie mode: ", show_joints == 4 ? str("BLIND pocket depth=", blind_pocket_depth*25.4, "mm") : "through-hole"));
    echo("show_joints: 1=all interior  2=Color A top endcap  3=no innies  4=Color B bottom endcap");
    echo("════════════════════════════════════════");
    echo("ZONE CONFIGURATION GUIDE:");
    echo("  2 zones: 6+6     — two broad arches (recommended start)");
    echo("  2 zones: 8+4     — wide arch + narrow arch");
    echo("  3 zones: 4+4+4   — three medium arches");
    echo("  4 zones: 3+3+3+3 — four medium arches");
    echo("  6 zones: 2+2+2+2+2+2 — dense ripple");
    echo("  12 zones: 1+1+... — fine grain maximum density");
    echo("════════════════════════════════════════");
    echo("PIECE COUNT PER STRIP:");
    echo("  Color A: 2 pieces (8\" + 4\")");
    echo("  Color B: 2 pieces (4\" + 8\")");
    echo("FOR 15-STRIP WORK:");
    echo("  Color A total: 15 strips × 2 pieces = 30 pieces");
    echo("  Color B total: 15 strips × 2 pieces = 30 pieces");
    echo("  Grand total:   60 pieces");
    echo("════════════════════════════════════════");
}



/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1030"
.text
.protected Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1
.globl Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1
.p2align 8
.type Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 93 // vgprs
  .amdhsa_next_free_sgpr 57 // sgprs
  .amdhsa_group_segment_fixed_size 65536 // lds bytes
  .amdhsa_wavefront_size32 0 // 64-thread wavefronts
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 0
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
.end_amdhsa_kernel
.text

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 8 x 8 */
/* SubGroup= 8 x 8 */
/* VectorWidth=4 */
/* GlobalLoadVectorWidthA=1, GlobalLoadVectorWidthB=1 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=1 */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 1
amdhsa.target: amdgcn-amd-amdhsa--gfx1030
amdhsa.kernels:
  - .name: Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1
    .symbol: 'Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            Tensor2dSizeA
        .size:            8
        .offset:          0
        .value_kind:      by_value
        .value_type:      u64
      - .name:            Tensor2dSizeB
        .size:            8
        .offset:          8
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressD
        .size:            8
        .offset:          16
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressC
        .size:            8
        .offset:          24
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressA
        .size:            8
        .offset:          32
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressB
        .size:            8
        .offset:          40
        .value_kind:      by_value
        .value_type:      u64
      - .name:            Alpha
        .size:            4
        .offset:          48
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StridesD
        .size:            4
        .offset:          52
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StridesC
        .size:            4
        .offset:          56
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StridesA
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StridesB
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree
        .size:            8
        .offset:          68
        .value_kind:      by_value
        .value_type:      u64
      - .name:            SizesSum
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            OrigStaggerUIter
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups0
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups1
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   65536
    .kernarg_segment_align:      8
    .kernarg_segment_size:       96
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 57
    .sgpr_spill_count:           0
    .vgpr_count:                 93
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1:

/******************************************/
/* Asm syntax workarounds                 */
/******************************************/
.macro _v_add_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_add_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_add_u32 dst:req, src0:req, src1:req, dpp=
   v_add_nc_u32 \dst, \src0 \src1 \dpp
.endm

.macro _v_add_i32 dst:req, src0:req, src1:req, dpp=
   v_add_nc_i32 \dst, \src0 \src1 \dpp
.endm

.macro _v_addc_co_u32 dst:req, ccOut:req, src0:req, ccIn:req, src1:req, dpp=
   v_add_co_ci_u32 \dst, \ccOut, \src0, \ccIn, \src1 \dpp
.endm

.macro _v_sub_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_sub_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_sub_u32 dst:req, src0:req, src1:req, dpp=
   v_sub_nc_u32 \dst, \src0, \src1 \dpp
.endm

.macro _v_sub_i32 dst:req, src0:req, src1:req, dpp=
   v_sub_nc_i32 \dst, \src0, \src1 \dpp
.endm

.macro _v_add_lshl_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_add_lshl_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_lshl_add_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_lshl_add_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_lshl_or_b32 dst:req, src0:req, shiftCnt:req, src1:req
    v_lshl_or_b32 \dst, \src0, \shiftCnt, \src1
.endm

.macro _v_dot2acc_f32_f16 dst, src0, src1
v_dot2c_f32_f16 \dst, \src0, \src1
.endm

.macro _v_cmpx_lt_i16 dst, src0, src1=
   v_cmp_lt_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lt_i32 dst, src0, src1=
   v_cmp_lt_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lt_i64 dst, src0, src1=
   v_cmp_lt_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lt_u16 dst, src0, src1=
   v_cmp_lt_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lt_u32 dst, src0, src1=
   v_cmp_lt_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lt_u64 dst, src0, src1=
   v_cmp_lt_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_eq_i16 dst, src0, src1=
   v_cmp_eq_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_eq_i32 dst, src0, src1=
   v_cmp_eq_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_eq_i64 dst, src0, src1=
   v_cmp_eq_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_eq_u16 dst, src0, src1=
   v_cmp_eq_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_eq_u32 dst, src0, src1=
   v_cmp_eq_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_eq_u64 dst, src0, src1=
   v_cmp_eq_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_le_i16 dst, src0, src1=
   v_cmp_le_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_le_i32 dst, src0, src1=
   v_cmp_le_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_le_i64 dst, src0, src1=
   v_cmp_le_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_le_u16 dst, src0, src1=
   v_cmp_le_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_le_u32 dst, src0, src1=
   v_cmp_le_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_le_u64 dst, src0, src1=
   v_cmp_le_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_gt_i16 dst, src0, src1=
   v_cmp_gt_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_gt_i32 dst, src0, src1=
   v_cmp_gt_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_gt_i64 dst, src0, src1=
   v_cmp_gt_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_gt_u16 dst, src0, src1=
   v_cmp_gt_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_gt_u32 dst, src0, src1=
   v_cmp_gt_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_gt_u64 dst, src0, src1=
   v_cmp_gt_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ne_i16 dst, src0, src1=
   v_cmp_ne_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ne_i32 dst, src0, src1=
   v_cmp_ne_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ne_i64 dst, src0, src1=
   v_cmp_ne_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ne_u16 dst, src0, src1=
   v_cmp_ne_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ne_u32 dst, src0, src1=
   v_cmp_ne_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ne_u64 dst, src0, src1=
   v_cmp_ne_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lg_i16 dst, src0, src1=
   v_cmp_lg_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lg_i32 dst, src0, src1=
   v_cmp_lg_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lg_i64 dst, src0, src1=
   v_cmp_lg_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lg_u16 dst, src0, src1=
   v_cmp_lg_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lg_u32 dst, src0, src1=
   v_cmp_lg_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_lg_u64 dst, src0, src1=
   v_cmp_lg_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ge_i16 dst, src0, src1=
   v_cmp_ge_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ge_i32 dst, src0, src1=
   v_cmp_ge_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ge_i64 dst, src0, src1=
   v_cmp_ge_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ge_u16 dst, src0, src1=
   v_cmp_ge_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ge_u32 dst, src0, src1=
   v_cmp_ge_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_ge_u64 dst, src0, src1=
   v_cmp_ge_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_o_i16 dst, src0, src1=
   v_cmp_o_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_o_i32 dst, src0, src1=
   v_cmp_o_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_o_i64 dst, src0, src1=
   v_cmp_o_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_o_u16 dst, src0, src1=
   v_cmp_o_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_o_u32 dst, src0, src1=
   v_cmp_o_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_o_u64 dst, src0, src1=
   v_cmp_o_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_u_i16 dst, src0, src1=
   v_cmp_u_i16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_u_i32 dst, src0, src1=
   v_cmp_u_i32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_u_i64 dst, src0, src1=
   v_cmp_u_i64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_u_u16 dst, src0, src1=
   v_cmp_u_u16 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_u_u32 dst, src0, src1=
   v_cmp_u_u32 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm

.macro _v_cmpx_u_u64 dst, src0, src1=
   v_cmp_u_u64 \dst, \src0, \src1
   s_mov_b64 exec \dst
.endm
.macro _v_mac_f32 c:req, a:req, b:req
    v_fmac_f32 \c, \a, \b
.endmacro

/* scale global load macros */
.macro _s_load_b32 dst base offset
    s_load_dword \dst \base \offset
.endm

.macro _s_load_b64 dst base offset
    s_load_dwordx2 \dst \base \offset
.endm

.macro _s_load_b128 dst base offset
    s_load_dwordx4 \dst \base \offset
.endm

.macro _s_load_b256 dst base offset
    s_load_dwordx8 \dst \base \offset
.endm

.macro _s_load_b512 dst base offset
    s_load_dwordx16 \dst \base \offset
.endm


/* ds operation macros */
.macro _ds_load_u8 dst src offset
    ds_read_u8 \dst \src \offset
.endm

.macro _ds_load_u8_d16_hi dst src offset
    ds_read_u8_d16_hi \dst \src \offset
.endm

.macro _ds_load_u16 dst src offset
    ds_read_u16 \dst \src \offset
.endm

.macro _ds_load_u16_d16_hi dst src offset
    ds_read_u16_d16_hi \dst \src \offset
.endm

.macro _ds_load_b32 dst src offset
    ds_read_b32 \dst \src \offset
.endm

.macro _ds_load_b64 dst src offset
    ds_read_b64 \dst \src \offset
.endm

.macro _ds_load_b128 dst src offset
    ds_read_b128 \dst \src \offset
.endm

.macro _ds_store_b8 dst src offset
    ds_write_b8 \dst \src \offset
.endm

.macro _ds_store_b8_d16_hi dst src offset
    ds_write_b8_d16_hi \dst \src \offset
.endm

.macro _ds_store_b16 dst src offset
    ds_write_b16 \dst \src \offset
.endm

.macro _ds_store_b16_d16_hi dst src offset
    ds_write_b16_d16_hi \dst \src \offset
.endm

.macro _ds_store_b32 dst src offset
    ds_write_b32 \dst \src \offset
.endm

.macro _ds_store_b64 dst src offset
    ds_write_b64 \dst \src \offset
.endm

.macro _ds_store_b128 dst src offset
    ds_write_b128 \dst \src \offset
.endm

.macro _ds_load2_b32 dst src offset1 offset2
    ds_read2_b32 \dst \src \offset1 \offset2
.endm

.macro _ds_load2_b64 dst src offset1 offset2
    ds_read2_b64 \dst \src \offset1 \offset2
.endm

.macro _ds_store2_b32 dst src offset1 offset2
    ds_write2_b32 \dst \src \offset1 \offset2
.endm

.macro _ds_store2_b64 dst src offset1 offset2
    ds_write2_b64 \dst \src \offset1 \offset2
.endm


/* buffer memory operation macros */
.macro _buffer_load_b32 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dword \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b64 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx2 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b96 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx3 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b128 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx4 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_b16 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_short_d16 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_hi_b16 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_short_d16_hi \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_u8 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ubyte_d16 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_hi_u8 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ubyte_d16_hi \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_u16 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ushort \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b32_dtl voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dword \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_u16_dtl voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ushort \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b32 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dword \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b64 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dwordx2 \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b96 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dwordx3 \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b128 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dwordx4 \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b16 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_short \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_d16_hi_b16 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_short_d16_hi \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b8 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_byte \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_d16_hi_b8 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_byte_d16_hi \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_atomic_cmpswap_b32 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_atomic_cmpswap \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_atomic_cmpswap_b64 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_atomic_cmpswap_x2 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm


/* buffer memory operation macros */
.macro _global_load_b32 dst base src ioffset md0 md1 md2
    global_load_dword \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_b64 dst base src ioffset md0 md1 md2
    global_load_dwordx2 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_b96 dst base src ioffset md0 md1 md2
    global_load_dwordx3 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_b128 dst base src ioffset md0 md1 md2
    global_load_dwordx4 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_b16 dst base src ioffset md0 md1 md2
    global_load_short_d16 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_hi_b16 dst base src ioffset md0 md1 md2
    global_load_short_d16_hi \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_u8 dst base src ioffset md0 md1 md2
    global_load_ubyte_d16 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_hi_u8 dst base src ioffset md0 md1 md2
    global_load_ubyte_d16_hi \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_u16 dst base src ioffset md0 md1 md2
    global_load_ushort \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_store_b32 base src src2 md0 md1 md2
    global_store_dword \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_b64 base src src2 md0 md1 md2
    global_store_dwordx2 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_b96 base src src2 md0 md1 md2
    global_store_dwordx3 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_b128 base src src2 md0 md1 md2
    global_store_dwordx4 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_b16 base src src2 md0 md1 md2
    global_store_short \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_hi_b16 base src src2 md0 md1 md2
    global_store_short_d16_hi \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_u8 base src src2 md0 md1 md2
    global_store_ubyte_d16 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_hi_u8 base src src2 md0 md1 md2
    global_store_ubyte_d16_hi \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_u16 base src src2 md0 md1 md2
    global_store_ushort \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_atomic_cmpswap_b32 tmp base data src ioffset md
    global_atomic_cmpswap \tmp \base \data \src \ioffset \md
.endm

.macro _global_atomic_cmpswap_b64 tmp base data src ioffset md
    global_atomic_cmpswap_x2 \tmp \base \data \src \ioffset \md
.endm


/******************************************/
/* Magic div and mod functions            */
/******************************************/
.macro V_MAGIC_DIV dstIdx:req, dividend:req, magicNumber:req, magicShift:req, magicA:req
    v_mul_hi_u32 v[\dstIdx+1], \dividend, \magicNumber
    v_mul_lo_u32 v[\dstIdx+0], \dividend, \magicA
    _v_add_u32 v[\dstIdx+0], v[\dstIdx+0], v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0], \magicShift, v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-64),  */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 66
.set vgprG2LA, 66
.set vgprValuB_X0_I0, 75
.set vgprG2LB, 75
.set vgprLocalWriteAddrA, 83
.set vgprLocalWriteAddrB, 84
.set vgprGlobalReadOffsetA, 85
.set vgprGlobalReadOffsetB, 86
.set vgprLocalReadAddrA, 87
.set vgprLocalReadAddrB, 88
.set vgprSerial, 89
/* Num VGPR=93 */
/* Num AccVGPR=0 */

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0 // (2)
.set sgprWorkGroup0, 2 // (1)
.set sgprWorkGroup1, 3 // (1)
.set sgprLoopCounterK, 4 // (1)
.set sgprOrigLoopCounter, 5 // (1)
.set sgprSrdA, 8 // (4)
.set sgprSrdB, 12 // (4)
.set sgprSrdD, 16 // (4)
.set sgprSrdC, 20 // (4)
.set sgprTensor2dSizeA, 24 // (2)
.set sgprTensor2dSizeB, 26 // (2)
.set sgprAddressD, 28 // (2)
.set sgprAddressC, 30 // (2)
.set sgprAddressA, 32 // (2)
.set sgprAddressB, 34 // (2)
.set sgprAlpha, 36 // (1)
.set sgprStridesD, 37 // (1)
.set sgprStridesC, 38 // (1)
.set sgprStridesA, 39 // (1)
.set sgprStridesB, 40 // (1)
.set sgprSizesFree, 41 // (2)
.set sgprSizesSum, 43 // (1)
.set sgprOrigStaggerUIter, 44 // (1)
.set sgprNumWorkGroups0, 45 // (1)
.set sgprNumWorkGroups1, 46 // (1)
.set sgprShadowLimitA, 0 // (2)
.set sgprShadowLimitB, 32 // (2)
.set sgprStaggerUIter, 34 // (1)
.set sgprWrapUA, 47 // (2)
.set sgprWrapUB, 49 // (2)
.set sgprGlobalReadIncsA, 35 // (1)
.set sgprGlobalReadIncsB, 51 // (1)
/* max SGPR=57 */

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesD+0
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set constStrideA0I, 1
.set sgprStrideAK, sgprStridesA+0
.set constStrideBK, 1
.set sgprStrideB1J, sgprStridesB+0

.set MT0, 64
.set MT1, 64
.set DepthU, 4
.set GSU, 1
.set BpeA, 4
.set BpeALog2, 2
.set BpeB, 4
.set BpeBLog2, 2
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 1
.set SrdShiftLeftB, 1
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimitA, 0xffffffff
.set BufferLimitB, 0xffffffff
.set BufferOOB, 0xfffff000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x31004000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* format (7b): 4                         */
/* _unusedA (2b): 0                       */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* resource_level (1b): 1                 */
/* _unusedB (1b): 0                       */
/* LLC_noalloc (2b): 0                    */
/* oob_select (2b): 3                     */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x31004000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffset0I:req vgprOffsetK:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideAK], v[\vgprOffsetK] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffset0I], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetK:req vgprOffset1J:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideB1J], v[\vgprOffset1J] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffsetK], v[\vgprTmp+0] // accumulate 1J lower
_v_add_u32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/******************************************/
/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
/******************************************/
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
v_cvt_f32_u32 v[\vQuotient], v[\vDivisor]          // 
v_rcp_f32 v[\vQuotient], v[\vQuotient]             // 
v_mul_f32 v[\vQuotient], 0x4f800000, v[\vQuotient] // 
v_cvt_u32_f32 v[\vQuotient], v[\vQuotient]         // 
v_mul_lo_u32 v[\vRemainder], v[\vDivisor], v[\vQuotient] // 
v_mul_hi_u32 v[\vTmp0], v[\vDivisor], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp1], vcc, 0x0, v[\vRemainder]  // 
v_cmp_ne_i32 s[\sTmp:\sTmp+1], 0x0, v[\vTmp0]      // 
v_cndmask_b32 v[\vRemainder], v[\vTmp1], v[\vRemainder], s[\sTmp:\sTmp+1] // 
v_mul_hi_u32 v[\vRemainder], v[\vRemainder], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp0], vcc, v[\vQuotient], v[\vRemainder] // 
_v_add_co_u32 v[\vQuotient], vcc, v[\vQuotient], v[\vRemainder] // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vTmp0], s[\sTmp:\sTmp+1] // 
v_mul_hi_u32 v[\vQuotient], v[\vQuotient], v[\vDividend] // 
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vTmp0], vcc, v[\vDividend], v[\vRemainder] // 
v_cmp_ge_u32 s[\sTmp:\sTmp+1], v[\vDividend], v[\vRemainder] // 
_v_add_co_u32 v[\vRemainder], vcc, 0x1, v[\vQuotient] // 
_v_add_co_u32 v[\vTmp1], vcc, -1, v[\vQuotient]    // 
v_cmp_le_u32 vcc, v[\vDivisor], v[\vTmp0]          // 
s_and_b64 vcc, s[\sTmp:\sTmp+1], vcc               // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vRemainder], vcc // 
v_cndmask_b32 v[\vQuotient], v[\vTmp1], v[\vQuotient], s[\sTmp:\sTmp+1] // 
v_cmp_ne_i32 vcc, 0x0, v[\vDivisor]                // 
v_cndmask_b32 v[\vQuotient], -1, v[\vQuotient], vcc // final result
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vRemainder], vcc, v[\vDividend], v[\vRemainder] // final result
.endm

/******************************************/
/* 8x8 thread-tile                        */
/******************************************/
.macro MAC_8x8_X0
// Component.MAC.MAC_F32_Plain
v_fmac_f32 v[vgprValuC + 0 + 0*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0]
s_setprio 1 // Raise priority while processing macs
v_fmac_f32 v[vgprValuC + 1 + 0*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 2 + 0*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 3 + 0*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 4 + 0*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 5 + 0*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 6 + 0*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 7 + 0*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 0 + 1*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 1 + 1*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 2 + 1*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 3 + 1*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 4 + 1*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 5 + 1*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 6 + 1*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 7 + 1*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 0 + 2*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 1 + 2*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 2 + 2*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 3 + 2*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 4 + 2*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 5 + 2*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 6 + 2*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 7 + 2*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 0 + 3*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 1 + 3*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 2 + 3*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 3 + 3*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 4 + 3*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 5 + 3*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 6 + 3*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 7 + 3*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 0 + 4*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 1 + 4*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 2 + 4*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 3 + 4*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 4 + 4*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 5 + 4*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 6 + 4*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 7 + 4*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 0 + 5*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 1 + 5*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 2 + 5*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 3 + 5*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 4 + 5*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 5 + 5*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 6 + 5*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 7 + 5*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 0 + 6*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 1 + 6*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 2 + 6*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 3 + 6*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 4 + 6*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 5 + 6*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 6 + 6*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 7 + 6*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 0 + 7*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 1 + 7*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 2 + 7*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 3 + 7*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 4 + 7*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 5 + 7*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 6 + 7*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 7 + 7*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 7]
s_setprio 0 // Reset priority after macs
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cij_Aik_Bkj_S_MT64x64x4_SN_K1_SVW2_WGM1_preloaded: // Kernel start when preloading

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b128 s[40:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
_s_load_b64 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x50 // 
_s_load_b32 s46, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x58 // 
s_mov_b32 m0, 0x10000                              // LDS clamp at 65536 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a/b */

/*lr0I = serial % SG0I*/
v_lshrrev_b32 v0, 3, v[vgprSerial]                 // v0 = v[vgprSerial] / 8
v_and_b32 v1, 7, v[vgprSerial]                     // v1 = v[vgprSerial] % 8
/*lr1J = (serial / SG1J) % SG1J*/
v_lshrrev_b32 v2, 3, v0                            // v2 = v0 / 8
v_and_b32 v3, 7, v0                                // v3 = v0 % 8


/* local read addresses: final offsets a */

v_lshrrev_b32 v0, 6, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(64)
v_lshlrev_b32 v0, 0x6, v0                          // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_lshlrev_b32 v1, 0x2, v1                          // Final Offset: lrAOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x2 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 6, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(64)
s_mov_b32 s6, 0x44                                 // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_mul_lo_u32 v0, s6, v0                            // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_lshlrev_b32 v3, 0x2, v3                          // Final Offset: lrBOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v3, 0x2 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x400, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 64 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // v1 = v[vgprSerial] / 64
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
/* gro-tile *= glvw */
                                                   // v0 = v0 * 1 (multiplier is 1, do nothing)


/* global read addresses: tile offset assignment b */

/* LVCB = 4 */
/* v2 = (local)groB-tile = serial/LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial%LVCB */
v_lshrrev_b32 v2, 2, v[vgprSerial]                 // v2 = v[vgprSerial] / 4
v_and_b32 v3, 3, v[vgprSerial]                     // v3 = v[vgprSerial] % 4
/* gro-unroll *= glvw */
                                                   // v3 = v3 * 1 (multiplier is 1, do nothing)


/******************************************/
/* Local Write Addresses                  */
/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */

/* lwaUnrollAssignmentB = v3 */


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x40, v1     // lwAK**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x2 // lwFOA = (lwAA + lwAK*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x44, v3     // lwBK**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x2 // lwFOB = (lwBB + lwBK*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x400, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBK*MT1J + LDS_OFFSET_B=256*4







s_waitcnt lgkmcnt(0)                               // wait for 92 bytes of kern args
s_sub_u32 s[sgprSrdA+0], s[sgprAddressA+0], 4      // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprAddressA+1], 0     // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprSrdB+0], s[sgprAddressB+0], 4      // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdB+1], s[sgprAddressB+1], 0     // pre-pad to make room for possible pointer shift

.set AddressA, UNDEF
.set AddressB, UNDEF

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc, s[sgprAlpha], 0.0                // Alpha == 0.0f ?
s_cbranch_vccz label_AlphaNonZero                  // branch if alpha != 0
s_mov_b32 s[sgprSizesSum+0], 0x0                   // Set summation dim=0 if Alpha == 0
label_AlphaNonZero:



/******************************************/
/* Begin setupNewTile, isPap=False           */
/******************************************/


/* global read addresses: work-group */

/* graWorkGroup mapping */


/* global read addresses: unroll assignment a */

/* v1 */


/* global read addresses: unroll assignment b */

/* v3 */


/* global read addresses: tile offsets a */



/* global read addresses: tile offsets b */



/* global read addresses: unroll offsets a */



/* global read addresses: unroll offsets b */



/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  0,  1, 4 // gROA_0_0_0_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 4 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s55, s[sgprWorkGroup0], 64            // WorkGroup[01] * MT
s_mul_i32 s54, s[sgprWorkGroup0], 64               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s54 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s55 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x2 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
s_lshl_b64 s[54:55], s[54:55], 0x2                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s54        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s55       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s55, s[sgprWorkGroup1], 64            // WorkGroup[01] * MT
s_mul_i32 s54, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_mul_hi_u32 s55, s54, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s54, s54, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s54 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s55 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x2 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_lshl_b64 s[54:55], s[54:55], 0x2                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s54        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s55       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mul_i32 s[sgprGlobalReadIncsA+0], DepthU*BpeA, s[sgprStrideAK] // incrA unrollIdx)


/* global read addresses: increments b */

s_mov_b32 s[sgprGlobalReadIncsB+0], DepthU*BpeB    // incrB (unrollIdx)

/* declare loop num iterations */



/* initC: remove C-tile 0-64 from pool */

/* initC: remove AB-tile 66-83 from pool */
v_mov_b32 v[vgprValuC+0], 0x0                      // initC
v_mov_b32 v[vgprValuC+1], 0x0                      // initC
v_mov_b32 v[vgprValuC+2], 0x0                      // initC
v_mov_b32 v[vgprValuC+3], 0x0                      // initC
v_mov_b32 v[vgprValuC+4], 0x0                      // initC
v_mov_b32 v[vgprValuC+5], 0x0                      // initC
v_mov_b32 v[vgprValuC+6], 0x0                      // initC
v_mov_b32 v[vgprValuC+7], 0x0                      // initC
v_mov_b32 v[vgprValuC+8], 0x0                      // initC
v_mov_b32 v[vgprValuC+9], 0x0                      // initC
v_mov_b32 v[vgprValuC+10], 0x0                     // initC
v_mov_b32 v[vgprValuC+11], 0x0                     // initC
v_mov_b32 v[vgprValuC+12], 0x0                     // initC
v_mov_b32 v[vgprValuC+13], 0x0                     // initC
v_mov_b32 v[vgprValuC+14], 0x0                     // initC
v_mov_b32 v[vgprValuC+15], 0x0                     // initC
v_mov_b32 v[vgprValuC+16], 0x0                     // initC
v_mov_b32 v[vgprValuC+17], 0x0                     // initC
v_mov_b32 v[vgprValuC+18], 0x0                     // initC
v_mov_b32 v[vgprValuC+19], 0x0                     // initC
v_mov_b32 v[vgprValuC+20], 0x0                     // initC
v_mov_b32 v[vgprValuC+21], 0x0                     // initC
v_mov_b32 v[vgprValuC+22], 0x0                     // initC
v_mov_b32 v[vgprValuC+23], 0x0                     // initC
v_mov_b32 v[vgprValuC+24], 0x0                     // initC
v_mov_b32 v[vgprValuC+25], 0x0                     // initC
v_mov_b32 v[vgprValuC+26], 0x0                     // initC
v_mov_b32 v[vgprValuC+27], 0x0                     // initC
v_mov_b32 v[vgprValuC+28], 0x0                     // initC
v_mov_b32 v[vgprValuC+29], 0x0                     // initC
v_mov_b32 v[vgprValuC+30], 0x0                     // initC
v_mov_b32 v[vgprValuC+31], 0x0                     // initC
v_mov_b32 v[vgprValuC+32], 0x0                     // initC
v_mov_b32 v[vgprValuC+33], 0x0                     // initC
v_mov_b32 v[vgprValuC+34], 0x0                     // initC
v_mov_b32 v[vgprValuC+35], 0x0                     // initC
v_mov_b32 v[vgprValuC+36], 0x0                     // initC
v_mov_b32 v[vgprValuC+37], 0x0                     // initC
v_mov_b32 v[vgprValuC+38], 0x0                     // initC
v_mov_b32 v[vgprValuC+39], 0x0                     // initC
v_mov_b32 v[vgprValuC+40], 0x0                     // initC
v_mov_b32 v[vgprValuC+41], 0x0                     // initC
v_mov_b32 v[vgprValuC+42], 0x0                     // initC
v_mov_b32 v[vgprValuC+43], 0x0                     // initC
v_mov_b32 v[vgprValuC+44], 0x0                     // initC
v_mov_b32 v[vgprValuC+45], 0x0                     // initC
v_mov_b32 v[vgprValuC+46], 0x0                     // initC
v_mov_b32 v[vgprValuC+47], 0x0                     // initC
v_mov_b32 v[vgprValuC+48], 0x0                     // initC
v_mov_b32 v[vgprValuC+49], 0x0                     // initC
v_mov_b32 v[vgprValuC+50], 0x0                     // initC
v_mov_b32 v[vgprValuC+51], 0x0                     // initC
v_mov_b32 v[vgprValuC+52], 0x0                     // initC
v_mov_b32 v[vgprValuC+53], 0x0                     // initC
v_mov_b32 v[vgprValuC+54], 0x0                     // initC
v_mov_b32 v[vgprValuC+55], 0x0                     // initC
v_mov_b32 v[vgprValuC+56], 0x0                     // initC
v_mov_b32 v[vgprValuC+57], 0x0                     // initC
v_mov_b32 v[vgprValuC+58], 0x0                     // initC
v_mov_b32 v[vgprValuC+59], 0x0                     // initC
v_mov_b32 v[vgprValuC+60], 0x0                     // initC
v_mov_b32 v[vgprValuC+61], 0x0                     // initC
v_mov_b32 v[vgprValuC+62], 0x0                     // initC
v_mov_b32 v[vgprValuC+63], 0x0                     // initC

s_lshr_b32 s[sgprLoopCounterK], s[sgprSizesSum+0], 2 // s[sgprLoopCounterK] = s[sgprSizesSum+0] / 4
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterK] // copy loop counter

s_and_b32 s[sgprStaggerUIter], s[sgprOrigStaggerUIter], s[sgprWorkGroup0] // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 4 // shift by StaggerUStride


/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_u32 s53, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s52, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUA+1], s[sgprLoopCounterK], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterK], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32


/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_u32 s53, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s52, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUB+1], s[sgprLoopCounterK], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterK], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 1 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap

/* local read addresses: init pointers a */


/* localReadInitPointers */

/* local read addresses: init pointers b */


/* localReadInitPointers */


/******************************************/
/* End setupNewTile, isPap=False             */
/******************************************/


/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/

openLoopK_10:
s_cmp_le_u32 s[sgprLoopCounterK], 0x0              // LoopCounterK < EndCounter
s_cbranch_scc1 LoopEndK_2                          // do not enter LoopK
LoopBeginK_1:


/******************************************/
/* Unrolled Loop 1/1 - Begin              */
/******************************************/

label_0011: // LoopCopy1 


/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

_buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* global read inc A loopK */
s_cmp_eq_u32 s[sgprLoopCounterK], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s52, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s53, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* global read inc B loopK */
s_cmp_eq_u32 s[sgprLoopCounterK], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s52, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s53, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=05wait for global read

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //PGR=0, prior iter done reading lds


/* local write a */

_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0


/* local write b */

_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-12prefetch wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //




/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
MAC_8x8_X0



/******************************************/
/* Unrolled Loop - End                    */
/******************************************/


/* closeLoop loopK finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterK], s[sgprLoopCounterK], 1 // dec counterK
s_cmp_eq_i32 s[sgprLoopCounterK], 0x0              // counterK==0
s_cbranch_scc0 LoopBeginK_1                        // restart LoopK
LoopEndK_2:


/* Before NLL: Check VGPR.checkin for INT8 LW */


/******************************************/
/* Tail Loop                              */
/******************************************/


//numIterK = (((sizeK % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterK], 3, s[sgprSizesSum+0] // s[sgprLoopCounterK] = s[sgprSizesSum+0] % 4
s_add_u32 s[sgprLoopCounterK], 0x3, s[sgprLoopCounterK] // (size % DepthU) + LSU - 1
s_lshr_b32 s[sgprLoopCounterK], s[sgprLoopCounterK], 2 // s[sgprLoopCounterK] = s[sgprLoopCounterK] / 4
s_cmp_eq_u32 s[sgprLoopCounterK], 0x0              // numIterK == 0
s_cbranch_scc1 SkipTailLoopK_8                     // skip to end of tail loop b/c numIter==0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment


/* remove stagger offsets for tail loop */

s_mov_b32 s54, 2                                   // 
s_mul_hi_u32 s53, s54, s[sgprGlobalReadIncsA+0]    // 2 * GlobalReadIncs
s_mul_i32 s52, s54, s[sgprGlobalReadIncsA+0]       // 2 * GlobalReadIncs
s_mul_hi_u32 s55, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s54, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s52, s52, s54                            // start offset S in bytes
s_subb_u32 s53, s53, s55                           // start offset S in bytes
s_sub_u32 s52, s52, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s53, s53, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

s_mov_b32 s54, 2                                   // 
s_mul_hi_u32 s53, s54, s[sgprGlobalReadIncsB+0]    // 2 * GlobalReadIncs
s_mul_i32 s52, s54, s[sgprGlobalReadIncsB+0]       // 2 * GlobalReadIncs
s_mul_hi_u32 s55, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s54, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s52, s52, s54                            // start offset S in bytes
s_subb_u32 s53, s53, s55                           // start offset S in bytes
s_sub_u32 s52, s52, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s53, s53, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32


/* Update M0 for DTLDS */



/* global read a */

/* g2l=0, load component 0 */
_buffer_load_b32 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
_buffer_load_b32 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=02wait for global read

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* Done global A/B reads */




/* local write a */

_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0


/* local write b */

_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0


/* Recalc local read offsets */


s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-15wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* tail loop: macs */


/* apply exec mask for LSU */
v_lshrrev_b32 v91, 6, v[vgprSerial]                // v91 = v[vgprSerial] / 64
v_mov_b32 v90, s[sgprSizesSum+0]                   // sizeU to vgpr
v_and_b32 v92, 3, v90                              // v92 = v90 % 4
TailLoopBeginK_6:
_v_cmpx_lt_u32 vcc, v91, v92                       // sgId < numIter
_v_add_co_u32 v91, vcc, 0x4, v91                   // sgId+=LSU


/* local read a */

_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s6, 0x400                                // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc, s6, v[vgprLocalReadAddrA] // lrA += 1024 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s6, 0x440                                // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc, s6, v[vgprLocalReadAddrB] // lrB += 1088 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read

MAC_8x8_X0

/* closeLoop loopK finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterK], s[sgprLoopCounterK], 0x1 // dec counterK (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x1 // inc counterK
s_cmp_le_i32 s[sgprLoopCounterK], 0x0              // counterK<=0
s_cbranch_scc0 TailLoopBeginK_6                    // restart LoopK
TailLoopEndK_7:

/* restore full exec mask */
s_mov_b64 s[6:7], 0xFFFFFFFFFFFFFFFF               // restore all threads active
s_or_saveexec_b64 s[6:7], s[6:7]                   // full mask -> exec

SkipTailLoopK_8:

Summation_End_14:
/* endSummation: add vgpr [66...87) to pool */
.set WrapUA, UNDEF
.set WrapUB, UNDEF
.set GlobalReadIncsB, UNDEF

s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdD+2], BufferOOB                 // 
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+0], s[sgprAddressC+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdC+1], s[sgprAddressC+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdC+2], BufferOOB                 // 
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s50, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s49, s50, s[sgprStrideC1J]            // CScale s50 by Stride
s_mul_i32 s48, s50, s[sgprStrideC1J]               // CScale s50 by Stride
s_lshl_b64 s[48:49], s[48:49], 2                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s48    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s49   // add hi to SRD
s_mul_hi_u32 s49, s50, s[sgprStrideD1J]            // Scale s50 by Stride
s_mul_i32 s48, s50, s[sgprStrideD1J]               // Scale s50 by Stride
s_lshl_b64 s[48:49], s[48:49], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s48    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s49   // add hi to SRD




/******************************************/
/* LocalSplitU Reduction                  */
/******************************************/

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* LocalSplitU: local write */

v_lshrrev_b32 v69, 3, v[vgprSerial]                // v69 = v[vgprSerial] / 8
v_and_b32 v66, 7, v[vgprSerial]                    // v66 = v[vgprSerial] % 8
v_lshrrev_b32 v68, 3, v69                          // v68 = v69 / 8
v_and_b32 v67, 7, v69                              // v67 = v69 % 8
s_mov_b32 s6, 0x10                                 // VW
v_mul_lo_u32 v66, s6, v66                          // lr0 *= VW
s_mov_b32 s6, 0x400                                // VW*MT0
v_mul_lo_u32 v67, s6, v67                          // lr1 *= VW*MT0
s_mov_b32 s6, 0x4000                               // MT0*MT1
v_mul_lo_u32 v68, s6, v68                          // sg *= MT0*MT1
_v_add_co_u32 v66, vcc, v67, v66                   // 
_v_add_co_u32 v66, vcc, v68, v66                   // threadOffset
_ds_store_b128 v66, v[vgprValuC+0:vgprValuC+0+3], offset:0 // j=0 i=0 s=0 vc=0
_ds_store_b128 v66, v[vgprValuC+8:vgprValuC+8+3], offset:256 // j=0 i=0 s=1 vc=0
_ds_store_b128 v66, v[vgprValuC+16:vgprValuC+16+3], offset:512 // j=0 i=0 s=2 vc=0
_ds_store_b128 v66, v[vgprValuC+24:vgprValuC+24+3], offset:768 // j=0 i=0 s=3 vc=0
_ds_store_b128 v66, v[vgprValuC+4:vgprValuC+4+3], offset:128 // j=0 i=1 s=0 vc=0
_ds_store_b128 v66, v[vgprValuC+12:vgprValuC+12+3], offset:384 // j=0 i=1 s=1 vc=0
_ds_store_b128 v66, v[vgprValuC+20:vgprValuC+20+3], offset:640 // j=0 i=1 s=2 vc=0
_ds_store_b128 v66, v[vgprValuC+28:vgprValuC+28+3], offset:896 // j=0 i=1 s=3 vc=0
_ds_store_b128 v66, v[vgprValuC+32:vgprValuC+32+3], offset:8192 // j=1 i=0 s=0 vc=0
_ds_store_b128 v66, v[vgprValuC+40:vgprValuC+40+3], offset:8448 // j=1 i=0 s=1 vc=0
_ds_store_b128 v66, v[vgprValuC+48:vgprValuC+48+3], offset:8704 // j=1 i=0 s=2 vc=0
_ds_store_b128 v66, v[vgprValuC+56:vgprValuC+56+3], offset:8960 // j=1 i=0 s=3 vc=0
_ds_store_b128 v66, v[vgprValuC+36:vgprValuC+36+3], offset:8320 // j=1 i=1 s=0 vc=0
_ds_store_b128 v66, v[vgprValuC+44:vgprValuC+44+3], offset:8576 // j=1 i=1 s=1 vc=0
_ds_store_b128 v66, v[vgprValuC+52:vgprValuC+52+3], offset:8832 // j=1 i=1 s=2 vc=0
_ds_store_b128 v66, v[vgprValuC+60:vgprValuC+60+3], offset:9088 // j=1 i=1 s=3 vc=0
s_waitcnt lgkmcnt(0)                               // wait for all writes
s_waitcnt_vscnt null, 0                            // writes
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //post-lsu local write


/* LocalSplitU: local read */

v_lshlrev_b32 v66, 0x4, v[vgprSerial]              // v66 = v[vgprSerial] * 16
_ds_load_b128 v[vgprValuC+0:vgprValuC+0+3], v66, offset:0 // r=0 i=0 s=0
_ds_load_b128 v[vgprValuC+4:vgprValuC+4+3], v66, offset:4096 // r=0 i=1 s=0
_ds_load_b128 v[vgprValuC+8:vgprValuC+8+3], v66, offset:8192 // r=0 i=2 s=0
_ds_load_b128 v[vgprValuC+12:vgprValuC+12+3], v66, offset:12288 // r=0 i=3 s=0
_ds_load_b128 v[vgprValuC+16:vgprValuC+16+3], v66, offset:16384 // r=1 i=0 s=0
_ds_load_b128 v[vgprValuC+20:vgprValuC+20+3], v66, offset:20480 // r=1 i=1 s=0
_ds_load_b128 v[vgprValuC+24:vgprValuC+24+3], v66, offset:24576 // r=1 i=2 s=0
_ds_load_b128 v[vgprValuC+28:vgprValuC+28+3], v66, offset:28672 // r=1 i=3 s=0
_ds_load_b128 v[vgprValuC+32:vgprValuC+32+3], v66, offset:32768 // r=2 i=0 s=0
_ds_load_b128 v[vgprValuC+36:vgprValuC+36+3], v66, offset:36864 // r=2 i=1 s=0
_ds_load_b128 v[vgprValuC+40:vgprValuC+40+3], v66, offset:40960 // r=2 i=2 s=0
_ds_load_b128 v[vgprValuC+44:vgprValuC+44+3], v66, offset:45056 // r=2 i=3 s=0
_ds_load_b128 v[vgprValuC+48:vgprValuC+48+3], v66, offset:49152 // r=3 i=0 s=0
_ds_load_b128 v[vgprValuC+52:vgprValuC+52+3], v66, offset:53248 // r=3 i=1 s=0
_ds_load_b128 v[vgprValuC+56:vgprValuC+56+3], v66, offset:57344 // r=3 i=2 s=0
_ds_load_b128 v[vgprValuC+60:vgprValuC+60+3], v66, offset:61440 // r=3 i=3 s=0
s_waitcnt lgkmcnt(0)                               // wait for all reads
s_waitcnt_vscnt null, 0                            // writes


/* LocalSplitU: reduction */

v_add_f32 v[vgprValuC+0], v[vgprValuC+16], v[vgprValuC+0] // c[0] += c[16]
v_add_f32 v[vgprValuC+1], v[vgprValuC+17], v[vgprValuC+1] // c[1] += c[17]
v_add_f32 v[vgprValuC+2], v[vgprValuC+18], v[vgprValuC+2] // c[2] += c[18]
v_add_f32 v[vgprValuC+3], v[vgprValuC+19], v[vgprValuC+3] // c[3] += c[19]
v_add_f32 v[vgprValuC+4], v[vgprValuC+20], v[vgprValuC+4] // c[4] += c[20]
v_add_f32 v[vgprValuC+5], v[vgprValuC+21], v[vgprValuC+5] // c[5] += c[21]
v_add_f32 v[vgprValuC+6], v[vgprValuC+22], v[vgprValuC+6] // c[6] += c[22]
v_add_f32 v[vgprValuC+7], v[vgprValuC+23], v[vgprValuC+7] // c[7] += c[23]
v_add_f32 v[vgprValuC+8], v[vgprValuC+24], v[vgprValuC+8] // c[8] += c[24]
v_add_f32 v[vgprValuC+9], v[vgprValuC+25], v[vgprValuC+9] // c[9] += c[25]
v_add_f32 v[vgprValuC+10], v[vgprValuC+26], v[vgprValuC+10] // c[10] += c[26]
v_add_f32 v[vgprValuC+11], v[vgprValuC+27], v[vgprValuC+11] // c[11] += c[27]
v_add_f32 v[vgprValuC+12], v[vgprValuC+28], v[vgprValuC+12] // c[12] += c[28]
v_add_f32 v[vgprValuC+13], v[vgprValuC+29], v[vgprValuC+13] // c[13] += c[29]
v_add_f32 v[vgprValuC+14], v[vgprValuC+30], v[vgprValuC+14] // c[14] += c[30]
v_add_f32 v[vgprValuC+15], v[vgprValuC+31], v[vgprValuC+15] // c[15] += c[31]
v_add_f32 v[vgprValuC+0], v[vgprValuC+32], v[vgprValuC+0] // c[0] += c[32]
v_add_f32 v[vgprValuC+1], v[vgprValuC+33], v[vgprValuC+1] // c[1] += c[33]
v_add_f32 v[vgprValuC+2], v[vgprValuC+34], v[vgprValuC+2] // c[2] += c[34]
v_add_f32 v[vgprValuC+3], v[vgprValuC+35], v[vgprValuC+3] // c[3] += c[35]
v_add_f32 v[vgprValuC+4], v[vgprValuC+36], v[vgprValuC+4] // c[4] += c[36]
v_add_f32 v[vgprValuC+5], v[vgprValuC+37], v[vgprValuC+5] // c[5] += c[37]
v_add_f32 v[vgprValuC+6], v[vgprValuC+38], v[vgprValuC+6] // c[6] += c[38]
v_add_f32 v[vgprValuC+7], v[vgprValuC+39], v[vgprValuC+7] // c[7] += c[39]
v_add_f32 v[vgprValuC+8], v[vgprValuC+40], v[vgprValuC+8] // c[8] += c[40]
v_add_f32 v[vgprValuC+9], v[vgprValuC+41], v[vgprValuC+9] // c[9] += c[41]
v_add_f32 v[vgprValuC+10], v[vgprValuC+42], v[vgprValuC+10] // c[10] += c[42]
v_add_f32 v[vgprValuC+11], v[vgprValuC+43], v[vgprValuC+11] // c[11] += c[43]
v_add_f32 v[vgprValuC+12], v[vgprValuC+44], v[vgprValuC+12] // c[12] += c[44]
v_add_f32 v[vgprValuC+13], v[vgprValuC+45], v[vgprValuC+13] // c[13] += c[45]
v_add_f32 v[vgprValuC+14], v[vgprValuC+46], v[vgprValuC+14] // c[14] += c[46]
v_add_f32 v[vgprValuC+15], v[vgprValuC+47], v[vgprValuC+15] // c[15] += c[47]
v_add_f32 v[vgprValuC+0], v[vgprValuC+48], v[vgprValuC+0] // c[0] += c[48]
v_add_f32 v[vgprValuC+1], v[vgprValuC+49], v[vgprValuC+1] // c[1] += c[49]
v_add_f32 v[vgprValuC+2], v[vgprValuC+50], v[vgprValuC+2] // c[2] += c[50]
v_add_f32 v[vgprValuC+3], v[vgprValuC+51], v[vgprValuC+3] // c[3] += c[51]
v_add_f32 v[vgprValuC+4], v[vgprValuC+52], v[vgprValuC+4] // c[4] += c[52]
v_add_f32 v[vgprValuC+5], v[vgprValuC+53], v[vgprValuC+5] // c[5] += c[53]
v_add_f32 v[vgprValuC+6], v[vgprValuC+54], v[vgprValuC+6] // c[6] += c[54]
v_add_f32 v[vgprValuC+7], v[vgprValuC+55], v[vgprValuC+7] // c[7] += c[55]
v_add_f32 v[vgprValuC+8], v[vgprValuC+56], v[vgprValuC+8] // c[8] += c[56]
v_add_f32 v[vgprValuC+9], v[vgprValuC+57], v[vgprValuC+9] // c[9] += c[57]
v_add_f32 v[vgprValuC+10], v[vgprValuC+58], v[vgprValuC+10] // c[10] += c[58]
v_add_f32 v[vgprValuC+11], v[vgprValuC+59], v[vgprValuC+11] // c[11] += c[59]
v_add_f32 v[vgprValuC+12], v[vgprValuC+60], v[vgprValuC+12] // c[12] += c[60]
v_add_f32 v[vgprValuC+13], v[vgprValuC+61], v[vgprValuC+13] // c[13] += c[61]
v_add_f32 v[vgprValuC+14], v[vgprValuC+62], v[vgprValuC+14] // c[14] += c[62]
v_add_f32 v[vgprValuC+15], v[vgprValuC+63], v[vgprValuC+15] // c[15] += c[63]


/* LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x2, v66                        // v66 = v66 * 4
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s48, 0x40, s[sgprWorkGroup0]             // s48 = wg0*MT0
_v_add_co_u32 v66, vcc, s48, v66                   // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s50, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc, s50, v67                   // coord1 = tid1*VW + wg1*MT1


/* LocalSplitU: global write */

s_and_b32 s48, 63, s[sgprSizeI]                    // s48 = s[sgprSizeI] % 64
s_add_u32 s49, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s49                // wg0 >= nwg0-1 ?
s_cselect_b32 s48, s48, 0                          // set rMT0
s_cmpk_gt_u32 s48, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_20                         // jump if edges required
s_and_b32 s48, 63, s[sgprSizeJ]                    // s48 = s[sgprSizeJ] % 64
s_add_u32 s49, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s49                // wg1 >= nwg1-1
s_cselect_b32 s48, s48, 0                          // set rMT1
s_cmpk_gt_u32 s48, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_20                         // jump if edges required
GW_B0_E0_17:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=4 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (1,0,0,0:vw4); (2,0,0,0:vw4); (3,0,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
_v_add_lshl_u32 v72, v69, v66, 0x2                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (1, 0, 0, 0), (2, 0, 0, 0), (3, 0, 0, 0)] */
v_mul_f32 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha
v_mul_f32 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha
v_mul_f32 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha
v_mul_f32 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha
v_mul_f32 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha
v_mul_f32 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha
v_mul_f32 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 64                 // scale StrideD *= numRows(16) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 64                 // scale StrideD *= numRows(16) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 64                 // scale StrideD *= numRows(16) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_22                           // jump to end
GW_B0_E1_20:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=18 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (1,0,0,0:vw1); (1,0,0,1:vw1); (1,0,0,2:vw1); (1,0,0,3:vw1); (2,0,0,0:vw1); (2,0,0,1:vw1); (2,0,0,2:vw1); (2,0,0,3:vw1); (3,0,0,0:vw1); (3,0,0,1:vw1); (3,0,0,2:vw1); (3,0,0,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[48:49], v66, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v72, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v70, vcc, v66, 1                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v70, vcc, v66, 2                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v70, vcc, v66, 3                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v67, vcc, v67, 16                    // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 16                // scale stride
_v_add_u32 v68, v68, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 16                // scale stride
_v_add_u32 v69, v69, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s[48:49], v66, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v76, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v70, vcc, v66, 1                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,2) */
_v_add_co_u32 v70, vcc, v66, 2                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,3) */
_v_add_co_u32 v70, vcc, v66, 3                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
_v_add_co_u32 v67, vcc, v67, 16                    // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 16                // scale stride
_v_add_u32 v68, v68, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 16                // scale stride
_v_add_u32 v69, v69, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s[48:49], v66, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v80, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,1) */
_v_add_co_u32 v70, vcc, v66, 1                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,2) */
_v_add_co_u32 v70, vcc, v66, 2                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,3) */
_v_add_co_u32 v70, vcc, v66, 3                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
_v_add_co_u32 v67, vcc, v67, 16                    // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 16                // scale stride
_v_add_u32 v68, v68, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 16                // scale stride
_v_add_u32 v69, v69, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s[48:49], v66, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v84, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,1) */
_v_add_co_u32 v70, vcc, v66, 1                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,2) */
_v_add_co_u32 v70, vcc, v66, 2                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s[52:53]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,3) */
_v_add_co_u32 v70, vcc, v66, 3                     // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[48:49], v70, s[sgprSizeI]           // coord0 < size0
v_cmp_lt_u32 s[52:53], v67, s[sgprSizeJ]           // coord1 < size1
s_and_b64 s[52:53], s[48:49], s[52:53]             // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s[52:53]               // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (1, 0, 0, 0), (1, 0, 0, 1), (1, 0, 0, 2), (1, 0, 0, 3), (2, 0, 0, 0), (2, 0, 0, 1), (2, 0, 0, 2), (2, 0, 0, 3), (3, 0, 0, 0), (3, 0, 0, 1), (3, 0, 0, 2), (3, 0, 0, 3)] */
v_mul_f32 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha
v_mul_f32 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha
v_mul_f32 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha
v_mul_f32 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha
v_mul_f32 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha
v_mul_f32 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha
v_mul_f32 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b32 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v1, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v2, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v3, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v4, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v5, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v6, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v7, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v8, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v9, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v10, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v11, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v12, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v13, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v14, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v15, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_22                           // jump to end
label_GW_End_22:

label_0027:  /// KernelEnd
s_endpgm                                           // Kernel End



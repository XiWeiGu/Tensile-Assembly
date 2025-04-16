

/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1030"
.text
.protected Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1
.globl Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1
.p2align 8
.type Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 48 // vgprs
  .amdhsa_next_free_sgpr 71 // sgprs
  .amdhsa_group_segment_fixed_size 1638 // lds bytes
  .amdhsa_wavefront_size32 1 // 32-thread wavefronts
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
/* ThreadTile= 8 x 1 */
/* SubGroup= 2 x 16 */
/* VectorWidthA=1 */
/* VectorWidthB=1 */
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
  - .name: Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1
    .symbol: 'Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1.kd'
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
    .group_segment_fixed_size:   1638
    .kernarg_segment_align:      8
    .kernarg_segment_size:       96
    .max_flat_workgroup_size:    32
    .private_segment_fixed_size: 0
    .sgpr_count:                 71
    .sgpr_spill_count:           0
    .vgpr_count:                 48
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1:

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
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_i32 dst, src0, src1=
   v_cmp_lt_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_i64 dst, src0, src1=
   v_cmp_lt_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_u16 dst, src0, src1=
   v_cmp_lt_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_u32 dst, src0, src1=
   v_cmp_lt_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_u64 dst, src0, src1=
   v_cmp_lt_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_i16 dst, src0, src1=
   v_cmp_eq_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_i32 dst, src0, src1=
   v_cmp_eq_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_i64 dst, src0, src1=
   v_cmp_eq_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_u16 dst, src0, src1=
   v_cmp_eq_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_u32 dst, src0, src1=
   v_cmp_eq_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_u64 dst, src0, src1=
   v_cmp_eq_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_i16 dst, src0, src1=
   v_cmp_le_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_i32 dst, src0, src1=
   v_cmp_le_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_i64 dst, src0, src1=
   v_cmp_le_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_u16 dst, src0, src1=
   v_cmp_le_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_u32 dst, src0, src1=
   v_cmp_le_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_u64 dst, src0, src1=
   v_cmp_le_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_i16 dst, src0, src1=
   v_cmp_gt_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_i32 dst, src0, src1=
   v_cmp_gt_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_i64 dst, src0, src1=
   v_cmp_gt_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_u16 dst, src0, src1=
   v_cmp_gt_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_u32 dst, src0, src1=
   v_cmp_gt_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_u64 dst, src0, src1=
   v_cmp_gt_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_i16 dst, src0, src1=
   v_cmp_ne_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_i32 dst, src0, src1=
   v_cmp_ne_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_i64 dst, src0, src1=
   v_cmp_ne_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_u16 dst, src0, src1=
   v_cmp_ne_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_u32 dst, src0, src1=
   v_cmp_ne_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_u64 dst, src0, src1=
   v_cmp_ne_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_i16 dst, src0, src1=
   v_cmp_lg_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_i32 dst, src0, src1=
   v_cmp_lg_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_i64 dst, src0, src1=
   v_cmp_lg_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_u16 dst, src0, src1=
   v_cmp_lg_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_u32 dst, src0, src1=
   v_cmp_lg_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_u64 dst, src0, src1=
   v_cmp_lg_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_i16 dst, src0, src1=
   v_cmp_ge_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_i32 dst, src0, src1=
   v_cmp_ge_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_i64 dst, src0, src1=
   v_cmp_ge_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_u16 dst, src0, src1=
   v_cmp_ge_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_u32 dst, src0, src1=
   v_cmp_ge_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_u64 dst, src0, src1=
   v_cmp_ge_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_i16 dst, src0, src1=
   v_cmp_o_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_i32 dst, src0, src1=
   v_cmp_o_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_i64 dst, src0, src1=
   v_cmp_o_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_u16 dst, src0, src1=
   v_cmp_o_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_u32 dst, src0, src1=
   v_cmp_o_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_u64 dst, src0, src1=
   v_cmp_o_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_i16 dst, src0, src1=
   v_cmp_u_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_i32 dst, src0, src1=
   v_cmp_u_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_i64 dst, src0, src1=
   v_cmp_u_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_u16 dst, src0, src1=
   v_cmp_u_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_u32 dst, src0, src1=
   v_cmp_u_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_u64 dst, src0, src1=
   v_cmp_u_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
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
/* ValuC range: [0-8), serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 10
.set vgprG2LA, 10
.set vgprValuB_X0_I0, 19
.set vgprG2LB, 19
.set vgprLocalWriteAddrA, 27
.set vgprLocalWriteAddrB, 28
.set vgprGlobalReadOffsetA, 29
.set vgprGlobalReadOffsetB, 30
.set vgprLocalReadAddrA, 31
.set vgprLocalReadAddrB, 32
.set vgprSerial, 33
/* Num VGPR=48 */
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
.set sgprScalarGlobalReadOffsetA, 52 // (7)
.set sgprScalarGlobalReadOffsetB, 59 // (7)
/* max SGPR=71 */

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

.set MT0, 16
.set MT1, 16
.set DepthU, 16
.set GSU, 1
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
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
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffset0I], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]     // add prepad for pointer shift TODO: 在哪里控制的
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetK:req vgprOffset1J:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideB1J], v[\vgprOffset1J] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffsetK], v[\vgprTmp+0] // accumulate 1J lower
_v_add_u32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
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
_v_sub_co_u32 v[\vTmp1], vcc_lo, 0x0, v[\vRemainder] // 
v_cmp_ne_i32 s[\sTmp], 0x0, v[\vTmp0]              // 
v_cndmask_b32 v[\vRemainder], v[\vTmp1], v[\vRemainder], s[\sTmp] // 
v_mul_hi_u32 v[\vRemainder], v[\vRemainder], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp0], vcc_lo, v[\vQuotient], v[\vRemainder] // 
_v_add_co_u32 v[\vQuotient], vcc_lo, v[\vQuotient], v[\vRemainder] // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vTmp0], s[\sTmp] // 
v_mul_hi_u32 v[\vQuotient], v[\vQuotient], v[\vDividend] // 
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vTmp0], vcc_lo, v[\vDividend], v[\vRemainder] // 
v_cmp_ge_u32 s[\sTmp], v[\vDividend], v[\vRemainder] // 
_v_add_co_u32 v[\vRemainder], vcc_lo, 0x1, v[\vQuotient] // 
_v_add_co_u32 v[\vTmp1], vcc_lo, -1, v[\vQuotient] // 
v_cmp_le_u32 vcc_lo, v[\vDivisor], v[\vTmp0]       // 
s_and_b32 vcc_lo, s[\sTmp], vcc_lo                 // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vRemainder], vcc_lo // 
v_cndmask_b32 v[\vQuotient], v[\vTmp1], v[\vQuotient], s[\sTmp] // 
v_cmp_ne_i32 vcc_lo, 0x0, v[\vDivisor]             // 
v_cndmask_b32 v[\vQuotient], -1, v[\vQuotient], vcc_lo // final result
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vRemainder], vcc_lo, v[\vDividend], v[\vRemainder] // final result
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cij_Aik_Bkj_H_MT16x16x16_MI16x16x16x1_SN_K1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b128 s[40:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
_s_load_b64 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x50 // 
_s_load_b32 s46, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x58 // 
s_mov_b32 m0, 0x666                                // LDS clamp at 1638 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a/b */

/*lr0I*/
v_and_b32 v1, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
                                                   // 2. block offset: bnIdx = bnIdx % num1DBlocks(1) is 0. do nothing
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
/*lr1J*/
v_and_b32 v2, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
                                                   // 2. block offset: bnIdx = bnIdx % num1DBlocks(1) is 0. do nothing
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)


/* local read addresses: final offsets a */

v_lshlrev_b32 v[vgprLocalReadAddrA], 0x1, v0       // Final Offset: offset = (lro0)*bpe
v_lshrrev_b32 v0, 9, v[vgprLocalReadAddrA]         // Final Offset: padding 16 per block 512
v_lshlrev_b32 v0, 0x5, v0                          // Final Offset: padding 16 per block 512
_v_add_u32 v[vgprLocalReadAddrA], v0, v[vgprLocalReadAddrA] // Final Offset: add padding 16 per block 512


/* local read addresses: final offsets b */

v_lshlrev_b32 v[vgprLocalReadAddrB], 0x1, v1       // Final Offset: offset = (lro1)*bpe
v_lshrrev_b32 v0, 9, v[vgprLocalReadAddrB]         // Final Offset: padding 16 per block 512
v_lshlrev_b32 v0, 0x5, v0                          // Final Offset: padding 16 per block 512
_v_add_u32 v[vgprLocalReadAddrB], v0, v[vgprLocalReadAddrB] // Final Offset: add padding 16 per block 512


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x300, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 16 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 4, v[vgprSerial]                 // v1 = v[vgprSerial] / 16
v_and_b32 v0, 15, v[vgprSerial]                    // v0 = v[vgprSerial] % 16
/* gro-tile *= glvw */
                                                   // v0 = v0 * 1 (multiplier is 1, do nothing)


/* global read addresses: tile offset assignment b */

/* LVCB = 16 */
/* v2 = (local)groB-tile = serial/LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial%LVCB */
v_lshrrev_b32 v2, 4, v[vgprSerial]                 // v2 = v[vgprSerial] / 16
v_and_b32 v3, 15, v[vgprSerial]                    // v3 = v[vgprSerial] % 16
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

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x10, v1     // lwAK**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAK*(MT0I+PAD))*bpe
v_lshrrev_b32 v4, 9, v[vgprLocalWriteAddrA]        // padding 16 per block 512
v_lshlrev_b32 v4, 0x5, v4                          // padding 16 per block 512
_v_add_u32 v[vgprLocalWriteAddrA], v4, v[vgprLocalWriteAddrA] // add padding 16 per block 512


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x10, v3     // lwBK**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBK*(MT1J+PAD))*bpe
v_lshrrev_b32 v4, 9, v[vgprLocalWriteAddrB]        // padding 16 per block 512
v_lshlrev_b32 v4, 0x5, v4                          // padding 16 per block 512
_v_add_u32 v[vgprLocalWriteAddrB], v4, v[vgprLocalWriteAddrB] // add padding 16 per block 512
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x300, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBK*MT1J + LDS_OFFSET_B=384*2







s_waitcnt lgkmcnt(0)                               // wait for 92 bytes of kern args
s_sub_u32 s[sgprSrdA+0], s[sgprAddressA+0], 2      // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprAddressA+1], 0     // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprSrdB+0], s[sgprAddressB+0], 2      // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdB+1], s[sgprAddressB+1], 0     // pre-pad to make room for possible pointer shift

.set AddressA, UNDEF
.set AddressB, UNDEF

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc_lo, s[sgprAlpha], 0.0             // Alpha == 0.0f ?
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
s_mul_i32 s[sgprScalarGlobalReadOffsetA+0], s[sgprStrideAK], 2 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+0], s[sgprScalarGlobalReadOffsetA+0], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+1], s[sgprStrideAK], 4 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+1], s[sgprScalarGlobalReadOffsetA+1], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+2], s[sgprStrideAK], 6 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+2], s[sgprScalarGlobalReadOffsetA+2], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+3], s[sgprStrideAK], 8 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+3], s[sgprScalarGlobalReadOffsetA+3], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+4], s[sgprStrideAK], 10 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+4], s[sgprScalarGlobalReadOffsetA+4], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+5], s[sgprStrideAK], 12 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+5], s[sgprScalarGlobalReadOffsetA+5], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+6], s[sgprStrideAK], 14 // compute offset diff (scaled unrollDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+6], s[sgprScalarGlobalReadOffsetA+6], 0x1 // scalar offset *= bytes/element


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 4 // gROB_0_0_0_0
s_mul_i32 s[sgprScalarGlobalReadOffsetB+0], s[sgprStrideB1J], 2 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+0], s[sgprScalarGlobalReadOffsetB+0], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+1], s[sgprStrideB1J], 4 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+1], s[sgprScalarGlobalReadOffsetB+1], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+2], s[sgprStrideB1J], 6 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+2], s[sgprScalarGlobalReadOffsetB+2], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+3], s[sgprStrideB1J], 8 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+3], s[sgprScalarGlobalReadOffsetB+3], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+4], s[sgprStrideB1J], 10 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+4], s[sgprScalarGlobalReadOffsetB+4], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+5], s[sgprStrideB1J], 12 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+5], s[sgprScalarGlobalReadOffsetB+5], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+6], s[sgprStrideB1J], 14 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+6], s[sgprScalarGlobalReadOffsetB+6], 0x1 // scalar offset *= bytes/element


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s69, s[sgprWorkGroup0], 16            // WorkGroup[01] * MT
s_mul_i32 s68, s[sgprWorkGroup0], 16               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s68 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s69 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 2 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
s_lshl_b64 s[68:69], s[68:69], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s68        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s69       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s69, s[sgprWorkGroup1], 16            // WorkGroup[01] * MT
s_mul_i32 s68, s[sgprWorkGroup1], 16               // WorkGroup[01] * MT
s_mul_hi_u32 s69, s68, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s68, s68, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s68 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s69 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 2 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_lshl_b64 s[68:69], s[68:69], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s68        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s69       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mul_i32 s[sgprGlobalReadIncsA+0], DepthU*BpeA, s[sgprStrideAK] // incrA unrollIdx)


/* global read addresses: increments b */

s_mov_b32 s[sgprGlobalReadIncsB+0], DepthU*BpeB    // incrB (unrollIdx)

/* declare loop num iterations */



/* initC: remove C-tile 0-8 from pool */

/* initC: remove AB-tile 10-27 from pool */
v_mov_b32 v[vgprValuC+0], 0x0                      // initC
v_mov_b32 v[vgprValuC+1], 0x0                      // initC
v_mov_b32 v[vgprValuC+2], 0x0                      // initC
v_mov_b32 v[vgprValuC+3], 0x0                      // initC
v_mov_b32 v[vgprValuC+4], 0x0                      // initC
v_mov_b32 v[vgprValuC+5], 0x0                      // initC
v_mov_b32 v[vgprValuC+6], 0x0                      // initC
v_mov_b32 v[vgprValuC+7], 0x0                      // initC

s_lshr_b32 s[sgprLoopCounterK], s[sgprSizesSum+0], 4 // s[sgprLoopCounterK] = s[sgprSizesSum+0] / 16
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterK] // copy loop counter

s_and_b32 s[sgprStaggerUIter], s[sgprOrigStaggerUIter], s[sgprWorkGroup0] // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 3 // shift by StaggerUStride


/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_u32 s67, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s66, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUA+1], s[sgprLoopCounterK], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterK], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s66        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s67      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32


/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_u32 s67, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s66, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUB+1], s[sgprLoopCounterK], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterK], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s66        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s67      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s67 // limit -= inc)
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

_buffer_load_d16_b16 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_d16_hi_b16 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_d16_b16 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_d16_hi_b16 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_d16_b16 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3], offen offset:0 // G -> Reg 0_0_4_0
_buffer_load_d16_hi_b16 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4], offen offset:0 // G -> Reg 0_0_5_0
_buffer_load_d16_b16 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5], offen offset:0 // G -> Reg 0_0_6_0
_buffer_load_d16_hi_b16 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6], offen offset:0 // G -> Reg 0_0_7_0
_buffer_load_d16_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_d16_hi_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_d16_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_d16_hi_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_d16_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3], offen offset:0 // G -> Reg 0_0_4_0
_buffer_load_d16_hi_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4], offen offset:0 // G -> Reg 0_0_5_0
_buffer_load_d16_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5], offen offset:0 // G -> Reg 0_0_6_0
_buffer_load_d16_hi_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6], offen offset:0 // G -> Reg 0_0_7_0

/* global read inc A loopK */
s_cmp_eq_u32 s[sgprLoopCounterK], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s66, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s67, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s66        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s67      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* global read inc B loopK */
s_cmp_eq_u32 s[sgprLoopCounterK], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s66, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s67, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s66        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s67      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=05wait for global read

// Skip barrier: NumThreads=32PGR=0, prior iter done reading lds


/* local write a */

_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:64 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 64
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:128 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 128
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:192 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 192
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:256 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 256
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:320 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 320
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:384 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 384
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:448 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 448


/* local write b */

_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:4 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 4
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:8 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 8
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:12 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 12
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:16 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 16
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:20 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 20
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:24 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 24
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:28 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 28

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-12prefetch wait for local write

// Skip barrier: NumThreads=32




/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:288 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:416 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:480 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+2], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+2], v[vgprLocalReadAddrB] offset:160 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+3], v[vgprLocalReadAddrB] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+3], v[vgprLocalReadAddrB] offset:224 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+4], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+4], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+5], v[vgprLocalReadAddrB] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+5], v[vgprLocalReadAddrB] offset:352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+6], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+6], v[vgprLocalReadAddrB] offset:416 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+7], v[vgprLocalReadAddrB] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+7], v[vgprLocalReadAddrB] offset:480 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=16 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=16 */




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
s_and_b32 s[sgprLoopCounterK], 15, s[sgprSizesSum+0] // s[sgprLoopCounterK] = s[sgprSizesSum+0] % 16
s_cmp_eq_u32 s[sgprLoopCounterK], 0x0              // numIterK == 0
s_cbranch_scc1 SkipTailLoopK_8                     // skip to end of tail loop b/c numIter==0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment


/* remove stagger offsets for tail loop */

s_mov_b32 s68, 2                                   // 
s_mul_hi_u32 s67, s68, s[sgprGlobalReadIncsA+0]    // 2 * GlobalReadIncs
s_mul_i32 s66, s68, s[sgprGlobalReadIncsA+0]       // 2 * GlobalReadIncs
s_mul_hi_u32 s69, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s68, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s66, s66, s68                            // start offset S in bytes
s_subb_u32 s67, s67, s69                           // start offset S in bytes
s_sub_u32 s66, s66, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s67, s67, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s66        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s67      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

s_mov_b32 s68, 2                                   // 
s_mul_hi_u32 s67, s68, s[sgprGlobalReadIncsB+0]    // 2 * GlobalReadIncs
s_mul_i32 s66, s68, s[sgprGlobalReadIncsB+0]       // 2 * GlobalReadIncs
s_mul_hi_u32 s69, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s68, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s66, s66, s68                            // start offset S in bytes
s_subb_u32 s67, s67, s69                           // start offset S in bytes
s_sub_u32 s66, s66, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s67, s67, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s66        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s67      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32


/* Update M0 for DTLDS */



/* global read a */

/* g2l=0, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // load one buffer value
/* g2l=1, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+1+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:0 // load one buffer value
/* g2l=1, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LA+1+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:0 // load one buffer value
/* g2l=2, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3], offen offset:0 // load one buffer value
/* g2l=2, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4], offen offset:0 // load one buffer value
/* g2l=3, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+3+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5], offen offset:0 // load one buffer value
/* g2l=3, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LA+3+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6], offen offset:0 // load one buffer value


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:0 // load one buffer value
/* g2l=1, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:0 // load one buffer value
/* g2l=1, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:0 // load one buffer value
/* g2l=2, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3], offen offset:0 // load one buffer value
/* g2l=2, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4], offen offset:0 // load one buffer value
/* g2l=3, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5], offen offset:0 // load one buffer value
/* g2l=3, load component 0 */
_buffer_load_d16_hi_b16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6], offen offset:0 // load one buffer value

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=02wait for global read

// Skip barrier: NumThreads=32


/* Done global A/B reads */




/* local write a */

_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:64 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 64
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:128 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 128
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:192 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 192
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:256 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 256
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:320 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 320
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:384 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 384
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:448 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 448


/* local write b */

_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:4 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 4
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:8 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 8
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:12 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 12
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:16 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 16
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:20 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 20
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:24 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 24
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:28 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 28


/* Recalc local read offsets */


s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-15wait for local write

// Skip barrier: NumThreads=32


/* tail loop: macs */

TailLoopBeginK_6:


/* local read a */

_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:288 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:416 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:480 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0


/* local read b */

_ds_load_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+2], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+2], v[vgprLocalReadAddrB] offset:160 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+3], v[vgprLocalReadAddrB] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+3], v[vgprLocalReadAddrB] offset:224 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+4], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+4], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+5], v[vgprLocalReadAddrB] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+5], v[vgprLocalReadAddrB] offset:352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+6], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+6], v[vgprLocalReadAddrB] offset:416 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuB_X0_I0+7], v[vgprLocalReadAddrB] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuB_X0_I0+7], v[vgprLocalReadAddrB] offset:480 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s6, 0x220                                // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s6, v[vgprLocalReadAddrA] // lrA += 544 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s6, 0x220                                // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s6, v[vgprLocalReadAddrB] // lrB += 544 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read


s_sub_i32 s66, s[sgprLoopCounterK], 1              // calculate 64bit groups index
s_lshr_b32 s67, s66, 2                             // calculate 64bit groups index
s_and_b32 s66, s66, 3                              // calculate shift value
s_sub_i32 s66, 3, s66                              // calculate shift value
s_lshl_b32 s66, s66, 4                             // calculate shift value
v_cmp_eq_i32 s68, s67, 0                           // handle this 64bit group: part 1
v_lshlrev_b64 v[34:35], s66, v[vgprValuA_X0_I0+0+0:vgprValuA_X0_I0+0+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0], v[vgprValuA_X0_I0+0+0+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+1], v[vgprValuA_X0_I0+0+0+1], v35, s68 // shift if in this 64b group
v_lshlrev_b64 v[34:35], s66, v[vgprValuB_X0_I0+0+0:vgprValuB_X0_I0+0+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+1], v[vgprValuB_X0_I0+0+0+1], v35, s68 // shift if in this 64b group
v_cmp_eq_i32 s68, s67, 1                           // handle this 64bit group: part 1
v_lshlrev_b64 v[34:35], s66, v[vgprValuA_X0_I0+0+2:vgprValuA_X0_I0+0+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], v35, s68 // shift if in this 64b group
v_lshlrev_b64 v[34:35], s66, v[vgprValuB_X0_I0+0+2:vgprValuB_X0_I0+0+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], v35, s68 // shift if in this 64b group
v_cmp_lt_i32 s68, s67, 1                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], 0, s68 // shift if in this 64b group
v_cmp_eq_i32 s68, s67, 2                           // handle this 64bit group: part 1
v_lshlrev_b64 v[34:35], s66, v[vgprValuA_X0_I0+0+4:vgprValuA_X0_I0+0+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], v35, s68 // shift if in this 64b group
v_lshlrev_b64 v[34:35], s66, v[vgprValuB_X0_I0+0+4:vgprValuB_X0_I0+0+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], v35, s68 // shift if in this 64b group
v_cmp_lt_i32 s68, s67, 2                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], 0, s68 // shift if in this 64b group
v_cmp_eq_i32 s68, s67, 3                           // handle this 64bit group: part 1
v_lshlrev_b64 v[34:35], s66, v[vgprValuA_X0_I0+0+6:vgprValuA_X0_I0+0+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], v35, s68 // shift if in this 64b group
v_lshlrev_b64 v[34:35], s66, v[vgprValuB_X0_I0+0+6:vgprValuB_X0_I0+0+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], v34, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], v35, s68 // shift if in this 64b group
v_cmp_lt_i32 s68, s67, 3                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], 0, s68 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], 0, s68 // shift if in this 64b group
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]


/* closeLoop loopK finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterK], s[sgprLoopCounterK], 0x10 // dec counterK (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x10 // inc counterK
s_cmp_le_i32 s[sgprLoopCounterK], 0x0              // counterK<=0
s_cbranch_scc0 TailLoopBeginK_6                    // restart LoopK
TailLoopEndK_7:

SkipTailLoopK_8:

Summation_End_14:
/* endSummation: add vgpr [10...31) to pool */
.set WrapUA, UNDEF
.set WrapUB, UNDEF
.set GlobalReadIncsB, UNDEF
.set ScalarGlobalReadOffsetA, UNDEF
.set ScalarGlobalReadOffsetB, UNDEF

/* Mapping of Acc register -> C Vgpr register */

/* Multiply MI out register with Alpha -> C Vgpr register */

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
s_lshl_b64 s[48:49], s[48:49], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s48    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s49   // add hi to SRD
s_mul_hi_u32 s49, s50, s[sgprStrideD1J]            // Scale s50 by Stride
s_mul_i32 s48, s50, s[sgprStrideD1J]               // Scale s50 by Stride
s_lshl_b64 s[48:49], s[48:49], 1                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s48    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s49   // add hi to SRD




/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v14, 5, v[vgprSerial]                // v14 = v[vgprSerial] / 32
v_and_b32 v11, 31, v[vgprSerial]                   // v11 = v[vgprSerial] % 32
v_lshrrev_b32 v11, 4, v11                          // v11 = v11 / 16
                                                   // thread0 * continuous_output (multiplier is 1, do nothing)
v_lshrrev_b32 v15, 0, v14                          // v15 = v14 / 1
v_mul_lo_u32 v15, 0x10, v15                        // wave coordination offset 1
_v_add_lshl_u32 v11, v15, v11, 0                   // coordination 1 = vwb *(wave_id1 + tid1)
v_mul_lo_u32 v12, v11, s[sgprStrideC1J]            //  offset 1
v_mul_lo_u32 v13, v11, s[sgprStrideD1J]            //  offset 1
v_and_b32 v15, 0, v14                              // v15 = v14 % 1
v_and_b32 v10, 15, v[vgprSerial]                   // v10 = v[vgprSerial] % 16
_v_add_lshl_u32 v10, v15, v10, 0                   // coordination 0 = vwa *(wave_id0 + tid0)
s_mul_i32 s6, 16, s[sgprWorkGroup0]                // wgp0 * MT0
_v_add_u32 v10, s6, v10                            // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s6, 16, s[sgprWorkGroup1]                // wgp1 * MT1
_v_add_u32 v11, s6, v11                            // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1


/* not-LocalSplitU: global write */

s_and_b32 s48, 15, s[sgprSizeI]                    // s48 = s[sgprSizeI] % 16
s_add_u32 s49, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s49                // wg0 >= nwg0-1 ?
s_cselect_b32 s48, s48, 0                          // set rMT0
s_cmpk_gt_u32 s48, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_20                         // jump if edges required
s_and_b32 s48, 15, s[sgprSizeJ]                    // s48 = s[sgprSizeJ] % 16
s_add_u32 s49, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s49                // wg1 >= nwg1-1
s_cselect_b32 s48, s48, 0                          // set rMT1
s_cmpk_gt_u32 s48, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_20                         // jump if edges required
GW_B0_E0_17:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=28 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (1,0,0,0:vw1); (2,0,0,0:vw1); (3,0,0,0:vw1); (4,0,0,0:vw1); (5,0,0,0:vw1); (6,0,0,0:vw1); (7,0,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
_v_add_lshl_u32 v16, v13, v10, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=10, coord0Vgpr=10

/* rC *= alpha batchElements=[(0, 0, 0, 0), (1, 0, 0, 0), (2, 0, 0, 0), (3, 0, 0, 0), (4, 0, 0, 0), (5, 0, 0, 0), (6, 0, 0, 0), (7, 0, 0, 0)] */
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v17, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v18, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v19, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v20, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v21, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v22, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v23, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_mul_i32 s6, s[sgprStrideD1J], 4                  // scale StrideD *= numRows(2) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b16 v24, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_22                           // jump to end
GW_B0_E1_20:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=14 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (1,0,0,0:vw1); (2,0,0,0:vw1); (3,0,0,0:vw1); (4,0,0,0:vw1); (5,0,0,0:vw1); (6,0,0,0:vw1); (7,0,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v16, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, -1, v16, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v18, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, -1, v18, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v20, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, -1, v20, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v22, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, -1, v22, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v24, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, -1, v24, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v26, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v26, -1, v26, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v28, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, -1, v28, s50                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
_v_add_co_u32 v11, vcc_lo, v11, 2                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 2                 // scale stride
_v_add_u32 v12, v12, s48                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 2                 // scale stride
_v_add_u32 v13, v13, s48                           // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v30, v13, v10, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v30, -1, v30, s50                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (1, 0, 0, 0), (2, 0, 0, 0), (3, 0, 0, 0), (4, 0, 0, 0), (5, 0, 0, 0), (6, 0, 0, 0), (7, 0, 0, 0)] */
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v17, v16, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v19, v18, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v21, v20, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v23, v22, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v25, v24, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v27, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v29, v28, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v34, v30, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_22                           // jump to end
label_GW_End_22:

label_0027:  /// KernelEnd
s_endpgm                                           // Kernel End



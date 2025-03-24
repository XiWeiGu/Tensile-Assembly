

/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1030"
.text
.protected Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1
.globl Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1
.p2align 8
.type Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 256 // vgprs
  .amdhsa_next_free_sgpr 56 // sgprs
  .amdhsa_group_segment_fixed_size 25088 // lds bytes
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
/* ThreadTile= 32 x 4 */
/* SubGroup= 4 x 32 */
/* VectorWidthA=2 */
/* VectorWidthB=2 */
/* GlobalLoadVectorWidthA=2, GlobalLoadVectorWidthB=2 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=False */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 1
amdhsa.target: amdgcn-amd-amdhsa--gfx1030
amdhsa.kernels:
  - .name: Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1
    .symbol: 'Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1.kd'
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
      - .name:            NumFullBlocks
        .size:            4
        .offset:          92
        .value_kind:      by_value
        .value_type:      u32
      - .name:            WgmRemainder1
        .size:            4
        .offset:          96
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberWgmRemainder1
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   25088
    .kernarg_segment_align:      8
    .kernarg_segment_size:       104
    .max_flat_workgroup_size:    128
    .private_segment_fixed_size: 0
    .sgpr_count:                 56
    .sgpr_spill_count:           0
    .vgpr_count:                 256
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1:

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
/* ValuC range: [0-128), serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 130
.set vgprG2LA, 214
.set vgprValuB_X0_I0, 163
.set vgprG2LB, 222
.set vgprLocalWriteAddrA, 195
.set vgprLocalWriteAddrB, 196
.set vgprGlobalReadOffsetA, 197
.set vgprGlobalReadOffsetB, 205
.set vgprLocalReadAddrA, 230
.set vgprLocalReadAddrB, 231
.set vgprSerial, 232
/* Num VGPR=256 */
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
.set sgprNumFullBlocks, 47 // (1)
.set sgprWgmRemainder1, 48 // (1)
.set sgprMagicNumberWgmRemainder1, 49 // (1)
.set sgprShadowLimitA, 0 // (2)
.set sgprShadowLimitB, 28 // (2)
.set sgprStaggerUIter, 30 // (1)
.set sgprWrapUA, 31 // (2)
.set sgprWrapUB, 33 // (2)
.set sgprGlobalReadIncsA, 35 // (1)
.set sgprGlobalReadIncsB, 50 // (1)
/* max SGPR=56 */

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

.set MT0, 128
.set MT1, 128
.set DepthU, 16
.set GSU, 1
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 2
.set SrdShiftLeftB, 2
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
_v_add_u32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetK:req vgprOffset1J:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideB1J], v[\vgprOffset1J] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffsetK], v[\vgprTmp+0] // accumulate 1J lower
_v_add_u32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]     // add prepad for pointer shift
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

Cij_Aik_Bkj_H_MT128x128x16_MI16x16x16x1_SN_GLVWA2_GLVWB2_GRVW2_K1_NLCA2_SIA1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b256 s[40:47], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
_s_load_b64 s[48:49], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x60 // 
s_mov_b32 m0, 0x6200                               // LDS clamp at 25088 bytes
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
v_lshlrev_b32 v0, 0x1, v0                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(2)
v_lshrrev_b32 v2, 5, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(32)
v_and_b32 v1, 1, v2                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v1, 0x5, v1                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(32)
_v_add_u32 v0, v1, v0                              // 8. final local read offset: flrOffset = lrOffset + WOffset
/*lr1J*/
v_and_b32 v2, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v1, 0x4, v1                          // 1. N offset: nOffset = nIdx * nStride(16)
                                                   // 2. block offset: bnIdx = bnIdx % num1DBlocks(1) is 0. do nothing
v_lshlrev_b32 v1, 0x1, v1                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(2)
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v2, 1, v3                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v2, 0x9, v2                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(512)
_v_add_u32 v1, v2, v1                              // 8. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: final offsets a */

v_lshlrev_b32 v[vgprLocalReadAddrA], 0x1, v0       // Final Offset: offset = (lro0)*bpe


/* local read addresses: final offsets b */

v_lshlrev_b32 v[vgprLocalReadAddrB], 0x1, v1       // Final Offset: offset = (lro1)*bpe
v_lshrrev_b32 v0, 7, v[vgprLocalReadAddrB]         // Final Offset: padding 8 per block 128
v_lshlrev_b32 v0, 0x4, v0                          // Final Offset: padding 8 per block 128
_v_add_u32 v[vgprLocalReadAddrB], v0, v[vgprLocalReadAddrB] // Final Offset: add padding 8 per block 128


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x1000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 32 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
// unsigned int globalReadOffsetA0I = (serial % LVCA /* 32 */)*GLOBAL_LOAD_VECTOR_WIDTH_A /* 1 */ + (wg0I)*MT0I /* 工作组索引对应的偏移，需要加上MT系数, v0, 这里只做了前半部分，没有加(wg0I)*MT0I
// unsigned int globalReadOffsetAK = (serial / LVCA /* 32 */); // 0, v1
v_and_b32 v2, 31, v[vgprSerial]                    // v2 = v[vgprSerial] % 32 gxw 0 ~ 31, wave里面的相对ID
v_lshrrev_b32 v1, 5, v2                            // v1 = v2 / 32 gxw v1=0
v_and_b32 v0, 31, v2                               // v0 = v2 % 32 gxw v0 = v2
v_readfirstlane_b32 s6, v[vgprSerial]              // WaveIdxWavefrontWidth
s_lshr_b32 s6, s6, 0x5                             // WaveId
s_mul_i32 s6, s6, 4                                // Global Read Wave: each wave loads continuous lsp(1)*nrp(4) columns
_v_add_u32 v1, s6, v1                              // Global Read Wave: add back to column index
/* gro-tile *= glvw */
v_lshlrev_b32 v0, 0x1, v0                          // v0 = v0 * 2, (0, 2, 4, ..., 62)水平方向线程间隔,还要在乘2(nlc)


/* global read addresses: tile offset assignment b */

/* LVCB = 8 */
/* v2 = (local)groB-tile = serial/LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial%LVCB */
v_and_b32 v4, 31, v[vgprSerial]                    // v4 = v[vgprSerial] % 32 gxw 0 ~ 31
v_lshrrev_b32 v2, 3, v4                            // v2 = v4 / 8 gxw 0 ~ 3
v_and_b32 v3, 7, v4                                // v3 = v4 % 8 gxw 0 ~ 7
v_readfirstlane_b32 s6, v[vgprSerial]              // WaveIdxWavefrontWidth
s_lshr_b32 s6, s6, 0x5                             // WaveId
s_mul_i32 s6, s6, 32                               // Global Read Wave: each wave loads continuous lsp(4)*nrp(8) columns
_v_add_u32 v2, s6, v2                              // Global Read Wave: add back to column index 垂直方向间隔
                                                   // 0, 32, 64, 96
/* gro-unroll *= glvw */
v_lshlrev_b32 v3, 0x1, v3                          // v3 = v3 * 2 (0, 2, 4, ..., 14)


/******************************************/
/* Local Write Addresses                  */
global read addresses: work-group/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */

/* lwaUnrollAssignmentB = v3 */


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x80, v1     // lwAK**(MTA + PAD) 垂直间隔(0, 4, 8, 12) * 128
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAK*(MT0I+PAD))*bpe
// 处理水平度间隔，每个线程水平读4个


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x10, v2     // lwBK**(DepthU_Compute + PAD) 垂直间隔(0, 32, 64, 96) * 16
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v3, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBK*(DepthU+PAD))*bpe
v_lshrrev_b32 v4, 7, v[vgprLocalWriteAddrB]        // padding 8 per block 128
v_lshlrev_b32 v4, 0x4, v4                          // padding 8 per block 128
_v_add_u32 v[vgprLocalWriteAddrB], v4, v[vgprLocalWriteAddrB] // add padding 8 per block 128
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x1000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBK*MT1J + LDS_OFFSET_B=2048*2







s_waitcnt lgkmcnt(0)                               // wait for 104 bytes of kern args
s_mov_b64 s[sgprSrdC+0:sgprSrdC+0+1], s[sgprAddressC+0:sgprAddressC+0+1] // copy addressC
s_mov_b64 s[sgprSrdD+0:sgprSrdD+0+1], s[sgprAddressD+0:sgprAddressD+0+1] // copy addressD
s_sub_u32 s[sgprSrdA+0], s[sgprAddressA+0], 4      // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprAddressA+1], 0     // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprSrdB+0], s[sgprAddressB+0], 4      // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdB+1], s[sgprAddressB+1], 0     // pre-pad to make room for possible pointer shift

.set AddressD, UNDEF
.set AddressC, UNDEF
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
// 工作组串行编号（wgSerial）的计算公式为：wgSerial = wg0 + (wg1 % WorkGroupMapping) * nwg0。其中，wg0 和 wg1 是工作组编号，WorkGroupMapping 是工作组映射参数（即上述的 N 或 WGM 值），nwg0 是工作组 0 的数量。

/* graWorkGroup mapping */
s_mov_b32 s55, 0x10000001L                         // magic number for WGM==8
s_mul_hi_u32 s53, s[sgprWorkGroup1], s55           // s_magic mul
s_mul_i32 s52, s[sgprWorkGroup1], s55              // s_magic mul
s_lshr_b64 s[52:53], s[52:53], 31                  // sMagicDiv
s_mul_i32 s53, s52, 8                              // quotient * non-magic divisor
s_sub_u32 s53, s[sgprWorkGroup1], s53              // WorkGroup1=remainder
s_mul_i32 s53, s53, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s53, s53, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg1, 工作组串行编号

s_cmp_ge_u32 s52, s[sgprNumFullBlocks]             // blockId >= numFullBlocks ?
s_cmov_b32 s55, s[sgprMagicNumberWgmRemainder1]    // 
s_cselect_b32 s54, s[sgprWgmRemainder1], 8         // 
s_mul_hi_u32 s3, s53, s55                          // s_magic mul
s_mul_i32 s2, s53, s55                             // s_magic mul
s_lshr_b64 s[2:3], s[2:3], 31                      // sMagicDiv
s_mul_i32 s[sgprWorkGroup1], s[sgprWorkGroup0], s54 // quotient * non-magic divisor
s_sub_u32 s[sgprWorkGroup1], s53, s[sgprWorkGroup1] // WorkGroup1=remainder
s_mul_i32 s52, s52, 8                              // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s52 // wg1 += blockId * WGM


/* global read addresses: unroll assignment a */

/* v1 */


/* global read addresses: unroll assignment b */

/* v3 */


/* global read addresses: tile offsets a */

v_mov_b32 v4, v0                                   // groA0I_0
_v_add_co_u32 v5, vcc_lo, 64, v4                   // groA0I_1 += LSCA


/* global read addresses: tile offsets b */

v_mov_b32 v6, v2                                   // groB1J_0
_v_add_co_u32 v7, vcc_lo, 4, v6                    // groB1J_1 += LSPB
_v_add_co_u32 v8, vcc_lo, 4, v7                    // groB1J_2 += LSPB
_v_add_co_u32 v9, vcc_lo, 4, v8                    // groB1J_3 += LSPB
_v_add_co_u32 v10, vcc_lo, 4, v9                   // groB1J_4 += LSPB
_v_add_co_u32 v11, vcc_lo, 4, v10                  // groB1J_5 += LSPB
_v_add_co_u32 v12, vcc_lo, 4, v11                  // groB1J_6 += LSPB
_v_add_co_u32 v13, vcc_lo, 4, v12                  // groB1J_7 += LSPB


/* global read addresses: unroll offsets a */

v_mov_b32 v14, v1                                  // groAK_0
_v_add_co_u32 v15, vcc_lo, 1, v14                  // groAK_1 + LSPA
_v_add_co_u32 v16, vcc_lo, 1, v15                  // groAK_2 + LSPA
_v_add_co_u32 v17, vcc_lo, 1, v16                  // groAK_3 + LSPA


/* global read addresses: unroll offsets b */

v_mov_b32 v18, v3                                  // groBK_0


/* global read addresses: shift a */

s_mul_i32 s51, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_sub_u32 s51, s[sgprSizeI], s51                   // edge = Size0I - WG*MT
s_sub_u32 s51, s51, 2                              // edge -= margin(2)
v_mov_b32 v19, s51                                 // edge vgpr = Size0I- WG*MT - margin(2)
v_min_i32 v4, v19, v4                              // offset = (offset < edge) ? offset(v4) : edge(v19)
v_min_i32 v5, v19, v5                              // offset = (offset < edge) ? offset(v5) : edge(v19)


/* global read addresses: final offsets a */
// vgprGlobalReadOffsetA 与vgprGlobalReadOffsetB是WorkGroup内部偏移

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4, 14, 19 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  5, 14, 19 // gROA_1_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+2,  4, 15, 19 // gROA_0_0_1_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+3,  5, 15, 19 // gROA_1_0_1_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+4,  4, 16, 19 // gROA_0_0_2_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+5,  5, 16, 19 // gROA_1_0_2_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+6,  4, 17, 19 // gROA_0_0_3_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+7,  5, 17, 19 // gROA_1_0_3_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0, 18,  6, 14 // gROB_0_0_0_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+1, 18,  7, 14 // gROB_0_0_1_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+2, 18,  8, 14 // gROB_0_0_2_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+3, 18,  9, 14 // gROB_0_0_3_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+4, 18, 10, 14 // gROB_0_0_4_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+5, 18, 11, 14 // gROB_0_0_5_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+6, 18, 12, 14 // gROB_0_0_6_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+7, 18, 13, 14 // gROB_0_0_7_0


/* global read addresses: addresses a */
// sgprSrdA 和 sgprSrdB是WorkGroup相对于整体的偏移

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s55, s[sgprWorkGroup0], 128           // WorkGroup[01] * MT
s_mul_i32 s54, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s54 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s55 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
s_lshl_b64 s[54:55], s[54:55], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s54        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s55       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s55, s[sgprWorkGroup1], 128           // WorkGroup[01] * MT
s_mul_i32 s54, s[sgprWorkGroup1], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s55, s54, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s54, s54, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s54 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s55 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_lshl_b64 s[54:55], s[54:55], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s54        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s55       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mul_i32 s[sgprGlobalReadIncsA+0], DepthU*BpeA, s[sgprStrideAK] // incrA unrollIdx)


/* global read addresses: increments b */

s_mov_b32 s[sgprGlobalReadIncsB+0], DepthU*BpeB    // incrB (unrollIdx)

/* declare loop num iterations */


s_lshr_b32 s[sgprLoopCounterK], s[sgprSizesSum+0], 4 // s[sgprLoopCounterK] = s[sgprSizesSum+0] / 16
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterK] // copy loop counter

s_and_b32 s[sgprStaggerUIter], s[sgprOrigStaggerUIter], s[sgprWorkGroup0] // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 3 // shift by StaggerUStride


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
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 2 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap

/* local read addresses: init pointers a */


/* localReadInitPointers */

/* local read addresses: init pointers b */


/* localReadInitPointers */


/* prefetch: global -> local */

s_cmp_eq_u32 s[sgprLoopCounterK], 0                // at last iteration?
s_cbranch_scc1 ShadowInitStart_10                  // skip to ShadowInitStart iter b/c numIter==0


_buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_0_0
_buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_1_0
_buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_2_0
_buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_3_0


_buffer_load_b32 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b32 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b32 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_b32 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_4_0
_buffer_load_b32 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_5_0
_buffer_load_b32 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_6_0
_buffer_load_b32 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_7_0


/* global read inc A loopK */
s_add_u32 s54, s[sgprLoopCounterK], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s54              // Is this wrapIter? (pf)
s_cselect_b32 s52, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s53, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* global read inc B loopK */
s_add_u32 s54, s[sgprLoopCounterK], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s54              // Is this wrapIter? (pf)
s_cselect_b32 s52, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s53, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s52        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s53      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s52 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s53 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32


/******************************************/
/* End setupNewTile, isPap=False             */
/******************************************/

ShadowInitStart_10: // 

s_mov_b32 s[sgprSrdD+2], BufferOOB                 // 
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+2], BufferOOB                 // 
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s54, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s53, s54, s[sgprStrideC1J]            // CScale s54 by Stride
s_mul_i32 s52, s54, s[sgprStrideC1J]               // CScale s54 by Stride
s_lshl_b64 s[52:53], s[52:53], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s53       // add hi to SRD
s_mul_hi_u32 s53, s54, s[sgprStrideD1J]            // Scale s54 by Stride
s_mul_i32 s52, s54, s[sgprStrideD1J]               // Scale s54 by Stride
s_lshl_b64 s[52:53], s[52:53], 1                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s53       // add hi to SRD



/* initC: remove C-tile 0-128 from pool */

/* initC: remove AB-tile 130-195 from pool */
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
v_mov_b32 v[vgprValuC+64], 0x0                     // initC
v_mov_b32 v[vgprValuC+65], 0x0                     // initC
v_mov_b32 v[vgprValuC+66], 0x0                     // initC
v_mov_b32 v[vgprValuC+67], 0x0                     // initC
v_mov_b32 v[vgprValuC+68], 0x0                     // initC
v_mov_b32 v[vgprValuC+69], 0x0                     // initC
v_mov_b32 v[vgprValuC+70], 0x0                     // initC
v_mov_b32 v[vgprValuC+71], 0x0                     // initC
v_mov_b32 v[vgprValuC+72], 0x0                     // initC
v_mov_b32 v[vgprValuC+73], 0x0                     // initC
v_mov_b32 v[vgprValuC+74], 0x0                     // initC
v_mov_b32 v[vgprValuC+75], 0x0                     // initC
v_mov_b32 v[vgprValuC+76], 0x0                     // initC
v_mov_b32 v[vgprValuC+77], 0x0                     // initC
v_mov_b32 v[vgprValuC+78], 0x0                     // initC
v_mov_b32 v[vgprValuC+79], 0x0                     // initC
v_mov_b32 v[vgprValuC+80], 0x0                     // initC
v_mov_b32 v[vgprValuC+81], 0x0                     // initC
v_mov_b32 v[vgprValuC+82], 0x0                     // initC
v_mov_b32 v[vgprValuC+83], 0x0                     // initC
v_mov_b32 v[vgprValuC+84], 0x0                     // initC
v_mov_b32 v[vgprValuC+85], 0x0                     // initC
v_mov_b32 v[vgprValuC+86], 0x0                     // initC
v_mov_b32 v[vgprValuC+87], 0x0                     // initC
v_mov_b32 v[vgprValuC+88], 0x0                     // initC
v_mov_b32 v[vgprValuC+89], 0x0                     // initC
v_mov_b32 v[vgprValuC+90], 0x0                     // initC
v_mov_b32 v[vgprValuC+91], 0x0                     // initC
v_mov_b32 v[vgprValuC+92], 0x0                     // initC
v_mov_b32 v[vgprValuC+93], 0x0                     // initC
v_mov_b32 v[vgprValuC+94], 0x0                     // initC
v_mov_b32 v[vgprValuC+95], 0x0                     // initC
v_mov_b32 v[vgprValuC+96], 0x0                     // initC
v_mov_b32 v[vgprValuC+97], 0x0                     // initC
v_mov_b32 v[vgprValuC+98], 0x0                     // initC
v_mov_b32 v[vgprValuC+99], 0x0                     // initC
v_mov_b32 v[vgprValuC+100], 0x0                    // initC
v_mov_b32 v[vgprValuC+101], 0x0                    // initC
v_mov_b32 v[vgprValuC+102], 0x0                    // initC
v_mov_b32 v[vgprValuC+103], 0x0                    // initC
v_mov_b32 v[vgprValuC+104], 0x0                    // initC
v_mov_b32 v[vgprValuC+105], 0x0                    // initC
v_mov_b32 v[vgprValuC+106], 0x0                    // initC
v_mov_b32 v[vgprValuC+107], 0x0                    // initC
v_mov_b32 v[vgprValuC+108], 0x0                    // initC
v_mov_b32 v[vgprValuC+109], 0x0                    // initC
v_mov_b32 v[vgprValuC+110], 0x0                    // initC
v_mov_b32 v[vgprValuC+111], 0x0                    // initC
v_mov_b32 v[vgprValuC+112], 0x0                    // initC
v_mov_b32 v[vgprValuC+113], 0x0                    // initC
v_mov_b32 v[vgprValuC+114], 0x0                    // initC
v_mov_b32 v[vgprValuC+115], 0x0                    // initC
v_mov_b32 v[vgprValuC+116], 0x0                    // initC
v_mov_b32 v[vgprValuC+117], 0x0                    // initC
v_mov_b32 v[vgprValuC+118], 0x0                    // initC
v_mov_b32 v[vgprValuC+119], 0x0                    // initC
v_mov_b32 v[vgprValuC+120], 0x0                    // initC
v_mov_b32 v[vgprValuC+121], 0x0                    // initC
v_mov_b32 v[vgprValuC+122], 0x0                    // initC
v_mov_b32 v[vgprValuC+123], 0x0                    // initC
v_mov_b32 v[vgprValuC+124], 0x0                    // initC
v_mov_b32 v[vgprValuC+125], 0x0                    // initC
v_mov_b32 v[vgprValuC+126], 0x0                    // initC
v_mov_b32 v[vgprValuC+127], 0x0                    // initC

s_cmp_eq_u32 s[sgprLoopCounterK], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_11                   // Only branch on scc1
s_getpc_B64 s[52:53]                               // addr of next instr
s_add_i32 s54, PrefetchGlobalLastIterEnd_5, 0x4    // target branch offset
s_add_u32 s52, s52, s54                            // add target branch offset
s_addc_u32 s53, s53, 0                             // add high and carry
s_setpc_b64 s[52:53]                               // branch to PrefetchGlobalLastIterEnd_5
label_NoBranch_11:

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0 8wait for global read


/* local write a */
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:128 // lwoA_1_0_0_0 = (1*LSCA) + (0*LSPA)(*MT0I+PAD) = 128
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:384 // lwoA_1_0_1_0 = (1*LSCA) + (1*LSPA)(*MT0I+PAD) = 384
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:640 // lwoA_1_0_2_0 = (1*LSCA) + (2*LSPA)(*MT0I+PAD) = 640
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:896 // lwoA_1_0_3_0 = (1*LSCA) + (3*LSPA)(*MT0I+PAD) = 896

/* local write b */
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:144 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 144
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:288 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 288
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:432 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 432
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:576 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 576
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:720 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 720
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:864 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 864
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1008 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1008


/* local write swap a */


/* (EPS=1) local write swap internal offset -> 16384 */


/* local write swap b */


/* (EPS=1) local write swap internal offset -> 16384 */





/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/

openLoopK_12:
s_cmp_le_u32 s[sgprLoopCounterK], 0x1              // LoopCounterK < EndCounter
s_cbranch_scc1 LoopEndK_2                          // do not enter LoopK
LoopBeginK_1:


/******************************************/
/* Unrolled Loop 1/2 - Begin              */
/******************************************/

label_0013: // LoopCopy1 

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-11wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //4sync for global read


/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */





/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:258 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:514 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:770 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1026 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1282 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1538 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1794 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2050 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2306 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2562 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2818 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3074 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3330 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3586 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3842 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:896 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_0_0
_buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_1_0
_buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_2_0
_buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_3_0
_buffer_load_b32 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b32 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b32 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_b32 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_4_0
_buffer_load_b32 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_5_0
_buffer_load_b32 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_6_0
_buffer_load_b32 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_7_0

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
_ds_load_u16 v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1920 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2944 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3968 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:130 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:386 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:642 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:898 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1154 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1410 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1666 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1922 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2178 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2434 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2690 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2946 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3202 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3458 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3714 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3970 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:16 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB] offset:48 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+20:vgprValuB_X0_I0+20+3], v[vgprLocalReadAddrB] offset:2320 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+24:vgprValuB_X0_I0+24+3], v[vgprLocalReadAddrB] offset:2336 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+28:vgprValuB_X0_I0+28+3], v[vgprLocalReadAddrB] offset:2352 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(15)                                // lgkmcnt=-1 vmcnt=15wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:16384 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 16384
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(14)                                // lgkmcnt=-1 vmcnt=14wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:16512 // lwoA_1_0_0_0 = (1*LSCA) + (0*LSPA)(*MT0I+PAD) = 16512
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(13)                                // lgkmcnt=-1 vmcnt=13wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:16640 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 16640
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(12)                                // lgkmcnt=-1 vmcnt=12wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:16768 // lwoA_1_0_1_0 = (1*LSCA) + (1*LSPA)(*MT0I+PAD) = 16768
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(11)                                // lgkmcnt=-1 vmcnt=11wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:16896 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 16896
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(10)                                // lgkmcnt=-1 vmcnt=10wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:17024 // lwoA_1_0_2_0 = (1*LSCA) + (2*LSPA)(*MT0I+PAD) = 17024
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(9)                                 // lgkmcnt=-1 vmcnt=9wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:17152 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 17152
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // lgkmcnt=-1 vmcnt=8wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:17280 // lwoA_1_0_3_0 = (1*LSCA) + (3*LSPA)(*MT0I+PAD) = 17280
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // lgkmcnt=-1 vmcnt=7wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:16384 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 16384
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // lgkmcnt=-1 vmcnt=6wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:16528 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 16528
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // lgkmcnt=-1 vmcnt=5wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:16672 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 16672
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // lgkmcnt=-1 vmcnt=4wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:16816 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 16816
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // lgkmcnt=-1 vmcnt=3wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:16960 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 16960
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:17104 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 17104
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:17248 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 17248
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:17392 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 17392

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 0 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 0 */

/* local read swap offsets a */

/* local read swap internal offset -> 16384 */

/* local read swap offsets b */

/* local read swap internal offset -> 16384 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(15)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=16 newLW=16 newLR=0
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]
v_wmma_f16_16x16x16_f16 v[8+0:15+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[8:15]
v_wmma_f16_16x16x16_f16 v[16+0:23+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[16:23]
v_wmma_f16_16x16x16_f16 v[24+0:31+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[24:31]
v_wmma_f16_16x16x16_f16 v[32+0:39+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[32:39]
v_wmma_f16_16x16x16_f16 v[40+0:47+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[40:47]
v_wmma_f16_16x16x16_f16 v[48+0:55+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[48:55]
v_wmma_f16_16x16x16_f16 v[56+0:63+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[56:63]
v_wmma_f16_16x16x16_f16 v[64+0:71+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[64:71]
v_wmma_f16_16x16x16_f16 v[72+0:79+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[72:79]
v_wmma_f16_16x16x16_f16 v[80+0:87+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[80:87]
v_wmma_f16_16x16x16_f16 v[88+0:95+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[88:95]
v_wmma_f16_16x16x16_f16 v[96+0:103+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[96:103]
v_wmma_f16_16x16x16_f16 v[104+0:111+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[104:111]
v_wmma_f16_16x16x16_f16 v[112+0:119+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[112:119]
v_wmma_f16_16x16x16_f16 v[120+0:127+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[120:127]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=64 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=8 */




/******************************************/
/* Unrolled Loop - End 1/2                */
/******************************************/


/* closeLoop loopK finalLoop=0 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterK], s[sgprLoopCounterK], 1 // dec counterK
s_cmp_eq_i32 s[sgprLoopCounterK], 0x1              // counterK==1
s_cbranch_scc1 LoopEndK_oddexit_3                  // exit LoopK


/******************************************/
/* Unrolled Loop 2/2 - Begin              */
/******************************************/

label_0014: // LoopCopy2 

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-11wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //4sync for global read


/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */





/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:16384 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:16640 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:16896 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:17152 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:17408 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:17664 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:17920 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:18176 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:18432 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:18688 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:18944 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:19200 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:19456 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:19712 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:19968 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:20224 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:16386 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:16642 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:16898 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:17154 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:17410 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:17666 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:17922 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:18178 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:18434 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:18690 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:18946 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:19202 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:19458 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:19714 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:19970 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:20226 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:16512 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:16768 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:17024 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:17280 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_0_0
_buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_1_0
_buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_2_0
_buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 1_0_3_0
_buffer_load_b32 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b32 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b32 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b32 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_buffer_load_b32 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_4_0
_buffer_load_b32 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_5_0
_buffer_load_b32 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_6_0
_buffer_load_b32 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_7_0

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
_ds_load_u16 v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:17536 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:17792 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:18048 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:18304 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:18560 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:18816 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:19072 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:19328 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:19584 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:19840 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:20096 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:20352 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:16514 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:16770 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:17026 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:17282 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:17538 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:17794 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:18050 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:18306 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:18562 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:18818 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:19074 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:19330 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:19586 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:19842 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:20098 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:20354 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:16384 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:16400 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB] offset:16416 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB] offset:16432 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+3], v[vgprLocalReadAddrB] offset:18688 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+20:vgprValuB_X0_I0+20+3], v[vgprLocalReadAddrB] offset:18704 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+24:vgprValuB_X0_I0+24+3], v[vgprLocalReadAddrB] offset:18720 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+28:vgprValuB_X0_I0+28+3], v[vgprLocalReadAddrB] offset:18736 // L -> Reg lro=0 swapByteOffset=16384 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(15)                                // lgkmcnt=-1 vmcnt=15wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(14)                                // lgkmcnt=-1 vmcnt=14wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:128 // lwoA_1_0_0_0 = (1*LSCA) + (0*LSPA)(*MT0I+PAD) = 128
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(13)                                // lgkmcnt=-1 vmcnt=13wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(12)                                // lgkmcnt=-1 vmcnt=12wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:384 // lwoA_1_0_1_0 = (1*LSCA) + (1*LSPA)(*MT0I+PAD) = 384
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(11)                                // lgkmcnt=-1 vmcnt=11wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(10)                                // lgkmcnt=-1 vmcnt=10wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:640 // lwoA_1_0_2_0 = (1*LSCA) + (2*LSPA)(*MT0I+PAD) = 640
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(9)                                 // lgkmcnt=-1 vmcnt=9wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // lgkmcnt=-1 vmcnt=8wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:896 // lwoA_1_0_3_0 = (1*LSCA) + (3*LSPA)(*MT0I+PAD) = 896
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // lgkmcnt=-1 vmcnt=7wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // lgkmcnt=-1 vmcnt=6wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:144 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 144
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // lgkmcnt=-1 vmcnt=5wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:288 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 288
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // lgkmcnt=-1 vmcnt=4wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:432 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 432
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // lgkmcnt=-1 vmcnt=3wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:576 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 576
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:720 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 720
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:864 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 864
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1008 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1008

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 16384 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 16384 */

/* local read swap offsets a */

/* local read swap internal offset -> 0 */

/* local read swap offsets b */

/* local read swap internal offset -> 0 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(15)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=16 newLW=16 newLR=0
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]
v_wmma_f16_16x16x16_f16 v[8+0:15+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[8:15]
v_wmma_f16_16x16x16_f16 v[16+0:23+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[16:23]
v_wmma_f16_16x16x16_f16 v[24+0:31+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[24:31]
v_wmma_f16_16x16x16_f16 v[32+0:39+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[32:39]
v_wmma_f16_16x16x16_f16 v[40+0:47+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[40:47]
v_wmma_f16_16x16x16_f16 v[48+0:55+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[48:55]
v_wmma_f16_16x16x16_f16 v[56+0:63+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[56:63]
v_wmma_f16_16x16x16_f16 v[64+0:71+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[64:71]
v_wmma_f16_16x16x16_f16 v[72+0:79+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[72:79]
v_wmma_f16_16x16x16_f16 v[80+0:87+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[80:87]
v_wmma_f16_16x16x16_f16 v[88+0:95+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[88:95]
v_wmma_f16_16x16x16_f16 v[96+0:103+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[96:103]
v_wmma_f16_16x16x16_f16 v[104+0:111+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[104:111]
v_wmma_f16_16x16x16_f16 v[112+0:119+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[112:119]
v_wmma_f16_16x16x16_f16 v[120+0:127+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[120:127]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=64 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=8 */




/******************************************/
/* Unrolled Loop - End 2/2 (final)        */
/******************************************/


/* closeLoop loopK finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterK], s[sgprLoopCounterK], 1 // dec counterK
s_cmp_eq_i32 s[sgprLoopCounterK], 0x1              // counterK==1
s_cbranch_scc0 LoopBeginK_1                        // restart LoopK
LoopEndK_evenexit_4: // unroll loop eveniter exit
s_branch LoopEndK_2                                // exit unroll loopK (and skip second exit code)
LoopEndK_oddexit_3: // unroll loop odditer exit

/* Select high bank of LDS */
v_xor_b32 v[vgprLocalReadAddrA], 0x4000, v[vgprLocalReadAddrA] // swap Red Blk
v_xor_b32 v[vgprLocalReadAddrB], 0x4000, v[vgprLocalReadAddrB] // swap Red Blk
LoopEndK_2:


/* Before NLL: Check VGPR.checkin for INT8 LW */


/******************************************/
/* Opt. NoLoadLoop Without PAP - Begin                                      */
/******************************************/

s_mov_b32 s52, 0x3c003c00                          // Packed alpha==1.0
s_cmp_eq_u32 s[sgprAlpha], s52                     // alpha == 1.0?
s_cbranch_scc0 OptNLL_End_15                       // branch if alpha != 1

s_and_b32 s52, 127, s[sgprSizeI]                   // s52 = s[sgprSizeI] % 128
s_add_u32 s53, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s53                // wg0 >= nwg0-1 ?
s_cselect_b32 s52, s52, 0                          // set rMT0
s_cmpk_gt_u32 s52, 0x0                             // rMT0 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required
s_and_b32 s52, 127, s[sgprSizeJ]                   // s52 = s[sgprSizeJ] % 128
s_add_u32 s53, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s53                // wg1 >= nwg1-1
s_cselect_b32 s52, s52, 0                          // set rMT1
s_cmpk_gt_u32 s52, 0x0                             // rMT1 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required

s_and_b32 s53, 15, s[sgprSizesSum+0]               // s53 = s[sgprSizesSum+0] % 16
s_cmp_eq_u32 s53, 0x0                              // numIterK == 0
s_cbranch_scc0 OptNLL_End_15                       // skip if tail loop required

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //



/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:258 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:514 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:770 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1026 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1282 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1538 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1794 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2050 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2306 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2562 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2818 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3074 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3330 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3586 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3842 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:896 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1920 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2944 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3968 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:130 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:386 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:642 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:898 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1154 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1410 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1666 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1922 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2178 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2434 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2690 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2946 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3202 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3458 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3714 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3970 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:16 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB] offset:48 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+20:vgprValuB_X0_I0+20+3], v[vgprLocalReadAddrB] offset:2320 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+24:vgprValuB_X0_I0+24+3], v[vgprLocalReadAddrB] offset:2336 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+28:vgprValuB_X0_I0+28+3], v[vgprLocalReadAddrB] offset:2352 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]
v_wmma_f16_16x16x16_f16 v[8+0:15+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[8:15]
v_wmma_f16_16x16x16_f16 v[16+0:23+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[16:23]
v_wmma_f16_16x16x16_f16 v[24+0:31+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[24:31]
v_wmma_f16_16x16x16_f16 v[32+0:39+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[32:39]
v_wmma_f16_16x16x16_f16 v[40+0:47+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[40:47]
v_wmma_f16_16x16x16_f16 v[48+0:55+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[48:55]
v_wmma_f16_16x16x16_f16 v[56+0:63+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[56:63]
v_wmma_f16_16x16x16_f16 v[64+0:71+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[64:71]
v_wmma_f16_16x16x16_f16 v[72+0:79+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[72:79]
v_wmma_f16_16x16x16_f16 v[80+0:87+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[80:87]
v_wmma_f16_16x16x16_f16 v[88+0:95+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[88:95]
v_wmma_f16_16x16x16_f16 v[96+0:103+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[96:103]
v_wmma_f16_16x16x16_f16 v[104+0:111+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[104:111]
v_wmma_f16_16x16x16_f16 v[112+0:119+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[112:119]
v_wmma_f16_16x16x16_f16 v[120+0:127+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[120:127]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=64 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=8 */

/* Stores for OptNLL */
Summation_End_OptNLL_16:
/* endSummation: add vgpr [130...230) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set GlobalReadIncsB, UNDEF

/* Mapping of Acc register -> C Vgpr register */

/* Multiply MI out register with Alpha -> C Vgpr register */
/* computeStoreVgprs */
v_lshrrev_b32 v134, 5, v[vgprSerial]               // v134 = v[vgprSerial] / 32
v_and_b32 v131, 31, v[vgprSerial]                  // v131 = v[vgprSerial] % 32
v_lshrrev_b32 v131, 4, v131                        // v131 = v131 / 16
                                                   // thread0 * continuous_output (multiplier is 1, do nothing)
v_lshrrev_b32 v135, 1, v134                        // v135 = v134 / 2
v_mul_lo_u32 v135, 0x10, v135                      // wave coordination offset 1
_v_add_lshl_u32 v131, v135, v131, 1                // coordination 1 = vwb *(wave_id1 + tid1)
v_mul_lo_u32 v132, v131, s[sgprStrideC1J]          //  offset 1
v_mul_lo_u32 v133, v131, s[sgprStrideD1J]          //  offset 1
v_and_b32 v135, 1, v134                            // v135 = v134 % 2
v_mul_lo_u32 v135, 0x10, v135                      // wave coordination offset 0
v_and_b32 v130, 15, v[vgprSerial]                  // v130 = v[vgprSerial] % 16
_v_add_lshl_u32 v130, v135, v130, 1                // coordination 0 = vwa *(wave_id0 + tid0)
s_mul_i32 s6, 128, s[sgprWorkGroup0]               // wgp0 * MT0
_v_add_u32 v130, s6, v130                          // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s6, 128, s[sgprWorkGroup1]               // wgp1 * MT1
_v_add_u32 v131, s6, v131                          // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
GW_B0_E0_19:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=56 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw2); (0,1,0,0:vw2); (0,0,1,0:vw2); (0,1,1,0:vw2); (1,0,0,0:vw2); (1,1,0,0:vw2); (1,0,1,0:vw2); (1,1,1,0:vw2); (2,0,0,0:vw2); (2,1,0,0:vw2); (2,0,1,0:vw2); (2,1,1,0:vw2); (3,0,0,0:vw2); (3,1,0,0:vw2); (3,0,1,0:vw2); (3,1,1,0:vw2); (4,0,0,0:vw2); (4,1,0,0:vw2); (4,0,1,0:vw2); (4,1,1,0:vw2); (5,0,0,0:vw2); (5,1,0,0:vw2); (5,0,1,0:vw2); (5,1,1,0:vw2); (6,0,0,0:vw2); (6,1,0,0:vw2); (6,0,1,0:vw2); (6,1,1,0:vw2); (7,0,0,0:vw2); (7,1,0,0:vw2); (7,0,1,0:vw2); (7,1,1,0:vw2); (8,0,0,0:vw2); (8,1,0,0:vw2); (8,0,1,0:vw2); (8,1,1,0:vw2); (9,0,0,0:vw2); (9,1,0,0:vw2); (9,0,1,0:vw2); (9,1,1,0:vw2); (10,0,0,0:vw2); (10,1,0,0:vw2); (10,0,1,0:vw2); (10,1,1,0:vw2); (11,0,0,0:vw2); (11,1,0,0:vw2); (11,0,1,0:vw2); (11,1,1,0:vw2); (12,0,0,0:vw2); (12,1,0,0:vw2); (12,0,1,0:vw2); (12,1,1,0:vw2); (13,0,0,0:vw2); (13,1,0,0:vw2); (13,0,1,0:vw2); (13,1,1,0:vw2) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
/* (d1,vc1,d0,vc0)=(2,0,1,0) */
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
/* (d1,vc1,d0,vc0)=(2,1,1,0) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
/* (d1,vc1,d0,vc0)=(3,0,1,0) */
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
/* (d1,vc1,d0,vc0)=(3,1,1,0) */
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
/* (d1,vc1,d0,vc0)=(4,0,1,0) */
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
/* (d1,vc1,d0,vc0)=(4,1,1,0) */
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
/* (d1,vc1,d0,vc0)=(5,0,1,0) */
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
/* (d1,vc1,d0,vc0)=(5,1,1,0) */
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
/* (d1,vc1,d0,vc0)=(6,0,1,0) */
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
/* (d1,vc1,d0,vc0)=(6,1,1,0) */
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
/* (d1,vc1,d0,vc0)=(7,0,1,0) */
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
/* (d1,vc1,d0,vc0)=(7,1,1,0) */
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
/* (d1,vc1,d0,vc0)=(8,0,1,0) */
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
/* (d1,vc1,d0,vc0)=(8,1,1,0) */
/* (d1,vc1,d0,vc0)=(9,0,0,0) */
/* (d1,vc1,d0,vc0)=(9,0,1,0) */
/* (d1,vc1,d0,vc0)=(9,1,0,0) */
/* (d1,vc1,d0,vc0)=(9,1,1,0) */
/* (d1,vc1,d0,vc0)=(10,0,0,0) */
/* (d1,vc1,d0,vc0)=(10,0,1,0) */
/* (d1,vc1,d0,vc0)=(10,1,0,0) */
/* (d1,vc1,d0,vc0)=(10,1,1,0) */
/* (d1,vc1,d0,vc0)=(11,0,0,0) */
/* (d1,vc1,d0,vc0)=(11,0,1,0) */
/* (d1,vc1,d0,vc0)=(11,1,0,0) */
/* (d1,vc1,d0,vc0)=(11,1,1,0) */
/* (d1,vc1,d0,vc0)=(12,0,0,0) */
/* (d1,vc1,d0,vc0)=(12,0,1,0) */
/* (d1,vc1,d0,vc0)=(12,1,0,0) */
/* (d1,vc1,d0,vc0)=(12,1,1,0) */
/* (d1,vc1,d0,vc0)=(13,0,0,0) */
/* (d1,vc1,d0,vc0)=(13,0,1,0) */
/* (d1,vc1,d0,vc0)=(13,1,0,0) */
/* (d1,vc1,d0,vc0)=(13,1,1,0) */
_v_add_lshl_u32 v136, v133, v130, 0x1              // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=130, coord0Vgpr=130
v_mov_b32 v[vgprValuC+138], v[vgprValuC+0] // copy MI out reg to vreg[0]
v_mov_b32 v[vgprValuC+139], v[vgprValuC+8] // copy MI out reg to vreg[1]
v_mov_b32 v[vgprValuC+140], v[vgprValuC+16] // copy MI out reg to vreg[2]
v_mov_b32 v[vgprValuC+141], v[vgprValuC+24] // copy MI out reg to vreg[3]
v_mov_b32 v[vgprValuC+142], v[vgprValuC+32] // copy MI out reg to vreg[4]
v_mov_b32 v[vgprValuC+143], v[vgprValuC+40] // copy MI out reg to vreg[5]
v_mov_b32 v[vgprValuC+144], v[vgprValuC+48] // copy MI out reg to vreg[6]
v_mov_b32 v[vgprValuC+145], v[vgprValuC+56] // copy MI out reg to vreg[7]
v_mov_b32 v[vgprValuC+146], v[vgprValuC+1] // copy MI out reg to vreg[8]
v_mov_b32 v[vgprValuC+147], v[vgprValuC+9] // copy MI out reg to vreg[9]
v_mov_b32 v[vgprValuC+148], v[vgprValuC+17] // copy MI out reg to vreg[10]
v_mov_b32 v[vgprValuC+149], v[vgprValuC+25] // copy MI out reg to vreg[11]
v_mov_b32 v[vgprValuC+150], v[vgprValuC+33] // copy MI out reg to vreg[12]
v_mov_b32 v[vgprValuC+151], v[vgprValuC+41] // copy MI out reg to vreg[13]
v_mov_b32 v[vgprValuC+152], v[vgprValuC+49] // copy MI out reg to vreg[14]
v_mov_b32 v[vgprValuC+153], v[vgprValuC+57] // copy MI out reg to vreg[15]
v_mov_b32 v[vgprValuC+154], v[vgprValuC+2] // copy MI out reg to vreg[16]
v_mov_b32 v[vgprValuC+155], v[vgprValuC+10] // copy MI out reg to vreg[17]
v_mov_b32 v[vgprValuC+156], v[vgprValuC+18] // copy MI out reg to vreg[18]
v_mov_b32 v[vgprValuC+157], v[vgprValuC+26] // copy MI out reg to vreg[19]
v_mov_b32 v[vgprValuC+158], v[vgprValuC+34] // copy MI out reg to vreg[20]
v_mov_b32 v[vgprValuC+159], v[vgprValuC+42] // copy MI out reg to vreg[21]
v_mov_b32 v[vgprValuC+160], v[vgprValuC+50] // copy MI out reg to vreg[22]
v_mov_b32 v[vgprValuC+161], v[vgprValuC+58] // copy MI out reg to vreg[23]
v_mov_b32 v[vgprValuC+162], v[vgprValuC+3] // copy MI out reg to vreg[24]
v_mov_b32 v[vgprValuC+163], v[vgprValuC+11] // copy MI out reg to vreg[25]
v_mov_b32 v[vgprValuC+164], v[vgprValuC+19] // copy MI out reg to vreg[26]
v_mov_b32 v[vgprValuC+165], v[vgprValuC+27] // copy MI out reg to vreg[27]
v_mov_b32 v[vgprValuC+166], v[vgprValuC+35] // copy MI out reg to vreg[28]
v_mov_b32 v[vgprValuC+167], v[vgprValuC+43] // copy MI out reg to vreg[29]
v_mov_b32 v[vgprValuC+168], v[vgprValuC+51] // copy MI out reg to vreg[30]
v_mov_b32 v[vgprValuC+169], v[vgprValuC+59] // copy MI out reg to vreg[31]
v_mov_b32 v[vgprValuC+170], v[vgprValuC+4] // copy MI out reg to vreg[32]
v_mov_b32 v[vgprValuC+171], v[vgprValuC+12] // copy MI out reg to vreg[33]
v_mov_b32 v[vgprValuC+172], v[vgprValuC+20] // copy MI out reg to vreg[34]
v_mov_b32 v[vgprValuC+173], v[vgprValuC+28] // copy MI out reg to vreg[35]
v_mov_b32 v[vgprValuC+174], v[vgprValuC+36] // copy MI out reg to vreg[36]
v_mov_b32 v[vgprValuC+175], v[vgprValuC+44] // copy MI out reg to vreg[37]
v_mov_b32 v[vgprValuC+176], v[vgprValuC+52] // copy MI out reg to vreg[38]
v_mov_b32 v[vgprValuC+177], v[vgprValuC+60] // copy MI out reg to vreg[39]
v_mov_b32 v[vgprValuC+178], v[vgprValuC+5] // copy MI out reg to vreg[40]
v_mov_b32 v[vgprValuC+179], v[vgprValuC+13] // copy MI out reg to vreg[41]
v_mov_b32 v[vgprValuC+180], v[vgprValuC+21] // copy MI out reg to vreg[42]
v_mov_b32 v[vgprValuC+181], v[vgprValuC+29] // copy MI out reg to vreg[43]
v_mov_b32 v[vgprValuC+182], v[vgprValuC+37] // copy MI out reg to vreg[44]
v_mov_b32 v[vgprValuC+183], v[vgprValuC+45] // copy MI out reg to vreg[45]
v_mov_b32 v[vgprValuC+184], v[vgprValuC+53] // copy MI out reg to vreg[46]
v_mov_b32 v[vgprValuC+185], v[vgprValuC+61] // copy MI out reg to vreg[47]
v_mov_b32 v[vgprValuC+186], v[vgprValuC+6] // copy MI out reg to vreg[48]
v_mov_b32 v[vgprValuC+187], v[vgprValuC+14] // copy MI out reg to vreg[49]
v_mov_b32 v[vgprValuC+188], v[vgprValuC+22] // copy MI out reg to vreg[50]
v_mov_b32 v[vgprValuC+189], v[vgprValuC+30] // copy MI out reg to vreg[51]
v_mov_b32 v[vgprValuC+190], v[vgprValuC+38] // copy MI out reg to vreg[52]
v_mov_b32 v[vgprValuC+191], v[vgprValuC+46] // copy MI out reg to vreg[53]
v_mov_b32 v[vgprValuC+192], v[vgprValuC+54] // copy MI out reg to vreg[54]
v_mov_b32 v[vgprValuC+193], v[vgprValuC+62] // copy MI out reg to vreg[55]
v_mov_b32 v[vgprValuC+194], v[vgprValuC+7] // copy MI out reg to vreg[56]
v_mov_b32 v[vgprValuC+195], v[vgprValuC+15] // copy MI out reg to vreg[57]
v_mov_b32 v[vgprValuC+196], v[vgprValuC+23] // copy MI out reg to vreg[58]
v_mov_b32 v[vgprValuC+197], v[vgprValuC+31] // copy MI out reg to vreg[59]
v_mov_b32 v[vgprValuC+198], v[vgprValuC+39] // copy MI out reg to vreg[60]
v_mov_b32 v[vgprValuC+199], v[vgprValuC+47] // copy MI out reg to vreg[61]
v_mov_b32 v[vgprValuC+200], v[vgprValuC+55] // copy MI out reg to vreg[62]
v_mov_b32 v[vgprValuC+201], v[vgprValuC+63] // copy MI out reg to vreg[63]
v_mov_b32 v[vgprValuC+202], v[vgprValuC+64] // copy MI out reg to vreg[64]
v_mov_b32 v[vgprValuC+203], v[vgprValuC+72] // copy MI out reg to vreg[65]
v_mov_b32 v[vgprValuC+204], v[vgprValuC+80] // copy MI out reg to vreg[66]
v_mov_b32 v[vgprValuC+205], v[vgprValuC+88] // copy MI out reg to vreg[67]
v_mov_b32 v[vgprValuC+206], v[vgprValuC+96] // copy MI out reg to vreg[68]
v_mov_b32 v[vgprValuC+207], v[vgprValuC+104] // copy MI out reg to vreg[69]
v_mov_b32 v[vgprValuC+208], v[vgprValuC+112] // copy MI out reg to vreg[70]
v_mov_b32 v[vgprValuC+209], v[vgprValuC+120] // copy MI out reg to vreg[71]
v_mov_b32 v[vgprValuC+210], v[vgprValuC+65] // copy MI out reg to vreg[72]
v_mov_b32 v[vgprValuC+211], v[vgprValuC+73] // copy MI out reg to vreg[73]
v_mov_b32 v[vgprValuC+212], v[vgprValuC+81] // copy MI out reg to vreg[74]
v_mov_b32 v[vgprValuC+213], v[vgprValuC+89] // copy MI out reg to vreg[75]
v_mov_b32 v[vgprValuC+214], v[vgprValuC+97] // copy MI out reg to vreg[76]
v_mov_b32 v[vgprValuC+215], v[vgprValuC+105] // copy MI out reg to vreg[77]
v_mov_b32 v[vgprValuC+216], v[vgprValuC+113] // copy MI out reg to vreg[78]
v_mov_b32 v[vgprValuC+217], v[vgprValuC+121] // copy MI out reg to vreg[79]
v_mov_b32 v[vgprValuC+218], v[vgprValuC+66] // copy MI out reg to vreg[80]
v_mov_b32 v[vgprValuC+219], v[vgprValuC+74] // copy MI out reg to vreg[81]
v_mov_b32 v[vgprValuC+220], v[vgprValuC+82] // copy MI out reg to vreg[82]
v_mov_b32 v[vgprValuC+221], v[vgprValuC+90] // copy MI out reg to vreg[83]
v_mov_b32 v[vgprValuC+222], v[vgprValuC+98] // copy MI out reg to vreg[84]
v_mov_b32 v[vgprValuC+223], v[vgprValuC+106] // copy MI out reg to vreg[85]
v_mov_b32 v[vgprValuC+224], v[vgprValuC+114] // copy MI out reg to vreg[86]
v_mov_b32 v[vgprValuC+225], v[vgprValuC+122] // copy MI out reg to vreg[87]
v_mov_b32 v[vgprValuC+226], v[vgprValuC+67] // copy MI out reg to vreg[88]
v_mov_b32 v[vgprValuC+227], v[vgprValuC+75] // copy MI out reg to vreg[89]
v_mov_b32 v[vgprValuC+228], v[vgprValuC+83] // copy MI out reg to vreg[90]
v_mov_b32 v[vgprValuC+229], v[vgprValuC+91] // copy MI out reg to vreg[91]
v_mov_b32 v[vgprValuC+234], v[vgprValuC+99] // copy MI out reg to vreg[92]
v_mov_b32 v[vgprValuC+235], v[vgprValuC+107] // copy MI out reg to vreg[93]
v_mov_b32 v[vgprValuC+236], v[vgprValuC+115] // copy MI out reg to vreg[94]
v_mov_b32 v[vgprValuC+237], v[vgprValuC+123] // copy MI out reg to vreg[95]
v_mov_b32 v[vgprValuC+238], v[vgprValuC+68] // copy MI out reg to vreg[96]
v_mov_b32 v[vgprValuC+239], v[vgprValuC+76] // copy MI out reg to vreg[97]
v_mov_b32 v[vgprValuC+240], v[vgprValuC+84] // copy MI out reg to vreg[98]
v_mov_b32 v[vgprValuC+241], v[vgprValuC+92] // copy MI out reg to vreg[99]
v_mov_b32 v[vgprValuC+242], v[vgprValuC+100] // copy MI out reg to vreg[100]
v_mov_b32 v[vgprValuC+243], v[vgprValuC+108] // copy MI out reg to vreg[101]
v_mov_b32 v[vgprValuC+244], v[vgprValuC+116] // copy MI out reg to vreg[102]
v_mov_b32 v[vgprValuC+245], v[vgprValuC+124] // copy MI out reg to vreg[103]
v_mov_b32 v[vgprValuC+246], v[vgprValuC+69] // copy MI out reg to vreg[104]
v_mov_b32 v[vgprValuC+247], v[vgprValuC+77] // copy MI out reg to vreg[105]
v_mov_b32 v[vgprValuC+248], v[vgprValuC+85] // copy MI out reg to vreg[106]
v_mov_b32 v[vgprValuC+249], v[vgprValuC+93] // copy MI out reg to vreg[107]
v_mov_b32 v[vgprValuC+250], v[vgprValuC+101] // copy MI out reg to vreg[108]
v_mov_b32 v[vgprValuC+251], v[vgprValuC+109] // copy MI out reg to vreg[109]
v_mov_b32 v[vgprValuC+252], v[vgprValuC+117] // copy MI out reg to vreg[110]
v_mov_b32 v[vgprValuC+253], v[vgprValuC+125] // copy MI out reg to vreg[111]

/* apply mask, calc new C and issue writes */
v_pack_b32_f16 v138, v[vgprValuC+138], v[vgprValuC+139] // Pack with neighbor
_buffer_store_b32 v138, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v140, v[vgprValuC+140], v[vgprValuC+141] // Pack with neighbor
_buffer_store_b32 v140, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v142, v[vgprValuC+142], v[vgprValuC+143] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v142, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v144, v[vgprValuC+144], v[vgprValuC+145] // Pack with neighbor
_buffer_store_b32 v144, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v146, v[vgprValuC+146], v[vgprValuC+147] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v146, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v148, v[vgprValuC+148], v[vgprValuC+149] // Pack with neighbor
_buffer_store_b32 v148, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v150, v[vgprValuC+150], v[vgprValuC+151] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v150, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v152, v[vgprValuC+152], v[vgprValuC+153] // Pack with neighbor
_buffer_store_b32 v152, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v154, v[vgprValuC+154], v[vgprValuC+155] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v154, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v156, v[vgprValuC+156], v[vgprValuC+157] // Pack with neighbor
_buffer_store_b32 v156, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v158, v[vgprValuC+158], v[vgprValuC+159] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v158, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v160, v[vgprValuC+160], v[vgprValuC+161] // Pack with neighbor
_buffer_store_b32 v160, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v162, v[vgprValuC+162], v[vgprValuC+163] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v162, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v164, v[vgprValuC+164], v[vgprValuC+165] // Pack with neighbor
_buffer_store_b32 v164, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v166, v[vgprValuC+166], v[vgprValuC+167] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v166, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v168, v[vgprValuC+168], v[vgprValuC+169] // Pack with neighbor
_buffer_store_b32 v168, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v170, v[vgprValuC+170], v[vgprValuC+171] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v170, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v172, v[vgprValuC+172], v[vgprValuC+173] // Pack with neighbor
_buffer_store_b32 v172, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v174, v[vgprValuC+174], v[vgprValuC+175] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v174, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v176, v[vgprValuC+176], v[vgprValuC+177] // Pack with neighbor
_buffer_store_b32 v176, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v178, v[vgprValuC+178], v[vgprValuC+179] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v178, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v180, v[vgprValuC+180], v[vgprValuC+181] // Pack with neighbor
_buffer_store_b32 v180, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v182, v[vgprValuC+182], v[vgprValuC+183] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v182, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v184, v[vgprValuC+184], v[vgprValuC+185] // Pack with neighbor
_buffer_store_b32 v184, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v186, v[vgprValuC+186], v[vgprValuC+187] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v186, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v188, v[vgprValuC+188], v[vgprValuC+189] // Pack with neighbor
_buffer_store_b32 v188, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v190, v[vgprValuC+190], v[vgprValuC+191] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v190, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v192, v[vgprValuC+192], v[vgprValuC+193] // Pack with neighbor
_buffer_store_b32 v192, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v194, v[vgprValuC+194], v[vgprValuC+195] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v194, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v196, v[vgprValuC+196], v[vgprValuC+197] // Pack with neighbor
_buffer_store_b32 v196, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v198, v[vgprValuC+198], v[vgprValuC+199] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v198, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v200, v[vgprValuC+200], v[vgprValuC+201] // Pack with neighbor
_buffer_store_b32 v200, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v202, v[vgprValuC+202], v[vgprValuC+203] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 70                 // scale StrideD *= numRows(35) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v202, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v204, v[vgprValuC+204], v[vgprValuC+205] // Pack with neighbor
_buffer_store_b32 v204, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v206, v[vgprValuC+206], v[vgprValuC+207] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v206, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v208, v[vgprValuC+208], v[vgprValuC+209] // Pack with neighbor
_buffer_store_b32 v208, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v210, v[vgprValuC+210], v[vgprValuC+211] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v210, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v212, v[vgprValuC+212], v[vgprValuC+213] // Pack with neighbor
_buffer_store_b32 v212, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v214, v[vgprValuC+214], v[vgprValuC+215] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v214, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v216, v[vgprValuC+216], v[vgprValuC+217] // Pack with neighbor
_buffer_store_b32 v216, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v218, v[vgprValuC+218], v[vgprValuC+219] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v218, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v220, v[vgprValuC+220], v[vgprValuC+221] // Pack with neighbor
_buffer_store_b32 v220, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v222, v[vgprValuC+222], v[vgprValuC+223] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v222, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v224, v[vgprValuC+224], v[vgprValuC+225] // Pack with neighbor
_buffer_store_b32 v224, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v226, v[vgprValuC+226], v[vgprValuC+227] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v226, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v228, v[vgprValuC+228], v[vgprValuC+229] // Pack with neighbor
_buffer_store_b32 v228, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v234, v[vgprValuC+234], v[vgprValuC+235] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v234, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v236, v[vgprValuC+236], v[vgprValuC+237] // Pack with neighbor
_buffer_store_b32 v236, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v238, v[vgprValuC+238], v[vgprValuC+239] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v238, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v240, v[vgprValuC+240], v[vgprValuC+241] // Pack with neighbor
_buffer_store_b32 v240, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v242, v[vgprValuC+242], v[vgprValuC+243] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v242, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v244, v[vgprValuC+244], v[vgprValuC+245] // Pack with neighbor
_buffer_store_b32 v244, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v246, v[vgprValuC+246], v[vgprValuC+247] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v246, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v248, v[vgprValuC+248], v[vgprValuC+249] // Pack with neighbor
_buffer_store_b32 v248, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v250, v[vgprValuC+250], v[vgprValuC+251] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v250, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v252, v[vgprValuC+252], v[vgprValuC+253] // Pack with neighbor
_buffer_store_b32 v252, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (14,0,0,0:vw2); (14,1,0,0:vw2); (14,0,1,0:vw2); (14,1,1,0:vw2); (15,0,0,0:vw2); (15,1,0,0:vw2); (15,0,1,0:vw2); (15,1,1,0:vw2) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(14,0,0,0) */
/* (d1,vc1,d0,vc0)=(14,0,1,0) */
/* (d1,vc1,d0,vc0)=(14,1,0,0) */
/* (d1,vc1,d0,vc0)=(14,1,1,0) */
/* (d1,vc1,d0,vc0)=(15,0,0,0) */
/* (d1,vc1,d0,vc0)=(15,0,1,0) */
/* (d1,vc1,d0,vc0)=(15,1,0,0) */
/* (d1,vc1,d0,vc0)=(15,1,1,0) */
v_mov_b32 v[vgprValuC+138], v[vgprValuC+70] // copy MI out reg to vreg[112]
v_mov_b32 v[vgprValuC+139], v[vgprValuC+78] // copy MI out reg to vreg[113]
v_mov_b32 v[vgprValuC+140], v[vgprValuC+86] // copy MI out reg to vreg[114]
v_mov_b32 v[vgprValuC+141], v[vgprValuC+94] // copy MI out reg to vreg[115]
v_mov_b32 v[vgprValuC+142], v[vgprValuC+102] // copy MI out reg to vreg[116]
v_mov_b32 v[vgprValuC+143], v[vgprValuC+110] // copy MI out reg to vreg[117]
v_mov_b32 v[vgprValuC+144], v[vgprValuC+118] // copy MI out reg to vreg[118]
v_mov_b32 v[vgprValuC+145], v[vgprValuC+126] // copy MI out reg to vreg[119]
v_mov_b32 v[vgprValuC+146], v[vgprValuC+71] // copy MI out reg to vreg[120]
v_mov_b32 v[vgprValuC+147], v[vgprValuC+79] // copy MI out reg to vreg[121]
v_mov_b32 v[vgprValuC+148], v[vgprValuC+87] // copy MI out reg to vreg[122]
v_mov_b32 v[vgprValuC+149], v[vgprValuC+95] // copy MI out reg to vreg[123]
v_mov_b32 v[vgprValuC+150], v[vgprValuC+103] // copy MI out reg to vreg[124]
v_mov_b32 v[vgprValuC+151], v[vgprValuC+111] // copy MI out reg to vreg[125]
v_mov_b32 v[vgprValuC+152], v[vgprValuC+119] // copy MI out reg to vreg[126]
v_mov_b32 v[vgprValuC+153], v[vgprValuC+127] // copy MI out reg to vreg[127]

/* apply mask, calc new C and issue writes */
v_pack_b32_f16 v138, v[vgprValuC+138], v[vgprValuC+139] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v138, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v140, v[vgprValuC+140], v[vgprValuC+141] // Pack with neighbor
_buffer_store_b32 v140, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v142, v[vgprValuC+142], v[vgprValuC+143] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v142, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v144, v[vgprValuC+144], v[vgprValuC+145] // Pack with neighbor
_buffer_store_b32 v144, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v146, v[vgprValuC+146], v[vgprValuC+147] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v146, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v148, v[vgprValuC+148], v[vgprValuC+149] // Pack with neighbor
_buffer_store_b32 v148, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v150, v[vgprValuC+150], v[vgprValuC+151] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v150, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v152, v[vgprValuC+152], v[vgprValuC+153] // Pack with neighbor
_buffer_store_b32 v152, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_21                           // jump to end
label_GW_End_21:

s_endpgm                                           // Kernel End
OptNLL_End_15:


/******************************************/
/* Ord. NoLoadLoop - Begin                                      */
/******************************************/


s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //



/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:258 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:514 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:770 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1026 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1282 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1538 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1794 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2050 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2306 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2562 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2818 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3074 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3330 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3586 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3842 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:896 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1920 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2944 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3968 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:130 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:386 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:642 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:898 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1154 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1410 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1666 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1922 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2178 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2434 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2690 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2946 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3202 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3458 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3714 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3970 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:16 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB] offset:48 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+20:vgprValuB_X0_I0+20+3], v[vgprLocalReadAddrB] offset:2320 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+24:vgprValuB_X0_I0+24+3], v[vgprLocalReadAddrB] offset:2336 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+28:vgprValuB_X0_I0+28+3], v[vgprLocalReadAddrB] offset:2352 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]
v_wmma_f16_16x16x16_f16 v[8+0:15+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[8:15]
v_wmma_f16_16x16x16_f16 v[16+0:23+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[16:23]
v_wmma_f16_16x16x16_f16 v[24+0:31+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[24:31]
v_wmma_f16_16x16x16_f16 v[32+0:39+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[32:39]
v_wmma_f16_16x16x16_f16 v[40+0:47+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[40:47]
v_wmma_f16_16x16x16_f16 v[48+0:55+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[48:55]
v_wmma_f16_16x16x16_f16 v[56+0:63+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[56:63]
v_wmma_f16_16x16x16_f16 v[64+0:71+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[64:71]
v_wmma_f16_16x16x16_f16 v[72+0:79+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[72:79]
v_wmma_f16_16x16x16_f16 v[80+0:87+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[80:87]
v_wmma_f16_16x16x16_f16 v[88+0:95+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[88:95]
v_wmma_f16_16x16x16_f16 v[96+0:103+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[96:103]
v_wmma_f16_16x16x16_f16 v[104+0:111+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[104:111]
v_wmma_f16_16x16x16_f16 v[112+0:119+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[112:119]
v_wmma_f16_16x16x16_f16 v[120+0:127+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[120:127]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=64 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=8 */

PrefetchGlobalLastIterEnd_5:


/******************************************/
/* Tail Loop                              */
/******************************************/


/* local write reset offsets a */


v_and_b32 v[vgprLocalWriteAddrA], 0xf03fff, v[vgprLocalWriteAddrA] // reset to Red


/* local write reset offsets b */


v_and_b32 v[vgprLocalWriteAddrB], 0xf03fff, v[vgprLocalWriteAddrB] // reset to Red


//numIterK = (((sizeK % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterK], 15, s[sgprSizesSum+0] // s[sgprLoopCounterK] = s[sgprSizesSum+0] % 16
s_cmp_eq_u32 s[sgprLoopCounterK], 0x0              // numIterK == 0
s_cbranch_scc1 SkipTailLoopK_8                     // skip to end of tail loop b/c numIter==0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment


/* remove stagger offsets for tail loop */

s_mov_b32 s54, 3                                   // 
s_mul_hi_u32 s53, s54, s[sgprGlobalReadIncsA+0]    // 3 * GlobalReadIncs
s_mul_i32 s52, s54, s[sgprGlobalReadIncsA+0]       // 3 * GlobalReadIncs
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

s_mov_b32 s54, 3                                   // 
s_mul_hi_u32 s53, s54, s[sgprGlobalReadIncsB+0]    // 3 * GlobalReadIncs
s_mul_i32 s52, s54, s[sgprGlobalReadIncsB+0]       // 3 * GlobalReadIncs
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
_buffer_load_d16_b16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=1, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+1+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=1, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+1+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=2, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=2, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=3, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+3+0], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=3, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+3+0], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=4, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=5, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+5+0], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=5, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+5+0], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=6, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+6+0], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=6, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+6+0], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=7, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+7+0], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=7, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+7+0], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=1, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=1, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=2, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=2, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=3, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=3, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=4, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=5, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+5+0], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=5, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+5+0], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=6, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+6+0], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=6, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+6+0], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=7, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+7+0], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=7, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+7+0], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=02wait for global read

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* Done global A/B reads */




/* local write a */

_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:128 // lwoA_1_0_0_0 = (1*LSCA) + (0*LSPA)(*MT0I+PAD) = 128
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:384 // lwoA_1_0_1_0 = (1*LSCA) + (1*LSPA)(*MT0I+PAD) = 384
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:640 // lwoA_1_0_2_0 = (1*LSCA) + (2*LSPA)(*MT0I+PAD) = 640
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
_ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:896 // lwoA_1_0_3_0 = (1*LSCA) + (3*LSPA)(*MT0I+PAD) = 896


/* local write b */

_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:144 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 144
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:288 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 288
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:432 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 432
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:576 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 576
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:720 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 720
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:864 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 864
_ds_store_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1008 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1008


/* Recalc local read offsets */


s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-15wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* local read reset offsets a */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x3fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red


/* local read reset offsets b */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x3fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red


/* local read init pointers a */


/* localReadInitPointers */


/* local read init pointers b */


/* localReadInitPointers */


/* tail loop: macs */

TailLoopBeginK_6:


/* local read a */

_ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+4], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+5], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+6], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+7], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+8], v[vgprLocalReadAddrA] offset:258 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:514 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+9], v[vgprLocalReadAddrA] offset:770 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1026 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+10], v[vgprLocalReadAddrA] offset:1282 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1538 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+11], v[vgprLocalReadAddrA] offset:1794 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2050 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+12], v[vgprLocalReadAddrA] offset:2306 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2562 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+13], v[vgprLocalReadAddrA] offset:2818 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3074 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+14], v[vgprLocalReadAddrA] offset:3330 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3586 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+15], v[vgprLocalReadAddrA] offset:3842 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+16], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+17], v[vgprLocalReadAddrA] offset:896 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+18], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+19], v[vgprLocalReadAddrA] offset:1920 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+20], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+21], v[vgprLocalReadAddrA] offset:2944 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+22], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+23], v[vgprLocalReadAddrA] offset:3968 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:130 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+24], v[vgprLocalReadAddrA] offset:386 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:642 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=2 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+25], v[vgprLocalReadAddrA] offset:898 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=3 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1154 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=4 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+26], v[vgprLocalReadAddrA] offset:1410 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=5 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1666 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=6 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+27], v[vgprLocalReadAddrA] offset:1922 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=7 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2178 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=8 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+28], v[vgprLocalReadAddrA] offset:2434 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=9 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2690 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=10 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+29], v[vgprLocalReadAddrA] offset:2946 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=11 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3202 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=12 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+30], v[vgprLocalReadAddrA] offset:3458 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=13 oIdx=0 buffer=0 iui=0
_ds_load_u16 v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3714 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=14 oIdx=0 buffer=0 iui=0
_ds_load_u16_d16_hi v[vgprValuA_X0_I0+31], v[vgprLocalReadAddrA] offset:3970 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=15 oIdx=0 buffer=0 iui=0


/* local read b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:16 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB] offset:48 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+20:vgprValuB_X0_I0+20+3], v[vgprLocalReadAddrB] offset:2320 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+24:vgprValuB_X0_I0+24+3], v[vgprLocalReadAddrB] offset:2336 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+28:vgprValuB_X0_I0+28+3], v[vgprLocalReadAddrB] offset:2352 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s6, 0x1000                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s6, v[vgprLocalReadAddrA] // lrA += 4096 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s6, 0x20                                 // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s6, v[vgprLocalReadAddrB] // lrB += 32 (LSU*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read


s_sub_i32 s52, s[sgprLoopCounterK], 1              // calculate 64bit groups index
s_lshr_b32 s53, s52, 2                             // calculate 64bit groups index
s_and_b32 s52, s52, 3                              // calculate shift value
s_sub_i32 s52, 3, s52                              // calculate shift value
s_lshl_b32 s52, s52, 4                             // calculate shift value
v_cmp_eq_i32 s54, s53, 0                           // handle this 64bit group: part 1
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+0+0:vgprValuA_X0_I0+0+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0], v[vgprValuA_X0_I0+0+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+1], v[vgprValuA_X0_I0+0+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+8+0:vgprValuA_X0_I0+8+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+8+0+0], v[vgprValuA_X0_I0+8+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+0+1], v[vgprValuA_X0_I0+8+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+16+0:vgprValuA_X0_I0+16+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+16+0+0], v[vgprValuA_X0_I0+16+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+0+1], v[vgprValuA_X0_I0+16+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+24+0:vgprValuA_X0_I0+24+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+24+0+0], v[vgprValuA_X0_I0+24+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+0+1], v[vgprValuA_X0_I0+24+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+0+0:vgprValuB_X0_I0+0+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+1], v[vgprValuB_X0_I0+0+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+8+0:vgprValuB_X0_I0+8+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+8+0+0], v[vgprValuB_X0_I0+8+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+0+1], v[vgprValuB_X0_I0+8+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+16+0:vgprValuB_X0_I0+16+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+16+0+0], v[vgprValuB_X0_I0+16+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+0+1], v[vgprValuB_X0_I0+16+0+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+24+0:vgprValuB_X0_I0+24+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+24+0+0], v[vgprValuB_X0_I0+24+0+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+0+1], v[vgprValuB_X0_I0+24+0+1], v235, s54 // shift if in this 64b group
v_cmp_eq_i32 s54, s53, 1                           // handle this 64bit group: part 1
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+0+2:vgprValuA_X0_I0+0+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+8+2:vgprValuA_X0_I0+8+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+8+2+0], v[vgprValuA_X0_I0+8+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+2+1], v[vgprValuA_X0_I0+8+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+16+2:vgprValuA_X0_I0+16+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+16+2+0], v[vgprValuA_X0_I0+16+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+2+1], v[vgprValuA_X0_I0+16+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+24+2:vgprValuA_X0_I0+24+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+24+2+0], v[vgprValuA_X0_I0+24+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+2+1], v[vgprValuA_X0_I0+24+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+0+2:vgprValuB_X0_I0+0+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+8+2:vgprValuB_X0_I0+8+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+8+2+0], v[vgprValuB_X0_I0+8+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+2+1], v[vgprValuB_X0_I0+8+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+16+2:vgprValuB_X0_I0+16+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+16+2+0], v[vgprValuB_X0_I0+16+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+2+1], v[vgprValuB_X0_I0+16+2+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+24+2:vgprValuB_X0_I0+24+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+24+2+0], v[vgprValuB_X0_I0+24+2+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+2+1], v[vgprValuB_X0_I0+24+2+1], v235, s54 // shift if in this 64b group
v_cmp_lt_i32 s54, s53, 1                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+2+0], v[vgprValuA_X0_I0+8+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+2+1], v[vgprValuA_X0_I0+8+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+2+0], v[vgprValuA_X0_I0+16+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+2+1], v[vgprValuA_X0_I0+16+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+2+0], v[vgprValuA_X0_I0+24+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+2+1], v[vgprValuA_X0_I0+24+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+2+0], v[vgprValuB_X0_I0+8+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+2+1], v[vgprValuB_X0_I0+8+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+2+0], v[vgprValuB_X0_I0+16+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+2+1], v[vgprValuB_X0_I0+16+2+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+2+0], v[vgprValuB_X0_I0+24+2+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+2+1], v[vgprValuB_X0_I0+24+2+1], 0, s54 // shift if in this 64b group
v_cmp_eq_i32 s54, s53, 2                           // handle this 64bit group: part 1
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+0+4:vgprValuA_X0_I0+0+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+8+4:vgprValuA_X0_I0+8+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+8+4+0], v[vgprValuA_X0_I0+8+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+4+1], v[vgprValuA_X0_I0+8+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+16+4:vgprValuA_X0_I0+16+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+16+4+0], v[vgprValuA_X0_I0+16+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+4+1], v[vgprValuA_X0_I0+16+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+24+4:vgprValuA_X0_I0+24+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+24+4+0], v[vgprValuA_X0_I0+24+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+4+1], v[vgprValuA_X0_I0+24+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+0+4:vgprValuB_X0_I0+0+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+8+4:vgprValuB_X0_I0+8+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+8+4+0], v[vgprValuB_X0_I0+8+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+4+1], v[vgprValuB_X0_I0+8+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+16+4:vgprValuB_X0_I0+16+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+16+4+0], v[vgprValuB_X0_I0+16+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+4+1], v[vgprValuB_X0_I0+16+4+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+24+4:vgprValuB_X0_I0+24+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+24+4+0], v[vgprValuB_X0_I0+24+4+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+4+1], v[vgprValuB_X0_I0+24+4+1], v235, s54 // shift if in this 64b group
v_cmp_lt_i32 s54, s53, 2                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+4+0], v[vgprValuA_X0_I0+8+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+4+1], v[vgprValuA_X0_I0+8+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+4+0], v[vgprValuA_X0_I0+16+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+4+1], v[vgprValuA_X0_I0+16+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+4+0], v[vgprValuA_X0_I0+24+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+4+1], v[vgprValuA_X0_I0+24+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+4+0], v[vgprValuB_X0_I0+8+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+4+1], v[vgprValuB_X0_I0+8+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+4+0], v[vgprValuB_X0_I0+16+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+4+1], v[vgprValuB_X0_I0+16+4+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+4+0], v[vgprValuB_X0_I0+24+4+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+4+1], v[vgprValuB_X0_I0+24+4+1], 0, s54 // shift if in this 64b group
v_cmp_eq_i32 s54, s53, 3                           // handle this 64bit group: part 1
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+0+6:vgprValuA_X0_I0+0+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+8+6:vgprValuA_X0_I0+8+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+8+6+0], v[vgprValuA_X0_I0+8+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+6+1], v[vgprValuA_X0_I0+8+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+16+6:vgprValuA_X0_I0+16+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+16+6+0], v[vgprValuA_X0_I0+16+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+6+1], v[vgprValuA_X0_I0+16+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuA_X0_I0+24+6:vgprValuA_X0_I0+24+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+24+6+0], v[vgprValuA_X0_I0+24+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+6+1], v[vgprValuA_X0_I0+24+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+0+6:vgprValuB_X0_I0+0+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+8+6:vgprValuB_X0_I0+8+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+8+6+0], v[vgprValuB_X0_I0+8+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+6+1], v[vgprValuB_X0_I0+8+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+16+6:vgprValuB_X0_I0+16+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+16+6+0], v[vgprValuB_X0_I0+16+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+6+1], v[vgprValuB_X0_I0+16+6+1], v235, s54 // shift if in this 64b group
v_lshlrev_b64 v[234:235], s52, v[vgprValuB_X0_I0+24+6:vgprValuB_X0_I0+24+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+24+6+0], v[vgprValuB_X0_I0+24+6+0], v234, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+6+1], v[vgprValuB_X0_I0+24+6+1], v235, s54 // shift if in this 64b group
v_cmp_lt_i32 s54, s53, 3                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+6+0], v[vgprValuA_X0_I0+8+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+8+6+1], v[vgprValuA_X0_I0+8+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+6+0], v[vgprValuA_X0_I0+16+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+16+6+1], v[vgprValuA_X0_I0+16+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+6+0], v[vgprValuA_X0_I0+24+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+24+6+1], v[vgprValuA_X0_I0+24+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+6+0], v[vgprValuB_X0_I0+8+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+8+6+1], v[vgprValuB_X0_I0+8+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+6+0], v[vgprValuB_X0_I0+16+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+16+6+1], v[vgprValuB_X0_I0+16+6+1], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+6+0], v[vgprValuB_X0_I0+24+6+0], 0, s54 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+24+6+1], v[vgprValuB_X0_I0+24+6+1], 0, s54 // shift if in this 64b group
s_nop 1
v_wmma_f16_16x16x16_f16 v[0+0:7+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[0:7]
v_wmma_f16_16x16x16_f16 v[8+0:15+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[8:15]
v_wmma_f16_16x16x16_f16 v[16+0:23+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[16:23]
v_wmma_f16_16x16x16_f16 v[24+0:31+0], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[24:31]
v_wmma_f16_16x16x16_f16 v[32+0:39+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[32:39]
v_wmma_f16_16x16x16_f16 v[40+0:47+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[40:47]
v_wmma_f16_16x16x16_f16 v[48+0:55+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[48:55]
v_wmma_f16_16x16x16_f16 v[56+0:63+0], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[56:63]
v_wmma_f16_16x16x16_f16 v[64+0:71+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[64:71]
v_wmma_f16_16x16x16_f16 v[72+0:79+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[72:79]
v_wmma_f16_16x16x16_f16 v[80+0:87+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[80:87]
v_wmma_f16_16x16x16_f16 v[88+0:95+0], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[88:95]
v_wmma_f16_16x16x16_f16 v[96+0:103+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+7], v[96:103]
v_wmma_f16_16x16x16_f16 v[104+0:111+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+7], v[104:111]
v_wmma_f16_16x16x16_f16 v[112+0:119+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+16+0+0:vgprValuA_X0_I0+16+0+0+7], v[112:119]
v_wmma_f16_16x16x16_f16 v[120+0:127+0], v[vgprValuB_X0_I0+24+0+0:vgprValuB_X0_I0+24+0+0+7], v[vgprValuA_X0_I0+24+0+0:vgprValuA_X0_I0+24+0+0+7], v[120:127]


/* closeLoop loopK finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterK], s[sgprLoopCounterK], 0x10 // dec counterK (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x10 // inc counterK
s_cmp_le_i32 s[sgprLoopCounterK], 0x0              // counterK<=0
s_cbranch_scc0 TailLoopBeginK_6                    // restart LoopK
TailLoopEndK_7:

SkipTailLoopK_8:

Summation_End_28:
/* endSummation: add vgpr [130...230) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set GlobalReadIncsB, UNDEF

/* Mapping of Acc register -> C Vgpr register */

/* Multiply MI out register with Alpha -> C Vgpr register */


/* shift vector components d0 */

v_mov_b32 v131, s[sgprWorkGroup0]                  // 
v_mul_i32_i24 v131, -0x80, v131                    // wg*MT
_v_add_co_u32 v131, vcc_lo, s[sgprSizesFree+0], v131 // wgMT = Size - wg*MT
v_mov_b32 v132, 0x80                               // MT
v_min_u32 v131, v132, v131                         // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v130, 5, v[vgprSerial]               // v130 = v[vgprSerial] / 32
v_and_b32 v133, 1, v130                            // v133 = v130 % 2
v_lshrrev_b32 v130, 5, v131                        // v130 = v131 / 32
v_and_b32 v134, 1, v130                            // v134 = v130 % 2
v_cmp_eq_u32 s6, v134, v133                        // wave_id == block_belong_to_wave?
v_cndmask_b32 v131, v132, v131, s6                 // wgMT = (wgMT < MT) ? wgMT : MT

/* mbReg: which mb block need to shift, mb(matrixInstCoal(16) * VectorWidth(2)) */
v_lshrrev_b32 v132, 5, v131                        // v132 = v131 / 32
v_lshlrev_b32 v134, 0x0, v133                      // v134 = v133 * 1
_v_sub_u32 v132, v132, v134                        // 

/* gbReg: glvw block id */
v_lshrrev_b32 v134, 1, v131                        // v134 = v131 / 2

/* tgbReg: glvw block id */
v_lshrrev_b32 v130, 0, v[vgprSerial]               // v130 = v[vgprSerial] / 1
v_and_b32 v135, 15, v130                           // v135 = v130 % 16
v_lshlrev_b32 v135, 0x1, v135                      // v135 = v135 * 2
v_lshrrev_b32 v135, 1, v135                        // v135 = v135 / 2
v_lshlrev_b32 v133, 0x4, v133                      // v133 = v133 * 16
_v_add_co_u32 v135, vcc_lo, v133, v135             // tgbReg = (tid_coal * continOut) / GLVW
_v_sub_u32 v134, v134, v135                        // 

/* vwReg: glvw in which vw block? */
v_and_b32 v133, 1, v131                            // permute register between threads
v_lshrrev_b32 v133, 1, v133                        // permute register between threads

/* rReg : reminder of M_size % GlobalLoadVectorWidth */
v_and_b32 v135, 1, v131                            // v135 = v131 % 2
v_cmp_eq_u32 vcc_lo, v135, 0x1                     // wgMT%VW == 1
s_cbranch_vccnz label_0029                         // branch to shift d0 r=1
s_branch label_0034                                // no shifting

/******************************************/
/* shift d0 r=1                           */
/******************************************/
label_0029:
v_cmp_eq_u32 vcc_lo, v132, 0x0                     // 
s_cbranch_vccnz label_0030                         // branch to shift d0 r1 mb0
v_cmp_eq_u32 vcc_lo, v132, 0x2                     // 
s_cbranch_vccnz label_0032                         // branch to shift d0 r1 mb1

/******************************************/
/* shift d0 r=1 mb=0                      */
/******************************************/
label_0030: // r1 mb0 
v_cmp_eq_u32 vcc_lo, v133, 0x0                     // 
s_cbranch_vccnz label_0031                         // branch to shift d0 r1 mb0 vw0

/******************************************/
/* shift d0 r=1 mb=1                      */
/******************************************/
label_0032: // r1 mb1 
v_cmp_eq_u32 vcc_lo, v133, 0x0                     // 
s_cbranch_vccnz label_0033                         // branch to shift d0 r1 mb1 vw0

/******************************************/
/* shift d0 r=1 mb=0 vw0                  */
/******************************************/
label_0031: // r1 mb0 vw0 
s_mov_b32 s6, 0                                    // 
_v_cmpx_eq_u32 s6, v134, s6                        // is thread in edge glvw region
v_and_b32 v130, 31, v[vgprSerial]                  // permute register between threads
v_lshlrev_b32 v130, 2, v130                        // permute register between threads
v_mov_b32 v0, v8                                   // glvw 1 mb 0 tt1 0 r 0
v_mov_b32 v32, v40                                 // glvw 1 mb 0 tt1 1 r 0
v_mov_b32 v1, v9                                   // glvw 1 mb 0 tt1 2 r 0
v_mov_b32 v33, v41                                 // glvw 1 mb 0 tt1 3 r 0
v_mov_b32 v2, v10                                  // glvw 1 mb 0 tt1 4 r 0
v_mov_b32 v34, v42                                 // glvw 1 mb 0 tt1 5 r 0
v_mov_b32 v3, v11                                  // glvw 1 mb 0 tt1 6 r 0
v_mov_b32 v35, v43                                 // glvw 1 mb 0 tt1 7 r 0
v_mov_b32 v4, v12                                  // glvw 1 mb 0 tt1 8 r 0
v_mov_b32 v36, v44                                 // glvw 1 mb 0 tt1 9 r 0
v_mov_b32 v5, v13                                  // glvw 1 mb 0 tt1 10 r 0
v_mov_b32 v37, v45                                 // glvw 1 mb 0 tt1 11 r 0
v_mov_b32 v6, v14                                  // glvw 1 mb 0 tt1 12 r 0
v_mov_b32 v38, v46                                 // glvw 1 mb 0 tt1 13 r 0
v_mov_b32 v7, v15                                  // glvw 1 mb 0 tt1 14 r 0
v_mov_b32 v39, v47                                 // glvw 1 mb 0 tt1 15 r 0
v_mov_b32 v64, v72                                 // glvw 1 mb 0 tt1 16 r 0
v_mov_b32 v96, v104                                // glvw 1 mb 0 tt1 17 r 0
v_mov_b32 v65, v73                                 // glvw 1 mb 0 tt1 18 r 0
v_mov_b32 v97, v105                                // glvw 1 mb 0 tt1 19 r 0
v_mov_b32 v66, v74                                 // glvw 1 mb 0 tt1 20 r 0
v_mov_b32 v98, v106                                // glvw 1 mb 0 tt1 21 r 0
v_mov_b32 v67, v75                                 // glvw 1 mb 0 tt1 22 r 0
v_mov_b32 v99, v107                                // glvw 1 mb 0 tt1 23 r 0
v_mov_b32 v68, v76                                 // glvw 1 mb 0 tt1 24 r 0
v_mov_b32 v100, v108                               // glvw 1 mb 0 tt1 25 r 0
v_mov_b32 v69, v77                                 // glvw 1 mb 0 tt1 26 r 0
v_mov_b32 v101, v109                               // glvw 1 mb 0 tt1 27 r 0
v_mov_b32 v70, v78                                 // glvw 1 mb 0 tt1 28 r 0
v_mov_b32 v102, v110                               // glvw 1 mb 0 tt1 29 r 0
v_mov_b32 v71, v79                                 // glvw 1 mb 0 tt1 30 r 0
v_mov_b32 v103, v111                               // glvw 1 mb 0 tt1 31 r 0
s_mov_b32 s6, 0xFFFFFFFF                           // to restore all threads active
s_or_saveexec_b32 vcc_lo, s6                       // all threads active
s_branch label_0034                                // done shifting


/******************************************/
/* shift d0 r=1 mb=1 vw0                  */
/******************************************/
label_0033: // r1 mb1 vw0 
s_mov_b32 s6, 32                                   // 
_v_cmpx_eq_u32 s6, v134, s6                        // is thread in edge glvw region
v_and_b32 v130, 31, v[vgprSerial]                  // permute register between threads
v_lshlrev_b32 v130, 2, v130                        // permute register between threads
v_mov_b32 v16, v24                                 // glvw 1 mb 1 tt1 0 r 0
v_mov_b32 v48, v56                                 // glvw 1 mb 1 tt1 1 r 0
v_mov_b32 v17, v25                                 // glvw 1 mb 1 tt1 2 r 0
v_mov_b32 v49, v57                                 // glvw 1 mb 1 tt1 3 r 0
v_mov_b32 v18, v26                                 // glvw 1 mb 1 tt1 4 r 0
v_mov_b32 v50, v58                                 // glvw 1 mb 1 tt1 5 r 0
v_mov_b32 v19, v27                                 // glvw 1 mb 1 tt1 6 r 0
v_mov_b32 v51, v59                                 // glvw 1 mb 1 tt1 7 r 0
v_mov_b32 v20, v28                                 // glvw 1 mb 1 tt1 8 r 0
v_mov_b32 v52, v60                                 // glvw 1 mb 1 tt1 9 r 0
v_mov_b32 v21, v29                                 // glvw 1 mb 1 tt1 10 r 0
v_mov_b32 v53, v61                                 // glvw 1 mb 1 tt1 11 r 0
v_mov_b32 v22, v30                                 // glvw 1 mb 1 tt1 12 r 0
v_mov_b32 v54, v62                                 // glvw 1 mb 1 tt1 13 r 0
v_mov_b32 v23, v31                                 // glvw 1 mb 1 tt1 14 r 0
v_mov_b32 v55, v63                                 // glvw 1 mb 1 tt1 15 r 0
v_mov_b32 v80, v88                                 // glvw 1 mb 1 tt1 16 r 0
v_mov_b32 v112, v120                               // glvw 1 mb 1 tt1 17 r 0
v_mov_b32 v81, v89                                 // glvw 1 mb 1 tt1 18 r 0
v_mov_b32 v113, v121                               // glvw 1 mb 1 tt1 19 r 0
v_mov_b32 v82, v90                                 // glvw 1 mb 1 tt1 20 r 0
v_mov_b32 v114, v122                               // glvw 1 mb 1 tt1 21 r 0
v_mov_b32 v83, v91                                 // glvw 1 mb 1 tt1 22 r 0
v_mov_b32 v115, v123                               // glvw 1 mb 1 tt1 23 r 0
v_mov_b32 v84, v92                                 // glvw 1 mb 1 tt1 24 r 0
v_mov_b32 v116, v124                               // glvw 1 mb 1 tt1 25 r 0
v_mov_b32 v85, v93                                 // glvw 1 mb 1 tt1 26 r 0
v_mov_b32 v117, v125                               // glvw 1 mb 1 tt1 27 r 0
v_mov_b32 v86, v94                                 // glvw 1 mb 1 tt1 28 r 0
v_mov_b32 v118, v126                               // glvw 1 mb 1 tt1 29 r 0
v_mov_b32 v87, v95                                 // glvw 1 mb 1 tt1 30 r 0
v_mov_b32 v119, v127                               // glvw 1 mb 1 tt1 31 r 0
s_mov_b32 s6, 0xFFFFFFFF                           // to restore all threads active
s_or_saveexec_b32 vcc_lo, s6                       // all threads active
s_branch label_0034                                // done shifting

label_0034: // end shift0



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v134, 5, v[vgprSerial]               // v134 = v[vgprSerial] / 32
v_and_b32 v131, 31, v[vgprSerial]                  // v131 = v[vgprSerial] % 32
v_lshrrev_b32 v131, 4, v131                        // v131 = v131 / 16
                                                   // thread0 * continuous_output (multiplier is 1, do nothing)
v_lshrrev_b32 v135, 1, v134                        // v135 = v134 / 2
v_mul_lo_u32 v135, 0x10, v135                      // wave coordination offset 1
_v_add_lshl_u32 v131, v135, v131, 1                // coordination 1 = vwb *(wave_id1 + tid1)
v_mul_lo_u32 v132, v131, s[sgprStrideC1J]          //  offset 1
v_mul_lo_u32 v133, v131, s[sgprStrideD1J]          //  offset 1
v_and_b32 v135, 1, v134                            // v135 = v134 % 2
v_mul_lo_u32 v135, 0x10, v135                      // wave coordination offset 0
v_and_b32 v130, 15, v[vgprSerial]                  // v130 = v[vgprSerial] % 16
_v_add_lshl_u32 v130, v135, v130, 1                // coordination 0 = vwa *(wave_id0 + tid0)
s_mul_i32 s6, 128, s[sgprWorkGroup0]               // wgp0 * MT0
_v_add_u32 v130, s6, v130                          // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s6, 128, s[sgprWorkGroup1]               // wgp1 * MT1
_v_add_u32 v131, s6, v131                          // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1


/* not-LocalSplitU: global write */

s_and_b32 s48, 127, s[sgprSizeI]                   // s48 = s[sgprSizeI] % 128
s_add_u32 s49, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s49                // wg0 >= nwg0-1 ?
s_cselect_b32 s48, s48, 0                          // set rMT0
s_cmpk_gt_u32 s48, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_44                         // jump if edges required
s_and_b32 s48, 127, s[sgprSizeJ]                   // s48 = s[sgprSizeJ] % 128
s_add_u32 s49, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s49                // wg1 >= nwg1-1
s_cselect_b32 s48, s48, 0                          // set rMT1
s_cmpk_gt_u32 s48, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_44                         // jump if edges required
GW_B0_E0_41:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=56 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw2); (0,1,0,0:vw2); (0,0,1,0:vw2); (0,1,1,0:vw2); (1,0,0,0:vw2); (1,1,0,0:vw2); (1,0,1,0:vw2); (1,1,1,0:vw2); (2,0,0,0:vw2); (2,1,0,0:vw2); (2,0,1,0:vw2); (2,1,1,0:vw2); (3,0,0,0:vw2); (3,1,0,0:vw2); (3,0,1,0:vw2); (3,1,1,0:vw2); (4,0,0,0:vw2); (4,1,0,0:vw2); (4,0,1,0:vw2); (4,1,1,0:vw2); (5,0,0,0:vw2); (5,1,0,0:vw2); (5,0,1,0:vw2); (5,1,1,0:vw2); (6,0,0,0:vw2); (6,1,0,0:vw2); (6,0,1,0:vw2); (6,1,1,0:vw2); (7,0,0,0:vw2); (7,1,0,0:vw2); (7,0,1,0:vw2); (7,1,1,0:vw2); (8,0,0,0:vw2); (8,1,0,0:vw2); (8,0,1,0:vw2); (8,1,1,0:vw2); (9,0,0,0:vw2); (9,1,0,0:vw2); (9,0,1,0:vw2); (9,1,1,0:vw2); (10,0,0,0:vw2); (10,1,0,0:vw2); (10,0,1,0:vw2); (10,1,1,0:vw2); (11,0,0,0:vw2); (11,1,0,0:vw2); (11,0,1,0:vw2); (11,1,1,0:vw2); (12,0,0,0:vw2); (12,1,0,0:vw2); (12,0,1,0:vw2); (12,1,1,0:vw2); (13,0,0,0:vw2); (13,1,0,0:vw2); (13,0,1,0:vw2); (13,1,1,0:vw2) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
/* (d1,vc1,d0,vc0)=(2,0,1,0) */
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
/* (d1,vc1,d0,vc0)=(2,1,1,0) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
/* (d1,vc1,d0,vc0)=(3,0,1,0) */
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
/* (d1,vc1,d0,vc0)=(3,1,1,0) */
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
/* (d1,vc1,d0,vc0)=(4,0,1,0) */
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
/* (d1,vc1,d0,vc0)=(4,1,1,0) */
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
/* (d1,vc1,d0,vc0)=(5,0,1,0) */
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
/* (d1,vc1,d0,vc0)=(5,1,1,0) */
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
/* (d1,vc1,d0,vc0)=(6,0,1,0) */
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
/* (d1,vc1,d0,vc0)=(6,1,1,0) */
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
/* (d1,vc1,d0,vc0)=(7,0,1,0) */
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
/* (d1,vc1,d0,vc0)=(7,1,1,0) */
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
/* (d1,vc1,d0,vc0)=(8,0,1,0) */
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
/* (d1,vc1,d0,vc0)=(8,1,1,0) */
/* (d1,vc1,d0,vc0)=(9,0,0,0) */
/* (d1,vc1,d0,vc0)=(9,0,1,0) */
/* (d1,vc1,d0,vc0)=(9,1,0,0) */
/* (d1,vc1,d0,vc0)=(9,1,1,0) */
/* (d1,vc1,d0,vc0)=(10,0,0,0) */
/* (d1,vc1,d0,vc0)=(10,0,1,0) */
/* (d1,vc1,d0,vc0)=(10,1,0,0) */
/* (d1,vc1,d0,vc0)=(10,1,1,0) */
/* (d1,vc1,d0,vc0)=(11,0,0,0) */
/* (d1,vc1,d0,vc0)=(11,0,1,0) */
/* (d1,vc1,d0,vc0)=(11,1,0,0) */
/* (d1,vc1,d0,vc0)=(11,1,1,0) */
/* (d1,vc1,d0,vc0)=(12,0,0,0) */
/* (d1,vc1,d0,vc0)=(12,0,1,0) */
/* (d1,vc1,d0,vc0)=(12,1,0,0) */
/* (d1,vc1,d0,vc0)=(12,1,1,0) */
/* (d1,vc1,d0,vc0)=(13,0,0,0) */
/* (d1,vc1,d0,vc0)=(13,0,1,0) */
/* (d1,vc1,d0,vc0)=(13,1,0,0) */
/* (d1,vc1,d0,vc0)=(13,1,1,0) */
_v_add_lshl_u32 v136, v133, v130, 0x1              // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=130, coord0Vgpr=130

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (1, 0, 0, 0), (1, 1, 0, 0), (1, 0, 1, 0), (1, 1, 1, 0), (2, 0, 0, 0), (2, 1, 0, 0), (2, 0, 1, 0), (2, 1, 1, 0), (3, 0, 0, 0), (3, 1, 0, 0), (3, 0, 1, 0), (3, 1, 1, 0), (4, 0, 0, 0), (4, 1, 0, 0), (4, 0, 1, 0), (4, 1, 1, 0), (5, 0, 0, 0), (5, 1, 0, 0), (5, 0, 1, 0), (5, 1, 1, 0), (6, 0, 0, 0), (6, 1, 0, 0), (6, 0, 1, 0), (6, 1, 1, 0), (7, 0, 0, 0), (7, 1, 0, 0), (7, 0, 1, 0), (7, 1, 1, 0), (8, 0, 0, 0), (8, 1, 0, 0), (8, 0, 1, 0), (8, 1, 1, 0), (9, 0, 0, 0), (9, 1, 0, 0), (9, 0, 1, 0), (9, 1, 1, 0), (10, 0, 0, 0), (10, 1, 0, 0), (10, 0, 1, 0), (10, 1, 1, 0), (11, 0, 0, 0), (11, 1, 0, 0), (11, 0, 1, 0), (11, 1, 1, 0), (12, 0, 0, 0), (12, 1, 0, 0), (12, 0, 1, 0), (12, 1, 1, 0), (13, 0, 0, 0), (13, 1, 0, 0), (13, 0, 1, 0), (13, 1, 1, 0)] */
v_pk_mul_f16 v[vgprValuC+138], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+139], s[sgprAlpha], v[vgprValuC+8] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+140], s[sgprAlpha], v[vgprValuC+16] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+141], s[sgprAlpha], v[vgprValuC+24] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+142], s[sgprAlpha], v[vgprValuC+32] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+143], s[sgprAlpha], v[vgprValuC+40] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+144], s[sgprAlpha], v[vgprValuC+48] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+145], s[sgprAlpha], v[vgprValuC+56] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+146], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+147], s[sgprAlpha], v[vgprValuC+9] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+148], s[sgprAlpha], v[vgprValuC+17] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+149], s[sgprAlpha], v[vgprValuC+25] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+150], s[sgprAlpha], v[vgprValuC+33] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+151], s[sgprAlpha], v[vgprValuC+41] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+152], s[sgprAlpha], v[vgprValuC+49] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+153], s[sgprAlpha], v[vgprValuC+57] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+154], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+155], s[sgprAlpha], v[vgprValuC+10] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+156], s[sgprAlpha], v[vgprValuC+18] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+157], s[sgprAlpha], v[vgprValuC+26] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+158], s[sgprAlpha], v[vgprValuC+34] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+159], s[sgprAlpha], v[vgprValuC+42] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+160], s[sgprAlpha], v[vgprValuC+50] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+161], s[sgprAlpha], v[vgprValuC+58] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+162], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+163], s[sgprAlpha], v[vgprValuC+11] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+164], s[sgprAlpha], v[vgprValuC+19] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+165], s[sgprAlpha], v[vgprValuC+27] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+166], s[sgprAlpha], v[vgprValuC+35] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+167], s[sgprAlpha], v[vgprValuC+43] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+168], s[sgprAlpha], v[vgprValuC+51] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+169], s[sgprAlpha], v[vgprValuC+59] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+170], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+171], s[sgprAlpha], v[vgprValuC+12] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+172], s[sgprAlpha], v[vgprValuC+20] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+173], s[sgprAlpha], v[vgprValuC+28] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+174], s[sgprAlpha], v[vgprValuC+36] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+175], s[sgprAlpha], v[vgprValuC+44] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+176], s[sgprAlpha], v[vgprValuC+52] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+177], s[sgprAlpha], v[vgprValuC+60] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+178], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+179], s[sgprAlpha], v[vgprValuC+13] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+180], s[sgprAlpha], v[vgprValuC+21] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+181], s[sgprAlpha], v[vgprValuC+29] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+182], s[sgprAlpha], v[vgprValuC+37] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+183], s[sgprAlpha], v[vgprValuC+45] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+184], s[sgprAlpha], v[vgprValuC+53] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+185], s[sgprAlpha], v[vgprValuC+61] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+186], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+187], s[sgprAlpha], v[vgprValuC+14] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+188], s[sgprAlpha], v[vgprValuC+22] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+189], s[sgprAlpha], v[vgprValuC+30] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+190], s[sgprAlpha], v[vgprValuC+38] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+191], s[sgprAlpha], v[vgprValuC+46] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+192], s[sgprAlpha], v[vgprValuC+54] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+193], s[sgprAlpha], v[vgprValuC+62] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+194], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+195], s[sgprAlpha], v[vgprValuC+15] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+196], s[sgprAlpha], v[vgprValuC+23] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+197], s[sgprAlpha], v[vgprValuC+31] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+198], s[sgprAlpha], v[vgprValuC+39] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+199], s[sgprAlpha], v[vgprValuC+47] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+200], s[sgprAlpha], v[vgprValuC+55] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+201], s[sgprAlpha], v[vgprValuC+63] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+202], s[sgprAlpha], v[vgprValuC+64] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+203], s[sgprAlpha], v[vgprValuC+72] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+204], s[sgprAlpha], v[vgprValuC+80] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+205], s[sgprAlpha], v[vgprValuC+88] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+206], s[sgprAlpha], v[vgprValuC+96] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+207], s[sgprAlpha], v[vgprValuC+104] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+208], s[sgprAlpha], v[vgprValuC+112] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+209], s[sgprAlpha], v[vgprValuC+120] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+210], s[sgprAlpha], v[vgprValuC+65] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+211], s[sgprAlpha], v[vgprValuC+73] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+212], s[sgprAlpha], v[vgprValuC+81] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+213], s[sgprAlpha], v[vgprValuC+89] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+214], s[sgprAlpha], v[vgprValuC+97] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+215], s[sgprAlpha], v[vgprValuC+105] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+216], s[sgprAlpha], v[vgprValuC+113] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+217], s[sgprAlpha], v[vgprValuC+121] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+218], s[sgprAlpha], v[vgprValuC+66] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+219], s[sgprAlpha], v[vgprValuC+74] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+220], s[sgprAlpha], v[vgprValuC+82] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+221], s[sgprAlpha], v[vgprValuC+90] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+222], s[sgprAlpha], v[vgprValuC+98] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+223], s[sgprAlpha], v[vgprValuC+106] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+224], s[sgprAlpha], v[vgprValuC+114] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+225], s[sgprAlpha], v[vgprValuC+122] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+226], s[sgprAlpha], v[vgprValuC+67] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+227], s[sgprAlpha], v[vgprValuC+75] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+228], s[sgprAlpha], v[vgprValuC+83] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+229], s[sgprAlpha], v[vgprValuC+91] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+234], s[sgprAlpha], v[vgprValuC+99] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+235], s[sgprAlpha], v[vgprValuC+107] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+236], s[sgprAlpha], v[vgprValuC+115] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+237], s[sgprAlpha], v[vgprValuC+123] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+238], s[sgprAlpha], v[vgprValuC+68] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+239], s[sgprAlpha], v[vgprValuC+76] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+240], s[sgprAlpha], v[vgprValuC+84] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+241], s[sgprAlpha], v[vgprValuC+92] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+242], s[sgprAlpha], v[vgprValuC+100] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+243], s[sgprAlpha], v[vgprValuC+108] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+244], s[sgprAlpha], v[vgprValuC+116] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+245], s[sgprAlpha], v[vgprValuC+124] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+246], s[sgprAlpha], v[vgprValuC+69] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+247], s[sgprAlpha], v[vgprValuC+77] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+248], s[sgprAlpha], v[vgprValuC+85] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+249], s[sgprAlpha], v[vgprValuC+93] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+250], s[sgprAlpha], v[vgprValuC+101] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+251], s[sgprAlpha], v[vgprValuC+109] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+252], s[sgprAlpha], v[vgprValuC+117] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+253], s[sgprAlpha], v[vgprValuC+125] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
v_pack_b32_f16 v138, v[vgprValuC+138], v[vgprValuC+139] // Pack with neighbor
_buffer_store_b32 v138, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v140, v[vgprValuC+140], v[vgprValuC+141] // Pack with neighbor
_buffer_store_b32 v140, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v142, v[vgprValuC+142], v[vgprValuC+143] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v142, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v144, v[vgprValuC+144], v[vgprValuC+145] // Pack with neighbor
_buffer_store_b32 v144, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v146, v[vgprValuC+146], v[vgprValuC+147] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v146, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v148, v[vgprValuC+148], v[vgprValuC+149] // Pack with neighbor
_buffer_store_b32 v148, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v150, v[vgprValuC+150], v[vgprValuC+151] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v150, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v152, v[vgprValuC+152], v[vgprValuC+153] // Pack with neighbor
_buffer_store_b32 v152, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v154, v[vgprValuC+154], v[vgprValuC+155] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v154, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v156, v[vgprValuC+156], v[vgprValuC+157] // Pack with neighbor
_buffer_store_b32 v156, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v158, v[vgprValuC+158], v[vgprValuC+159] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v158, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v160, v[vgprValuC+160], v[vgprValuC+161] // Pack with neighbor
_buffer_store_b32 v160, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v162, v[vgprValuC+162], v[vgprValuC+163] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v162, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v164, v[vgprValuC+164], v[vgprValuC+165] // Pack with neighbor
_buffer_store_b32 v164, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v166, v[vgprValuC+166], v[vgprValuC+167] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v166, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v168, v[vgprValuC+168], v[vgprValuC+169] // Pack with neighbor
_buffer_store_b32 v168, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v170, v[vgprValuC+170], v[vgprValuC+171] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v170, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v172, v[vgprValuC+172], v[vgprValuC+173] // Pack with neighbor
_buffer_store_b32 v172, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v174, v[vgprValuC+174], v[vgprValuC+175] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v174, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v176, v[vgprValuC+176], v[vgprValuC+177] // Pack with neighbor
_buffer_store_b32 v176, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v178, v[vgprValuC+178], v[vgprValuC+179] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v178, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v180, v[vgprValuC+180], v[vgprValuC+181] // Pack with neighbor
_buffer_store_b32 v180, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v182, v[vgprValuC+182], v[vgprValuC+183] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v182, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v184, v[vgprValuC+184], v[vgprValuC+185] // Pack with neighbor
_buffer_store_b32 v184, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v186, v[vgprValuC+186], v[vgprValuC+187] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v186, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v188, v[vgprValuC+188], v[vgprValuC+189] // Pack with neighbor
_buffer_store_b32 v188, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v190, v[vgprValuC+190], v[vgprValuC+191] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v190, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v192, v[vgprValuC+192], v[vgprValuC+193] // Pack with neighbor
_buffer_store_b32 v192, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v194, v[vgprValuC+194], v[vgprValuC+195] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v194, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v196, v[vgprValuC+196], v[vgprValuC+197] // Pack with neighbor
_buffer_store_b32 v196, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v198, v[vgprValuC+198], v[vgprValuC+199] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v198, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v200, v[vgprValuC+200], v[vgprValuC+201] // Pack with neighbor
_buffer_store_b32 v200, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v202, v[vgprValuC+202], v[vgprValuC+203] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 70                 // scale StrideD *= numRows(35) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v202, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v204, v[vgprValuC+204], v[vgprValuC+205] // Pack with neighbor
_buffer_store_b32 v204, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v206, v[vgprValuC+206], v[vgprValuC+207] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v206, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v208, v[vgprValuC+208], v[vgprValuC+209] // Pack with neighbor
_buffer_store_b32 v208, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v210, v[vgprValuC+210], v[vgprValuC+211] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v210, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v212, v[vgprValuC+212], v[vgprValuC+213] // Pack with neighbor
_buffer_store_b32 v212, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v214, v[vgprValuC+214], v[vgprValuC+215] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v214, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v216, v[vgprValuC+216], v[vgprValuC+217] // Pack with neighbor
_buffer_store_b32 v216, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v218, v[vgprValuC+218], v[vgprValuC+219] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v218, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v220, v[vgprValuC+220], v[vgprValuC+221] // Pack with neighbor
_buffer_store_b32 v220, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v222, v[vgprValuC+222], v[vgprValuC+223] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v222, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v224, v[vgprValuC+224], v[vgprValuC+225] // Pack with neighbor
_buffer_store_b32 v224, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v226, v[vgprValuC+226], v[vgprValuC+227] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v226, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v228, v[vgprValuC+228], v[vgprValuC+229] // Pack with neighbor
_buffer_store_b32 v228, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v234, v[vgprValuC+234], v[vgprValuC+235] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v234, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v236, v[vgprValuC+236], v[vgprValuC+237] // Pack with neighbor
_buffer_store_b32 v236, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v238, v[vgprValuC+238], v[vgprValuC+239] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v238, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v240, v[vgprValuC+240], v[vgprValuC+241] // Pack with neighbor
_buffer_store_b32 v240, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v242, v[vgprValuC+242], v[vgprValuC+243] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v242, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v244, v[vgprValuC+244], v[vgprValuC+245] // Pack with neighbor
_buffer_store_b32 v244, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v246, v[vgprValuC+246], v[vgprValuC+247] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v246, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v248, v[vgprValuC+248], v[vgprValuC+249] // Pack with neighbor
_buffer_store_b32 v248, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v250, v[vgprValuC+250], v[vgprValuC+251] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v250, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v252, v[vgprValuC+252], v[vgprValuC+253] // Pack with neighbor
_buffer_store_b32 v252, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #1 (d1,d0,vc1,vc0) = */
/*    (14,0,0,0:vw2); (14,1,0,0:vw2); (14,0,1,0:vw2); (14,1,1,0:vw2); (15,0,0,0:vw2); (15,1,0,0:vw2); (15,0,1,0:vw2); (15,1,1,0:vw2) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(14,0,0,0) */
/* (d1,vc1,d0,vc0)=(14,0,1,0) */
/* (d1,vc1,d0,vc0)=(14,1,0,0) */
/* (d1,vc1,d0,vc0)=(14,1,1,0) */
/* (d1,vc1,d0,vc0)=(15,0,0,0) */
/* (d1,vc1,d0,vc0)=(15,0,1,0) */
/* (d1,vc1,d0,vc0)=(15,1,0,0) */
/* (d1,vc1,d0,vc0)=(15,1,1,0) */

/* rC *= alpha batchElements=[(14, 0, 0, 0), (14, 1, 0, 0), (14, 0, 1, 0), (14, 1, 1, 0), (15, 0, 0, 0), (15, 1, 0, 0), (15, 0, 1, 0), (15, 1, 1, 0)] */
v_pk_mul_f16 v[vgprValuC+138], s[sgprAlpha], v[vgprValuC+70] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+139], s[sgprAlpha], v[vgprValuC+78] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+140], s[sgprAlpha], v[vgprValuC+86] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+141], s[sgprAlpha], v[vgprValuC+94] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+142], s[sgprAlpha], v[vgprValuC+102] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+143], s[sgprAlpha], v[vgprValuC+110] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+144], s[sgprAlpha], v[vgprValuC+118] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+145], s[sgprAlpha], v[vgprValuC+126] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+146], s[sgprAlpha], v[vgprValuC+71] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+147], s[sgprAlpha], v[vgprValuC+79] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+148], s[sgprAlpha], v[vgprValuC+87] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+149], s[sgprAlpha], v[vgprValuC+95] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+150], s[sgprAlpha], v[vgprValuC+103] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+151], s[sgprAlpha], v[vgprValuC+111] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+152], s[sgprAlpha], v[vgprValuC+119] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+153], s[sgprAlpha], v[vgprValuC+127] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
v_pack_b32_f16 v138, v[vgprValuC+138], v[vgprValuC+139] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v138, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v140, v[vgprValuC+140], v[vgprValuC+141] // Pack with neighbor
_buffer_store_b32 v140, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v142, v[vgprValuC+142], v[vgprValuC+143] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v142, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v144, v[vgprValuC+144], v[vgprValuC+145] // Pack with neighbor
_buffer_store_b32 v144, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v146, v[vgprValuC+146], v[vgprValuC+147] // Pack with neighbor
s_mul_i32 s6, s[sgprStrideD1J], 6                  // scale StrideD *= numRows(3) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v146, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v148, v[vgprValuC+148], v[vgprValuC+149] // Pack with neighbor
_buffer_store_b32 v148, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
v_pack_b32_f16 v150, v[vgprValuC+150], v[vgprValuC+151] // Pack with neighbor
s_lshl_b32  s6, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s6        // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b32 v150, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pack_b32_f16 v152, v[vgprValuC+152], v[vgprValuC+153] // Pack with neighbor
_buffer_store_b32 v152, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:128 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_46                           // jump to end
GW_B0_E1_44:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=58 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (1,0,0,0:vw1); (1,0,0,1:vw1); (1,1,0,0:vw1); (1,1,0,1:vw1); (1,0,1,0:vw1); (1,0,1,1:vw1); (1,1,1,0:vw1); (1,1,1,1:vw1); (2,0,0,0:vw1); (2,0,0,1:vw1); (2,1,0,0:vw1); (2,1,0,1:vw1); (2,0,1,0:vw1); (2,0,1,1:vw1); (2,1,1,0:vw1); (2,1,1,1:vw1); (3,0,0,0:vw1); (3,0,0,1:vw1); (3,1,0,0:vw1); (3,1,0,1:vw1); (3,0,1,0:vw1); (3,0,1,1:vw1); (3,1,1,0:vw1); (3,1,1,1:vw1); (4,0,0,0:vw1); (4,0,0,1:vw1); (4,1,0,0:vw1); (4,1,0,1:vw1); (4,0,1,0:vw1); (4,0,1,1:vw1); (4,1,1,0:vw1); (4,1,1,1:vw1); (5,0,0,0:vw1); (5,0,0,1:vw1); (5,1,0,0:vw1); (5,1,0,1:vw1); (5,0,1,0:vw1); (5,0,1,1:vw1); (5,1,1,0:vw1); (5,1,1,1:vw1); (6,0,0,0:vw1); (6,0,0,1:vw1); (6,1,0,0:vw1); (6,1,0,1:vw1); (6,0,1,0:vw1); (6,0,1,1:vw1); (6,1,1,0:vw1); (6,1,1,1:vw1); (7,0,0,0:vw1); (7,0,0,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v136, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v138, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v140, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v142, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v144, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v146, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v148, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v150, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v152, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v154, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v156, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v158, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v160, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v162, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v164, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v166, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v168, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v170, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v172, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v174, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v176, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v178, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v180, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v182, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v184, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v186, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v188, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v190, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v192, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v194, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v196, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v198, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v200, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v202, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v204, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v206, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v206, -1, v206, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v208, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v208, -1, v208, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v210, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v210, -1, v210, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v212, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v212, -1, v212, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v214, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v214, -1, v214, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v216, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v216, -1, v216, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v218, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v218, -1, v218, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v220, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v220, -1, v220, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v222, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v222, -1, v222, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v224, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v224, -1, v224, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v226, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v226, -1, v226, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v228, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v228, -1, v228, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v233, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v233, -1, v233, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v235, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v235, -1, v235, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v237, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v237, -1, v237, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v239, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v239, -1, v239, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v241, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v241, -1, v241, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v243, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v243, -1, v243, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v245, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v245, -1, v245, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v247, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v247, -1, v247, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v249, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v249, -1, v249, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v251, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v251, -1, v251, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v253, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v253, -1, v253, s50                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 1, 0, 0), (0, 1, 0, 1), (0, 0, 1, 0), (0, 0, 1, 1), (0, 1, 1, 0), (0, 1, 1, 1), (1, 0, 0, 0), (1, 0, 0, 1), (1, 1, 0, 0), (1, 1, 0, 1), (1, 0, 1, 0), (1, 0, 1, 1), (1, 1, 1, 0), (1, 1, 1, 1), (2, 0, 0, 0), (2, 0, 0, 1), (2, 1, 0, 0), (2, 1, 0, 1), (2, 0, 1, 0), (2, 0, 1, 1), (2, 1, 1, 0), (2, 1, 1, 1), (3, 0, 0, 0), (3, 0, 0, 1), (3, 1, 0, 0), (3, 1, 0, 1), (3, 0, 1, 0), (3, 0, 1, 1), (3, 1, 1, 0), (3, 1, 1, 1), (4, 0, 0, 0), (4, 0, 0, 1), (4, 1, 0, 0), (4, 1, 0, 1), (4, 0, 1, 0), (4, 0, 1, 1), (4, 1, 1, 0), (4, 1, 1, 1), (5, 0, 0, 0), (5, 0, 0, 1), (5, 1, 0, 0), (5, 1, 0, 1), (5, 0, 1, 0), (5, 0, 1, 1), (5, 1, 1, 0), (5, 1, 1, 1), (6, 0, 0, 0), (6, 0, 0, 1), (6, 1, 0, 0), (6, 1, 0, 1), (6, 0, 1, 0), (6, 0, 1, 1), (6, 1, 1, 0), (6, 1, 1, 1), (7, 0, 0, 0), (7, 0, 0, 1)] */
v_pk_mul_f16 v[vgprValuC+137], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+139], s[sgprAlpha], v[vgprValuC+8] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+141], s[sgprAlpha], v[vgprValuC+16] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+143], s[sgprAlpha], v[vgprValuC+24] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+145], s[sgprAlpha], v[vgprValuC+32] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+147], s[sgprAlpha], v[vgprValuC+40] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+149], s[sgprAlpha], v[vgprValuC+48] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+151], s[sgprAlpha], v[vgprValuC+56] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+153], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+155], s[sgprAlpha], v[vgprValuC+9] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+157], s[sgprAlpha], v[vgprValuC+17] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+159], s[sgprAlpha], v[vgprValuC+25] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+161], s[sgprAlpha], v[vgprValuC+33] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+163], s[sgprAlpha], v[vgprValuC+41] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+165], s[sgprAlpha], v[vgprValuC+49] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+167], s[sgprAlpha], v[vgprValuC+57] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+169], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+171], s[sgprAlpha], v[vgprValuC+10] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+173], s[sgprAlpha], v[vgprValuC+18] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+175], s[sgprAlpha], v[vgprValuC+26] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+177], s[sgprAlpha], v[vgprValuC+34] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+179], s[sgprAlpha], v[vgprValuC+42] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+181], s[sgprAlpha], v[vgprValuC+50] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+183], s[sgprAlpha], v[vgprValuC+58] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+185], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+187], s[sgprAlpha], v[vgprValuC+11] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+189], s[sgprAlpha], v[vgprValuC+19] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+191], s[sgprAlpha], v[vgprValuC+27] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+193], s[sgprAlpha], v[vgprValuC+35] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+195], s[sgprAlpha], v[vgprValuC+43] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+197], s[sgprAlpha], v[vgprValuC+51] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+199], s[sgprAlpha], v[vgprValuC+59] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+201], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+203], s[sgprAlpha], v[vgprValuC+12] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+205], s[sgprAlpha], v[vgprValuC+20] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+207], s[sgprAlpha], v[vgprValuC+28] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+209], s[sgprAlpha], v[vgprValuC+36] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+211], s[sgprAlpha], v[vgprValuC+44] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+213], s[sgprAlpha], v[vgprValuC+52] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+215], s[sgprAlpha], v[vgprValuC+60] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+217], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+219], s[sgprAlpha], v[vgprValuC+13] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+221], s[sgprAlpha], v[vgprValuC+21] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+223], s[sgprAlpha], v[vgprValuC+29] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+225], s[sgprAlpha], v[vgprValuC+37] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+227], s[sgprAlpha], v[vgprValuC+45] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+229], s[sgprAlpha], v[vgprValuC+53] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+234], s[sgprAlpha], v[vgprValuC+61] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+236], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+238], s[sgprAlpha], v[vgprValuC+14] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+240], s[sgprAlpha], v[vgprValuC+22] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+242], s[sgprAlpha], v[vgprValuC+30] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+244], s[sgprAlpha], v[vgprValuC+38] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+246], s[sgprAlpha], v[vgprValuC+46] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+248], s[sgprAlpha], v[vgprValuC+54] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+250], s[sgprAlpha], v[vgprValuC+62] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+252], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+254], s[sgprAlpha], v[vgprValuC+15] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v137, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v139, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v141, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v143, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v145, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v147, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v149, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v151, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v153, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v155, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v157, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v159, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v161, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v163, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v165, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v167, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v169, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v171, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v173, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v175, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v177, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v179, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v181, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v183, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v185, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v187, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v189, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v191, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v193, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v195, v194, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v197, v196, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v199, v198, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v201, v200, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v203, v202, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v205, v204, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v207, v206, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v209, v208, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v211, v210, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v213, v212, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v215, v214, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v217, v216, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v219, v218, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v221, v220, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v223, v222, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v225, v224, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v227, v226, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v229, v228, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v234, v233, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v236, v235, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v238, v237, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v240, v239, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v242, v241, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v244, v243, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v246, v245, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v248, v247, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v250, v249, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v252, v251, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v254, v253, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (7,1,0,0:vw1); (7,1,0,1:vw1); (7,0,1,0:vw1); (7,0,1,1:vw1); (7,1,1,0:vw1); (7,1,1,1:vw1); (8,0,0,0:vw1); (8,0,0,1:vw1); (8,1,0,0:vw1); (8,1,0,1:vw1); (8,0,1,0:vw1); (8,0,1,1:vw1); (8,1,1,0:vw1); (8,1,1,1:vw1); (9,0,0,0:vw1); (9,0,0,1:vw1); (9,1,0,0:vw1); (9,1,0,1:vw1); (9,0,1,0:vw1); (9,0,1,1:vw1); (9,1,1,0:vw1); (9,1,1,1:vw1); (10,0,0,0:vw1); (10,0,0,1:vw1); (10,1,0,0:vw1); (10,1,0,1:vw1); (10,0,1,0:vw1); (10,0,1,1:vw1); (10,1,1,0:vw1); (10,1,1,1:vw1); (11,0,0,0:vw1); (11,0,0,1:vw1); (11,1,0,0:vw1); (11,1,0,1:vw1); (11,0,1,0:vw1); (11,0,1,1:vw1); (11,1,1,0:vw1); (11,1,1,1:vw1); (12,0,0,0:vw1); (12,0,0,1:vw1); (12,1,0,0:vw1); (12,1,0,1:vw1); (12,0,1,0:vw1); (12,0,1,1:vw1); (12,1,1,0:vw1); (12,1,1,1:vw1); (13,0,0,0:vw1); (13,0,0,1:vw1); (13,1,0,0:vw1); (13,1,0,1:vw1); (13,0,1,0:vw1); (13,0,1,1:vw1); (13,1,1,0:vw1); (13,1,1,1:vw1); (14,0,0,0:vw1); (14,0,0,1:vw1); (14,1,0,0:vw1); (14,1,0,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(7,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v136, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v138, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v140, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v142, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v144, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v146, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 35               // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 35                // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 35                // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v148, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v150, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v152, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v154, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v156, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v158, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v160, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v162, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v164, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v166, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v168, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v170, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v172, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v174, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v176, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(9,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v178, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v180, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v182, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v184, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v186, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v188, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v190, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v192, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(10,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v194, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v196, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v198, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v200, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v202, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v204, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v206, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v206, -1, v206, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v208, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v208, -1, v208, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(11,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v210, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v210, -1, v210, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v212, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v212, -1, v212, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v214, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v214, -1, v214, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v216, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v216, -1, v216, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v218, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v218, -1, v218, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v220, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v220, -1, v220, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v222, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v222, -1, v222, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v224, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v224, -1, v224, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(12,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v226, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v226, -1, v226, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v228, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v228, -1, v228, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v233, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v233, -1, v233, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v235, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v235, -1, v235, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v237, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v237, -1, v237, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v239, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v239, -1, v239, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v241, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v241, -1, v241, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v243, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v243, -1, v243, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(13,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v245, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v245, -1, v245, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v247, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v247, -1, v247, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v249, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v249, -1, v249, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v251, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v251, -1, v251, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v253, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v253, -1, v253, s50                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(7, 1, 0, 0), (7, 1, 0, 1), (7, 0, 1, 0), (7, 0, 1, 1), (7, 1, 1, 0), (7, 1, 1, 1), (8, 0, 0, 0), (8, 0, 0, 1), (8, 1, 0, 0), (8, 1, 0, 1), (8, 0, 1, 0), (8, 0, 1, 1), (8, 1, 1, 0), (8, 1, 1, 1), (9, 0, 0, 0), (9, 0, 0, 1), (9, 1, 0, 0), (9, 1, 0, 1), (9, 0, 1, 0), (9, 0, 1, 1), (9, 1, 1, 0), (9, 1, 1, 1), (10, 0, 0, 0), (10, 0, 0, 1), (10, 1, 0, 0), (10, 1, 0, 1), (10, 0, 1, 0), (10, 0, 1, 1), (10, 1, 1, 0), (10, 1, 1, 1), (11, 0, 0, 0), (11, 0, 0, 1), (11, 1, 0, 0), (11, 1, 0, 1), (11, 0, 1, 0), (11, 0, 1, 1), (11, 1, 1, 0), (11, 1, 1, 1), (12, 0, 0, 0), (12, 0, 0, 1), (12, 1, 0, 0), (12, 1, 0, 1), (12, 0, 1, 0), (12, 0, 1, 1), (12, 1, 1, 0), (12, 1, 1, 1), (13, 0, 0, 0), (13, 0, 0, 1), (13, 1, 0, 0), (13, 1, 0, 1), (13, 0, 1, 0), (13, 0, 1, 1), (13, 1, 1, 0), (13, 1, 1, 1), (14, 0, 0, 0), (14, 0, 0, 1), (14, 1, 0, 0), (14, 1, 0, 1)] */
v_pk_mul_f16 v[vgprValuC+137], s[sgprAlpha], v[vgprValuC+23] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+139], s[sgprAlpha], v[vgprValuC+31] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+141], s[sgprAlpha], v[vgprValuC+39] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+143], s[sgprAlpha], v[vgprValuC+47] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+145], s[sgprAlpha], v[vgprValuC+55] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+147], s[sgprAlpha], v[vgprValuC+63] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+149], s[sgprAlpha], v[vgprValuC+64] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+151], s[sgprAlpha], v[vgprValuC+72] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+153], s[sgprAlpha], v[vgprValuC+80] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+155], s[sgprAlpha], v[vgprValuC+88] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+157], s[sgprAlpha], v[vgprValuC+96] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+159], s[sgprAlpha], v[vgprValuC+104] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+161], s[sgprAlpha], v[vgprValuC+112] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+163], s[sgprAlpha], v[vgprValuC+120] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+165], s[sgprAlpha], v[vgprValuC+65] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+167], s[sgprAlpha], v[vgprValuC+73] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+169], s[sgprAlpha], v[vgprValuC+81] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+171], s[sgprAlpha], v[vgprValuC+89] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+173], s[sgprAlpha], v[vgprValuC+97] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+175], s[sgprAlpha], v[vgprValuC+105] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+177], s[sgprAlpha], v[vgprValuC+113] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+179], s[sgprAlpha], v[vgprValuC+121] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+181], s[sgprAlpha], v[vgprValuC+66] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+183], s[sgprAlpha], v[vgprValuC+74] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+185], s[sgprAlpha], v[vgprValuC+82] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+187], s[sgprAlpha], v[vgprValuC+90] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+189], s[sgprAlpha], v[vgprValuC+98] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+191], s[sgprAlpha], v[vgprValuC+106] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+193], s[sgprAlpha], v[vgprValuC+114] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+195], s[sgprAlpha], v[vgprValuC+122] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+197], s[sgprAlpha], v[vgprValuC+67] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+199], s[sgprAlpha], v[vgprValuC+75] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+201], s[sgprAlpha], v[vgprValuC+83] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+203], s[sgprAlpha], v[vgprValuC+91] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+205], s[sgprAlpha], v[vgprValuC+99] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+207], s[sgprAlpha], v[vgprValuC+107] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+209], s[sgprAlpha], v[vgprValuC+115] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+211], s[sgprAlpha], v[vgprValuC+123] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+213], s[sgprAlpha], v[vgprValuC+68] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+215], s[sgprAlpha], v[vgprValuC+76] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+217], s[sgprAlpha], v[vgprValuC+84] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+219], s[sgprAlpha], v[vgprValuC+92] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+221], s[sgprAlpha], v[vgprValuC+100] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+223], s[sgprAlpha], v[vgprValuC+108] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+225], s[sgprAlpha], v[vgprValuC+116] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+227], s[sgprAlpha], v[vgprValuC+124] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+229], s[sgprAlpha], v[vgprValuC+69] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+234], s[sgprAlpha], v[vgprValuC+77] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+236], s[sgprAlpha], v[vgprValuC+85] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+238], s[sgprAlpha], v[vgprValuC+93] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+240], s[sgprAlpha], v[vgprValuC+101] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+242], s[sgprAlpha], v[vgprValuC+109] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+244], s[sgprAlpha], v[vgprValuC+117] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+246], s[sgprAlpha], v[vgprValuC+125] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+248], s[sgprAlpha], v[vgprValuC+70] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+250], s[sgprAlpha], v[vgprValuC+78] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+252], s[sgprAlpha], v[vgprValuC+86] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+254], s[sgprAlpha], v[vgprValuC+94] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v137, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v139, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v141, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v143, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v145, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v147, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v149, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v151, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v153, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v155, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v157, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v159, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v161, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v163, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v165, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v167, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v169, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v171, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v173, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v175, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v177, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v179, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v181, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v183, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v185, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v187, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v189, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v191, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v193, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v195, v194, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v197, v196, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v199, v198, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v201, v200, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v203, v202, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v205, v204, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v207, v206, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v209, v208, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v211, v210, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v213, v212, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v215, v214, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v217, v216, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v219, v218, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v221, v220, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v223, v222, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v225, v224, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v227, v226, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v229, v228, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v234, v233, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v236, v235, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v238, v237, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v240, v239, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v242, v241, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v244, v243, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v246, v245, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v248, v247, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v250, v249, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v252, v251, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v254, v253, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (14,0,1,0:vw1); (14,0,1,1:vw1); (14,1,1,0:vw1); (14,1,1,1:vw1); (15,0,0,0:vw1); (15,0,0,1:vw1); (15,1,0,0:vw1); (15,1,0,1:vw1); (15,0,1,0:vw1); (15,0,1,1:vw1); (15,1,1,0:vw1); (15,1,1,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(14,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v136, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v138, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v140, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(14,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v142, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 3                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s48, s[sgprStrideC1J], 3                 // scale stride
_v_add_u32 v132, v132, s48                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s48, s[sgprStrideD1J], 3                 // scale stride
_v_add_u32 v133, v133, s48                         // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v144, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v146, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v148, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,0,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v150, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s48, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v152, v133, v130, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v154, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v156, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s50                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(15,1,1,1) */
s_mov_b32 s48, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s48              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s50, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
_v_add_lshl_u32 v158, v133, v134, 0x1              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s50                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(14, 0, 1, 0), (14, 0, 1, 1), (14, 1, 1, 0), (14, 1, 1, 1), (15, 0, 0, 0), (15, 0, 0, 1), (15, 1, 0, 0), (15, 1, 0, 1), (15, 0, 1, 0), (15, 0, 1, 1), (15, 1, 1, 0), (15, 1, 1, 1)] */
v_pk_mul_f16 v[vgprValuC+137], s[sgprAlpha], v[vgprValuC+102] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+139], s[sgprAlpha], v[vgprValuC+110] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+141], s[sgprAlpha], v[vgprValuC+118] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+143], s[sgprAlpha], v[vgprValuC+126] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+145], s[sgprAlpha], v[vgprValuC+71] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+147], s[sgprAlpha], v[vgprValuC+79] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+149], s[sgprAlpha], v[vgprValuC+87] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+151], s[sgprAlpha], v[vgprValuC+95] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+153], s[sgprAlpha], v[vgprValuC+103] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+155], s[sgprAlpha], v[vgprValuC+111] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+157], s[sgprAlpha], v[vgprValuC+119] // Multiply MI out reg with alpha
v_pk_mul_f16 v[vgprValuC+159], s[sgprAlpha], v[vgprValuC+127] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v137, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v139, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v141, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v143, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v145, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v147, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v149, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v151, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v153, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v155, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v157, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v159, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_46                           // jump to end
label_GW_End_46:

label_0051:  /// KernelEnd
s_endpgm                                           // Kernel End



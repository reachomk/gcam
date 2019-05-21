.class public Landroid/support/v8/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 34
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    .line 35
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    .line 36
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    array-length v0, p1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 43
    array-length v0, p1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    .line 44
    iput-object p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    .line 45
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 49
    return-void
.end method

.method private addSafely(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 929
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 931
    :cond_0
    const/4 v0, 0x0

    .line 933
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addToPack(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    if-nez v0, :cond_0

    .line 940
    return-void

    .line 935
    :catch_0
    move-exception v0

    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 936
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->resize(I)Z

    .line 937
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addToPack(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 632
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 633
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addBoolean(Z)V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 638
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0

    .line 642
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 643
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0

    .line 647
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 648
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    .line 652
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 653
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0

    .line 657
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 658
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0

    .line 662
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 663
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0

    .line 667
    :cond_7
    instance-of v0, p1, Landroid/support/v8/renderscript/Byte2;

    if-eqz v0, :cond_8

    .line 668
    check-cast p1, Landroid/support/v8/renderscript/Byte2;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(Landroid/support/v8/renderscript/Byte2;)V

    goto :goto_0

    .line 672
    :cond_8
    instance-of v0, p1, Landroid/support/v8/renderscript/Byte3;

    if-eqz v0, :cond_9

    .line 673
    check-cast p1, Landroid/support/v8/renderscript/Byte3;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(Landroid/support/v8/renderscript/Byte3;)V

    goto :goto_0

    .line 677
    :cond_9
    instance-of v0, p1, Landroid/support/v8/renderscript/Byte4;

    if-eqz v0, :cond_a

    .line 678
    check-cast p1, Landroid/support/v8/renderscript/Byte4;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI8(Landroid/support/v8/renderscript/Byte4;)V

    goto :goto_0

    .line 682
    :cond_a
    instance-of v0, p1, Landroid/support/v8/renderscript/Short2;

    if-eqz v0, :cond_b

    .line 683
    check-cast p1, Landroid/support/v8/renderscript/Short2;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(Landroid/support/v8/renderscript/Short2;)V

    goto :goto_0

    .line 687
    :cond_b
    instance-of v0, p1, Landroid/support/v8/renderscript/Short3;

    if-eqz v0, :cond_c

    .line 688
    check-cast p1, Landroid/support/v8/renderscript/Short3;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(Landroid/support/v8/renderscript/Short3;)V

    goto/16 :goto_0

    .line 692
    :cond_c
    instance-of v0, p1, Landroid/support/v8/renderscript/Short4;

    if-eqz v0, :cond_d

    .line 693
    check-cast p1, Landroid/support/v8/renderscript/Short4;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI16(Landroid/support/v8/renderscript/Short4;)V

    goto/16 :goto_0

    .line 697
    :cond_d
    instance-of v0, p1, Landroid/support/v8/renderscript/Int2;

    if-eqz v0, :cond_e

    .line 698
    check-cast p1, Landroid/support/v8/renderscript/Int2;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(Landroid/support/v8/renderscript/Int2;)V

    goto/16 :goto_0

    .line 702
    :cond_e
    instance-of v0, p1, Landroid/support/v8/renderscript/Int3;

    if-eqz v0, :cond_f

    .line 703
    check-cast p1, Landroid/support/v8/renderscript/Int3;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(Landroid/support/v8/renderscript/Int3;)V

    goto/16 :goto_0

    .line 707
    :cond_f
    instance-of v0, p1, Landroid/support/v8/renderscript/Int4;

    if-eqz v0, :cond_10

    .line 708
    check-cast p1, Landroid/support/v8/renderscript/Int4;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(Landroid/support/v8/renderscript/Int4;)V

    goto/16 :goto_0

    .line 712
    :cond_10
    instance-of v0, p1, Landroid/support/v8/renderscript/Long2;

    if-eqz v0, :cond_11

    .line 713
    check-cast p1, Landroid/support/v8/renderscript/Long2;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(Landroid/support/v8/renderscript/Long2;)V

    goto/16 :goto_0

    .line 717
    :cond_11
    instance-of v0, p1, Landroid/support/v8/renderscript/Long3;

    if-eqz v0, :cond_12

    .line 718
    check-cast p1, Landroid/support/v8/renderscript/Long3;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(Landroid/support/v8/renderscript/Long3;)V

    goto/16 :goto_0

    .line 722
    :cond_12
    instance-of v0, p1, Landroid/support/v8/renderscript/Long4;

    if-eqz v0, :cond_13

    .line 723
    check-cast p1, Landroid/support/v8/renderscript/Long4;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(Landroid/support/v8/renderscript/Long4;)V

    goto/16 :goto_0

    .line 727
    :cond_13
    instance-of v0, p1, Landroid/support/v8/renderscript/Float2;

    if-eqz v0, :cond_14

    .line 728
    check-cast p1, Landroid/support/v8/renderscript/Float2;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float2;)V

    goto/16 :goto_0

    .line 732
    :cond_14
    instance-of v0, p1, Landroid/support/v8/renderscript/Float3;

    if-eqz v0, :cond_15

    .line 733
    check-cast p1, Landroid/support/v8/renderscript/Float3;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float3;)V

    goto/16 :goto_0

    .line 737
    :cond_15
    instance-of v0, p1, Landroid/support/v8/renderscript/Float4;

    if-eqz v0, :cond_16

    .line 738
    check-cast p1, Landroid/support/v8/renderscript/Float4;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float4;)V

    goto/16 :goto_0

    .line 742
    :cond_16
    instance-of v0, p1, Landroid/support/v8/renderscript/Double2;

    if-eqz v0, :cond_17

    .line 743
    check-cast p1, Landroid/support/v8/renderscript/Double2;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(Landroid/support/v8/renderscript/Double2;)V

    goto/16 :goto_0

    .line 747
    :cond_17
    instance-of v0, p1, Landroid/support/v8/renderscript/Double3;

    if-eqz v0, :cond_18

    .line 748
    check-cast p1, Landroid/support/v8/renderscript/Double3;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(Landroid/support/v8/renderscript/Double3;)V

    goto/16 :goto_0

    .line 752
    :cond_18
    instance-of v0, p1, Landroid/support/v8/renderscript/Double4;

    if-eqz v0, :cond_19

    .line 753
    check-cast p1, Landroid/support/v8/renderscript/Double4;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(Landroid/support/v8/renderscript/Double4;)V

    goto/16 :goto_0

    .line 757
    :cond_19
    instance-of v0, p1, Landroid/support/v8/renderscript/Matrix2f;

    if-eqz v0, :cond_1a

    .line 758
    check-cast p1, Landroid/support/v8/renderscript/Matrix2f;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V

    goto/16 :goto_0

    .line 762
    :cond_1a
    instance-of v0, p1, Landroid/support/v8/renderscript/Matrix3f;

    if-eqz v0, :cond_1b

    .line 763
    check-cast p1, Landroid/support/v8/renderscript/Matrix3f;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V

    goto/16 :goto_0

    .line 767
    :cond_1b
    instance-of v0, p1, Landroid/support/v8/renderscript/Matrix4f;

    if-eqz v0, :cond_1c

    .line 768
    check-cast p1, Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V

    goto/16 :goto_0

    .line 772
    :cond_1c
    instance-of v0, p1, Landroid/support/v8/renderscript/BaseObj;

    if-eqz v0, :cond_0

    .line 773
    check-cast p1, Landroid/support/v8/renderscript/BaseObj;

    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addObj(Landroid/support/v8/renderscript/BaseObj;)V

    goto/16 :goto_0
.end method

.method static createFieldPack([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 903
    .line 904
    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    .line 905
    invoke-static {v4}, Landroid/support/v8/renderscript/FieldPacker;->getPackedSize(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/FieldPacker;

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 908
    array-length v2, p0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 909
    invoke-static {v1, v3}, Landroid/support/v8/renderscript/FieldPacker;->addToPack(Landroid/support/v8/renderscript/FieldPacker;Ljava/lang/Object;)V

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 911
    :cond_1
    return-object v1
.end method

.method static createFromArray([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;
    .locals 4

    .prologue
    .line 52
    new-instance v1, Landroid/support/v8/renderscript/FieldPacker;

    sget v0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 53
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 54
    invoke-direct {v1, v3}, Landroid/support/v8/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget v0, v1, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/FieldPacker;->resize(I)Z

    .line 57
    return-object v1
.end method

.method private static getPackedSize(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x20

    const/16 v3, 0x10

    const/4 v1, 0x4

    const/16 v2, 0x8

    .line 779
    instance-of v5, p0, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 899
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    instance-of v5, p0, Ljava/lang/Byte;

    if-nez v5, :cond_0

    .line 787
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 788
    const/4 v0, 0x2

    goto :goto_0

    .line 791
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    move v0, v1

    .line 792
    goto :goto_0

    .line 795
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    move v0, v2

    .line 796
    goto :goto_0

    .line 799
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    move v0, v1

    .line 800
    goto :goto_0

    .line 803
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    move v0, v2

    .line 804
    goto :goto_0

    .line 807
    :cond_6
    instance-of v0, p0, Landroid/support/v8/renderscript/Byte2;

    if-eqz v0, :cond_7

    .line 808
    const/4 v0, 0x2

    goto :goto_0

    .line 811
    :cond_7
    instance-of v0, p0, Landroid/support/v8/renderscript/Byte3;

    if-eqz v0, :cond_8

    .line 812
    const/4 v0, 0x3

    goto :goto_0

    .line 815
    :cond_8
    instance-of v0, p0, Landroid/support/v8/renderscript/Byte4;

    if-eqz v0, :cond_9

    move v0, v1

    .line 816
    goto :goto_0

    .line 819
    :cond_9
    instance-of v0, p0, Landroid/support/v8/renderscript/Short2;

    if-eqz v0, :cond_a

    move v0, v1

    .line 820
    goto :goto_0

    .line 823
    :cond_a
    instance-of v0, p0, Landroid/support/v8/renderscript/Short3;

    if-eqz v0, :cond_b

    .line 824
    const/4 v0, 0x6

    goto :goto_0

    .line 827
    :cond_b
    instance-of v0, p0, Landroid/support/v8/renderscript/Short4;

    if-eqz v0, :cond_c

    move v0, v2

    .line 828
    goto :goto_0

    .line 831
    :cond_c
    instance-of v0, p0, Landroid/support/v8/renderscript/Int2;

    if-eqz v0, :cond_d

    move v0, v2

    .line 832
    goto :goto_0

    .line 835
    :cond_d
    instance-of v0, p0, Landroid/support/v8/renderscript/Int3;

    if-eqz v0, :cond_e

    .line 836
    const/16 v0, 0xc

    goto :goto_0

    .line 839
    :cond_e
    instance-of v0, p0, Landroid/support/v8/renderscript/Int4;

    if-eqz v0, :cond_f

    move v0, v3

    .line 840
    goto :goto_0

    .line 843
    :cond_f
    instance-of v0, p0, Landroid/support/v8/renderscript/Long2;

    if-eqz v0, :cond_10

    move v0, v3

    .line 844
    goto :goto_0

    .line 847
    :cond_10
    instance-of v0, p0, Landroid/support/v8/renderscript/Long3;

    if-eqz v0, :cond_11

    .line 848
    const/16 v0, 0x18

    goto :goto_0

    .line 851
    :cond_11
    instance-of v0, p0, Landroid/support/v8/renderscript/Long4;

    if-eqz v0, :cond_12

    move v0, v4

    .line 852
    goto :goto_0

    .line 855
    :cond_12
    instance-of v0, p0, Landroid/support/v8/renderscript/Float2;

    if-eqz v0, :cond_13

    move v0, v2

    .line 856
    goto :goto_0

    .line 859
    :cond_13
    instance-of v0, p0, Landroid/support/v8/renderscript/Float3;

    if-eqz v0, :cond_14

    .line 860
    const/16 v0, 0xc

    goto :goto_0

    .line 863
    :cond_14
    instance-of v0, p0, Landroid/support/v8/renderscript/Float4;

    if-eqz v0, :cond_15

    move v0, v3

    .line 864
    goto :goto_0

    .line 867
    :cond_15
    instance-of v0, p0, Landroid/support/v8/renderscript/Double2;

    if-eqz v0, :cond_16

    move v0, v3

    .line 868
    goto/16 :goto_0

    .line 871
    :cond_16
    instance-of v0, p0, Landroid/support/v8/renderscript/Double3;

    if-eqz v0, :cond_17

    .line 872
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 875
    :cond_17
    instance-of v0, p0, Landroid/support/v8/renderscript/Double4;

    if-eqz v0, :cond_18

    move v0, v4

    .line 876
    goto/16 :goto_0

    .line 879
    :cond_18
    instance-of v0, p0, Landroid/support/v8/renderscript/Matrix2f;

    if-eqz v0, :cond_19

    move v0, v3

    .line 880
    goto/16 :goto_0

    .line 883
    :cond_19
    instance-of v0, p0, Landroid/support/v8/renderscript/Matrix3f;

    if-eqz v0, :cond_1a

    .line 884
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 887
    :cond_1a
    instance-of v0, p0, Landroid/support/v8/renderscript/Matrix4f;

    if-eqz v0, :cond_1b

    .line 888
    const/16 v0, 0x40

    goto/16 :goto_0

    .line 891
    :cond_1b
    instance-of v0, p0, Landroid/support/v8/renderscript/BaseObj;

    if-eqz v0, :cond_1d

    .line 892
    sget v0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    if-ne v0, v2, :cond_1c

    move v0, v4

    .line 893
    goto/16 :goto_0

    :cond_1c
    move v0, v1

    .line 895
    goto/16 :goto_0

    .line 899
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private resize(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 916
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-ne p1, v1, :cond_0

    .line 924
    :goto_0
    return v0

    .line 920
    :cond_0
    new-array v1, p1, [B

    .line 921
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    iput-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    .line 923
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    .line 924
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1

    .prologue
    .line 607
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 608
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addF32(F)V
    .locals 1

    .prologue
    .line 232
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 233
    return-void
.end method

.method public addF32(Landroid/support/v8/renderscript/Float2;)V
    .locals 1

    .prologue
    .line 270
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 271
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 272
    return-void
.end method

.method public addF32(Landroid/support/v8/renderscript/Float3;)V
    .locals 1

    .prologue
    .line 274
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 275
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 276
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 277
    return-void
.end method

.method public addF32(Landroid/support/v8/renderscript/Float4;)V
    .locals 1

    .prologue
    .line 279
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 280
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 281
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 282
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 283
    return-void
.end method

.method public addF64(D)V
    .locals 3

    .prologue
    .line 240
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 241
    return-void
.end method

.method public addF64(Landroid/support/v8/renderscript/Double2;)V
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 287
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 288
    return-void
.end method

.method public addF64(Landroid/support/v8/renderscript/Double3;)V
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 291
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 292
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 293
    return-void
.end method

.method public addF64(Landroid/support/v8/renderscript/Double4;)V
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 296
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 297
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 298
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 299
    return-void
.end method

.method public addI16(Landroid/support/v8/renderscript/Short2;)V
    .locals 1

    .prologue
    .line 334
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 335
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 336
    return-void
.end method

.method public addI16(Landroid/support/v8/renderscript/Short3;)V
    .locals 1

    .prologue
    .line 338
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 339
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 340
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 341
    return-void
.end method

.method public addI16(Landroid/support/v8/renderscript/Short4;)V
    .locals 1

    .prologue
    .line 343
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 344
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 345
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 346
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 347
    return-void
.end method

.method public addI16(S)V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 118
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 119
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    return-void
.end method

.method public addI32(I)V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 133
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    return-void
.end method

.method public addI32(Landroid/support/v8/renderscript/Int2;)V
    .locals 1

    .prologue
    .line 366
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 367
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 368
    return-void
.end method

.method public addI32(Landroid/support/v8/renderscript/Int3;)V
    .locals 1

    .prologue
    .line 370
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 371
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 372
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 373
    return-void
.end method

.method public addI32(Landroid/support/v8/renderscript/Int4;)V
    .locals 1

    .prologue
    .line 375
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 376
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 377
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 378
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 379
    return-void
.end method

.method public addI64(J)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 151
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 152
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    return-void
.end method

.method public addI64(Landroid/support/v8/renderscript/Long2;)V
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 399
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 400
    return-void
.end method

.method public addI64(Landroid/support/v8/renderscript/Long3;)V
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 403
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 404
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 405
    return-void
.end method

.method public addI64(Landroid/support/v8/renderscript/Long4;)V
    .locals 2

    .prologue
    .line 407
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 408
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 409
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 410
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 411
    return-void
.end method

.method public addI8(B)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    .line 109
    return-void
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte2;)V
    .locals 1

    .prologue
    .line 302
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 303
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 304
    return-void
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte3;)V
    .locals 1

    .prologue
    .line 306
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 307
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 308
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 309
    return-void
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte4;)V
    .locals 1

    .prologue
    .line 311
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 312
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 313
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 314
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 315
    return-void
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 2

    .prologue
    .line 593
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 594
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 2

    .prologue
    .line 579
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 580
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 566
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method public addObj(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    .line 248
    if-eqz p1, :cond_1

    .line 249
    sget v0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 251
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 252
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 253
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 267
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    .line 258
    :cond_1
    sget v0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    if-ne v0, v1, :cond_2

    .line 259
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 260
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 261
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 262
    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addU16(I)V
    .locals 3

    .prologue
    .line 194
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 195
    :cond_0
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FieldPacker.addU16( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 199
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 200
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 201
    return-void
.end method

.method public addU16(Landroid/support/v8/renderscript/Int2;)V
    .locals 1

    .prologue
    .line 350
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 351
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 352
    return-void
.end method

.method public addU16(Landroid/support/v8/renderscript/Int3;)V
    .locals 1

    .prologue
    .line 354
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 355
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 356
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 357
    return-void
.end method

.method public addU16(Landroid/support/v8/renderscript/Int4;)V
    .locals 1

    .prologue
    .line 359
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 360
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 361
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 362
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 363
    return-void
.end method

.method public addU32(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0xff

    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 205
    :cond_0
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FieldPacker.addU32( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 209
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 210
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 211
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 212
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    return-void
.end method

.method public addU32(Landroid/support/v8/renderscript/Long2;)V
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 383
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 384
    return-void
.end method

.method public addU32(Landroid/support/v8/renderscript/Long3;)V
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 387
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 388
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 389
    return-void
.end method

.method public addU32(Landroid/support/v8/renderscript/Long4;)V
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 392
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 393
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 394
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 395
    return-void
.end method

.method public addU64(J)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 217
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FieldPacker.addU64( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 221
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 223
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 224
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 225
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 226
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 228
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 229
    return-void
.end method

.method public addU64(Landroid/support/v8/renderscript/Long2;)V
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 415
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 416
    return-void
.end method

.method public addU64(Landroid/support/v8/renderscript/Long3;)V
    .locals 2

    .prologue
    .line 418
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 419
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 420
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 421
    return-void
.end method

.method public addU64(Landroid/support/v8/renderscript/Long4;)V
    .locals 2

    .prologue
    .line 423
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 424
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 425
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 426
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 427
    return-void
.end method

.method public addU8(Landroid/support/v8/renderscript/Short2;)V
    .locals 1

    .prologue
    .line 318
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 319
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 320
    return-void
.end method

.method public addU8(Landroid/support/v8/renderscript/Short3;)V
    .locals 1

    .prologue
    .line 322
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 323
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 324
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 325
    return-void
.end method

.method public addU8(Landroid/support/v8/renderscript/Short4;)V
    .locals 1

    .prologue
    .line 327
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 328
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 329
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 330
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 331
    return-void
.end method

.method public addU8(S)V
    .locals 3

    .prologue
    .line 186
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 187
    :cond_0
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FieldPacker.addU8( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 191
    return-void
.end method

.method public align(I)V
    .locals 3

    .prologue
    .line 61
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    .line 67
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 91
    return-void
.end method

.method public reset(I)V
    .locals 3

    .prologue
    .line 93
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-le p1, v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out of range argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 97
    return-void
.end method

.method public skip(I)V
    .locals 3

    .prologue
    .line 100
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/2addr v0, p1

    .line 101
    if-ltz v0, :cond_0

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-le v0, v1, :cond_1

    .line 102
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out of range argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 105
    return-void
.end method

.method public subBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    .line 612
    if-ne v1, v0, :cond_0

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subByte2()Landroid/support/v8/renderscript/Byte2;
    .locals 2

    .prologue
    .line 475
    new-instance v0, Landroid/support/v8/renderscript/Byte2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Byte2;-><init>()V

    .line 476
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte2;->y:B

    .line 477
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte2;->x:B

    .line 478
    return-object v0
.end method

.method public subByte3()Landroid/support/v8/renderscript/Byte3;
    .locals 2

    .prologue
    .line 481
    new-instance v0, Landroid/support/v8/renderscript/Byte3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Byte3;-><init>()V

    .line 482
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte3;->z:B

    .line 483
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte3;->y:B

    .line 484
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte3;->x:B

    .line 485
    return-object v0
.end method

.method public subByte4()Landroid/support/v8/renderscript/Byte4;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Landroid/support/v8/renderscript/Byte4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Byte4;-><init>()V

    .line 489
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->w:B

    .line 490
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->z:B

    .line 491
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->y:B

    .line 492
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/support/v8/renderscript/Byte4;->x:B

    .line 493
    return-object v0
.end method

.method public subDouble2()Landroid/support/v8/renderscript/Double2;
    .locals 4

    .prologue
    .line 453
    new-instance v0, Landroid/support/v8/renderscript/Double2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Double2;-><init>()V

    .line 454
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double2;->y:D

    .line 455
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double2;->x:D

    .line 456
    return-object v0
.end method

.method public subDouble3()Landroid/support/v8/renderscript/Double3;
    .locals 4

    .prologue
    .line 459
    new-instance v0, Landroid/support/v8/renderscript/Double3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Double3;-><init>()V

    .line 460
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double3;->z:D

    .line 461
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double3;->y:D

    .line 462
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double3;->x:D

    .line 463
    return-object v0
.end method

.method public subDouble4()Landroid/support/v8/renderscript/Double4;
    .locals 4

    .prologue
    .line 466
    new-instance v0, Landroid/support/v8/renderscript/Double4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Double4;-><init>()V

    .line 467
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double4;->w:D

    .line 468
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double4;->z:D

    .line 469
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double4;->y:D

    .line 470
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Double4;->x:D

    .line 471
    return-object v0
.end method

.method public subF32()F
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public subF64()D
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public subFloat2()Landroid/support/v8/renderscript/Float2;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Landroid/support/v8/renderscript/Float2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float2;-><init>()V

    .line 432
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->y:F

    .line 433
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->x:F

    .line 434
    return-object v0
.end method

.method public subFloat3()Landroid/support/v8/renderscript/Float3;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Landroid/support/v8/renderscript/Float3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float3;-><init>()V

    .line 438
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->z:F

    .line 439
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->y:F

    .line 440
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->x:F

    .line 441
    return-object v0
.end method

.method public subFloat4()Landroid/support/v8/renderscript/Float4;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/support/v8/renderscript/Float4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float4;-><init>()V

    .line 445
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float4;->w:F

    .line 446
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float4;->z:F

    .line 447
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float4;->y:F

    .line 448
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Float4;->x:F

    .line 449
    return-object v0
.end method

.method public subI16()S
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    .line 125
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    .line 126
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 127
    return v0
.end method

.method public subI32()I
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    .line 142
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 143
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public subI64()J
    .locals 8

    .prologue
    const/16 v5, 0x8

    const-wide/16 v6, 0xff

    .line 163
    invoke-virtual {p0, v5}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    .line 166
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    .line 167
    const-wide/16 v2, 0x0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 168
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 169
    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 170
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 171
    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 172
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 173
    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 174
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 175
    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 176
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 177
    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 178
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 179
    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    .line 180
    iget-object v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v3

    .line 181
    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 182
    return-wide v0
.end method

.method public subI8()B
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->subalign(I)V

    .line 113
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public subInt2()Landroid/support/v8/renderscript/Int2;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Landroid/support/v8/renderscript/Int2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Int2;-><init>()V

    .line 520
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int2;->y:I

    .line 521
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int2;->x:I

    .line 522
    return-object v0
.end method

.method public subInt3()Landroid/support/v8/renderscript/Int3;
    .locals 2

    .prologue
    .line 525
    new-instance v0, Landroid/support/v8/renderscript/Int3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Int3;-><init>()V

    .line 526
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int3;->z:I

    .line 527
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int3;->y:I

    .line 528
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int3;->x:I

    .line 529
    return-object v0
.end method

.method public subInt4()Landroid/support/v8/renderscript/Int4;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Landroid/support/v8/renderscript/Int4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Int4;-><init>()V

    .line 533
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int4;->w:I

    .line 534
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int4;->z:I

    .line 535
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int4;->y:I

    .line 536
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/Int4;->x:I

    .line 537
    return-object v0
.end method

.method public subLong2()Landroid/support/v8/renderscript/Long2;
    .locals 4

    .prologue
    .line 541
    new-instance v0, Landroid/support/v8/renderscript/Long2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Long2;-><init>()V

    .line 542
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long2;->y:J

    .line 543
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long2;->x:J

    .line 544
    return-object v0
.end method

.method public subLong3()Landroid/support/v8/renderscript/Long3;
    .locals 4

    .prologue
    .line 547
    new-instance v0, Landroid/support/v8/renderscript/Long3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Long3;-><init>()V

    .line 548
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long3;->z:J

    .line 549
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long3;->y:J

    .line 550
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long3;->x:J

    .line 551
    return-object v0
.end method

.method public subLong4()Landroid/support/v8/renderscript/Long4;
    .locals 4

    .prologue
    .line 554
    new-instance v0, Landroid/support/v8/renderscript/Long4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Long4;-><init>()V

    .line 555
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long4;->w:J

    .line 556
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long4;->z:J

    .line 557
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long4;->y:J

    .line 558
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v8/renderscript/Long4;->x:J

    .line 559
    return-object v0
.end method

.method public subMatrix2f()Landroid/support/v8/renderscript/Matrix2f;
    .locals 4

    .prologue
    .line 599
    new-instance v1, Landroid/support/v8/renderscript/Matrix2f;

    invoke-direct {v1}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V

    .line 600
    iget-object v0, v1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 601
    iget-object v2, v1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v0

    .line 600
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    :cond_0
    return-object v1
.end method

.method public subMatrix3f()Landroid/support/v8/renderscript/Matrix3f;
    .locals 4

    .prologue
    .line 585
    new-instance v1, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v1}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 586
    iget-object v0, v1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 587
    iget-object v2, v1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v0

    .line 586
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 589
    :cond_0
    return-object v1
.end method

.method public subMatrix4f()Landroid/support/v8/renderscript/Matrix4f;
    .locals 4

    .prologue
    .line 571
    new-instance v1, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    .line 572
    iget-object v0, v1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 573
    iget-object v2, v1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v0

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 575
    :cond_0
    return-object v1
.end method

.method public subShort2()Landroid/support/v8/renderscript/Short2;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/support/v8/renderscript/Short2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Short2;-><init>()V

    .line 498
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short2;->y:S

    .line 499
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short2;->x:S

    .line 500
    return-object v0
.end method

.method public subShort3()Landroid/support/v8/renderscript/Short3;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Landroid/support/v8/renderscript/Short3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Short3;-><init>()V

    .line 504
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short3;->z:S

    .line 505
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short3;->y:S

    .line 506
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short3;->x:S

    .line 507
    return-object v0
.end method

.method public subShort4()Landroid/support/v8/renderscript/Short4;
    .locals 2

    .prologue
    .line 510
    new-instance v0, Landroid/support/v8/renderscript/Short4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Short4;-><init>()V

    .line 511
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->w:S

    .line 512
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->z:S

    .line 513
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->y:S

    .line 514
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/support/v8/renderscript/Short4;->x:S

    .line 515
    return-object v0
.end method

.method public subalign(I)V
    .locals 3

    .prologue
    .line 72
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 77
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0

    .line 80
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    if-lez v0, :cond_2

    .line 81
    :goto_1
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 82
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 83
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    goto :goto_1

    .line 87
    :cond_2
    return-void
.end method

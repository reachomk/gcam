.class public final Lcom/android/camera/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TYPE_TO_SIZE_MAP:[I

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private componentCountActual:I

.field private final dataType:S

.field private hasDefinedDefaultComponentCount:Z

.field private ifd:I

.field private offset:I

.field private final tagId:S

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 56
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 57
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 64
    sput-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 65
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 66
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 67
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 68
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 69
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 70
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 71
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-short p1, p0, Lcom/android/camera/exif/ExifTag;->tagId:S

    .line 121
    iput-short p2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    .line 122
    iput p3, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    .line 123
    iput-boolean p5, p0, Lcom/android/camera/exif/ExifTag;->hasDefinedDefaultComponentCount:Z

    .line 124
    iput p4, p0, Lcom/android/camera/exif/ExifTag;->ifd:I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method private final checkBadComponentCount(I)Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/camera/exif/ExifTag;->hasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    if-eq v0, p1, :cond_0

    .line 870
    const/4 v0, 0x1

    .line 872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    packed-switch p0, :pswitch_data_0

    .line 894
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 878
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 880
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 882
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 884
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 886
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 888
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 890
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 892
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static isValidIfd(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 951
    if-nez p1, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 954
    :cond_1
    instance-of v1, p1, Lcom/android/camera/exif/ExifTag;

    if-eqz v1, :cond_0

    .line 955
    check-cast p1, Lcom/android/camera/exif/ExifTag;

    .line 956
    iget-short v1, p1, Lcom/android/camera/exif/ExifTag;->tagId:S

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->tagId:S

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    iget v2, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    if-ne v1, v2, :cond_0

    iget-short v1, p1, Lcom/android/camera/exif/ExifTag;->dataType:S

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v1, v2, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 962
    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_2

    .line 965
    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/camera/util/Rational;

    if-eqz v1, :cond_3

    .line 970
    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/camera/util/Rational;

    if-eqz v1, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/util/Rational;

    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/android/camera/util/Rational;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 974
    :cond_3
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_4

    .line 975
    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 983
    :cond_5
    iget-object v1, p1, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final forceSetComponentCount(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    .line 206
    return-void
.end method

.method protected final getBytes([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 823
    array-length v0, p1

    .line 5837
    iget-short v1, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget-short v1, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 5838
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot get BYTE value from "

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    .line 5839
    invoke-static {v0}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5841
    :cond_1
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    if-le v0, v2, :cond_2

    .line 5842
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    .line 5841
    :cond_2
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    return-void
.end method

.method public final getComponentCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    return v0
.end method

.method public final getDataSize()I
    .locals 3

    .prologue
    .line 188
    .line 1197
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    .line 2181
    iget-short v1, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    .line 3141
    sget-object v2, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v1, v2, v1

    .line 188
    mul-int/2addr v0, v1

    return v0
.end method

.method public final getDataType()S
    .locals 1

    .prologue
    .line 181
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    return v0
.end method

.method public final getIfd()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->ifd:I

    return v0
.end method

.method protected final getOffset()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->offset:I

    return v0
.end method

.method protected final getRational(I)Lcom/android/camera/util/Rational;
    .locals 4

    .prologue
    .line 812
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 813
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot get RATIONAL value from "

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    .line 814
    invoke-static {v0}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/util/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final getStringByte()[B
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public final getTagId()S
    .locals 1

    .prologue
    .line 165
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->tagId:S

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValueAsBytes()[B
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getValueAsInts()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 638
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-object v0

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    .line 642
    array-length v1, v0

    new-array v2, v1, [I

    .line 643
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 644
    aget-wide v4, v0, v1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 646
    goto :goto_0
.end method

.method public final getValueAsLongs()[J
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    .line 679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getValueAsRational(J)Lcom/android/camera/util/Rational;
    .locals 6

    .prologue
    .line 626
    new-instance v0, Lcom/android/camera/util/Rational;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 5608
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsRationals()[Lcom/android/camera/util/Rational;

    move-result-object v1

    .line 5609
    if-eqz v1, :cond_0

    array-length v2, v1

    if-gtz v2, :cond_1

    .line 5610
    :cond_0
    :goto_0
    return-object v0

    .line 5612
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final getValueAsRationals()[Lcom/android/camera/util/Rational;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/android/camera/util/Rational;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/util/Rational;

    .line 595
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getValueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-object v0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 531
    :cond_2
    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    .line 532
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v2, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected final getValueAt(I)J
    .locals 4

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 778
    :goto_0
    return-wide v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 780
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot get integer value from "

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    .line 781
    invoke-static {v0}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final hasDefinedCount()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/camera/exif/ExifTag;->hasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public final hasValue()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setHasDefinedCount(Z)V
    .locals 0

    .prologue
    .line 861
    iput-boolean p1, p0, Lcom/android/camera/exif/ExifTag;->hasDefinedDefaultComponentCount:Z

    .line 862
    return-void
.end method

.method protected final setIfd(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/android/camera/exif/ExifTag;->ifd:I

    .line 159
    return-void
.end method

.method protected final setOffset(I)V
    .locals 0

    .prologue
    .line 857
    iput p1, p0, Lcom/android/camera/exif/ExifTag;->offset:I

    .line 858
    return-void
.end method

.method public final setValue(I)Z
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public final setValue(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 316
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-eq v0, v4, :cond_0

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-eq v0, v5, :cond_0

    move v0, v1

    .line 336
    :goto_0
    return v0

    .line 320
    :cond_0
    sget-object v0, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 322
    array-length v3, v0

    if-lez v3, :cond_3

    .line 323
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    if-eqz v3, :cond_1

    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v3, v5, :cond_2

    .line 330
    :cond_1
    :goto_1
    array-length v3, v0

    .line 331
    invoke-direct {p0, v3}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 332
    goto :goto_0

    .line 326
    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

    .line 327
    :cond_3
    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    if-ne v3, v2, :cond_1

    .line 328
    new-array v0, v2, [B

    aput-byte v1, v0, v1

    goto :goto_1

    .line 334
    :cond_4
    iput v3, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    .line 335
    iput-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    move v0, v2

    .line 336
    goto :goto_0
.end method

.method public final setValue([B)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 416
    array-length v2, p1

    .line 5400
    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5404
    :cond_0
    :goto_0
    return v0

    .line 5403
    :cond_1
    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-eq v3, v1, :cond_2

    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 5406
    :cond_2
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    .line 5407
    iget-object v3, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5408
    iput v2, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    move v0, v1

    .line 416
    goto :goto_0
.end method

.method public final setValue([I)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 228
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-eq v2, v4, :cond_2

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v2, v6, :cond_0

    .line 236
    :cond_2
    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v2, v4, :cond_4

    .line 3899
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_7

    aget v4, p1, v2

    .line 3900
    const v5, 0xffff

    if-gt v4, v5, :cond_3

    if-gez v4, :cond_6

    :cond_3
    move v2, v1

    .line 236
    :goto_2
    if-nez v2, :cond_0

    .line 238
    :cond_4
    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v2, v6, :cond_5

    .line 3917
    array-length v3, p1

    move v2, v0

    :goto_3
    if-ge v2, v3, :cond_9

    aget v4, p1, v2

    .line 3918
    if-gez v4, :cond_8

    move v2, v1

    .line 238
    :goto_4
    if-nez v2, :cond_0

    .line 242
    :cond_5
    array-length v2, p1

    new-array v2, v2, [J

    .line 243
    :goto_5
    array-length v3, p1

    if-ge v0, v3, :cond_a

    .line 244
    aget v3, p1, v0

    int-to-long v4, v3

    aput-wide v4, v2, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3899
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v2, v0

    .line 3904
    goto :goto_2

    .line 3917
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move v2, v0

    .line 3922
    goto :goto_4

    .line 246
    :cond_a
    iput-object v2, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    .line 247
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    move v0, v1

    .line 248
    goto :goto_0
.end method

.method public final setValue([J)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 4908
    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-wide v4, p1, v2

    .line 4909
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :cond_2
    move v2, v1

    .line 280
    :goto_2
    if-nez v2, :cond_0

    .line 283
    iput-object p1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    .line 284
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    move v0, v1

    .line 285
    goto :goto_0

    .line 4908
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    .line 4913
    goto :goto_2
.end method

.method public final setValue([Lcom/android/camera/util/Rational;)Z
    .locals 14

    .prologue
    const-wide/32 v12, -0x80000000

    const/16 v10, 0xa

    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 354
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-eq v2, v3, :cond_2

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v2, v10, :cond_0

    .line 360
    :cond_2
    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v2, v3, :cond_4

    .line 4926
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_8

    aget-object v4, p1, v2

    .line 4927
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    .line 4928
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    .line 4929
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 4930
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    :cond_3
    move v2, v1

    .line 360
    :goto_2
    if-nez v2, :cond_0

    .line 362
    :cond_4
    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    if-ne v2, v10, :cond_6

    .line 4938
    array-length v3, p1

    move v2, v0

    :goto_3
    if-ge v2, v3, :cond_a

    aget-object v4, p1, v2

    .line 4939
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-ltz v5, :cond_5

    .line 4940
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-ltz v5, :cond_5

    .line 4941
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getNumerator()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    .line 4942
    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    :cond_5
    move v2, v1

    .line 362
    :goto_4
    if-nez v2, :cond_0

    .line 366
    :cond_6
    iput-object p1, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    .line 367
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    move v0, v1

    .line 368
    goto :goto_0

    .line 4926
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move v2, v0

    .line 4934
    goto :goto_2

    .line 4938
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move v2, v0

    .line 4946
    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 991
    const-string v0, "tag id: %04X\n"

    new-array v1, v8, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->tagId:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/exif/ExifTag;->ifd:I

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    .line 995
    invoke-static {v0}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/exif/ExifTag;->componentCountActual:I

    iget v6, p0, Lcom/android/camera/exif/ExifTag;->offset:I

    .line 6734
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 6735
    const-string v0, ""

    .line 1001
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x4a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ifd id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ntype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\noffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nvalue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    return-object v0

    .line 6736
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 6737
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->dataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6738
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v7, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    .line 6740
    :cond_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6742
    :cond_2
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_4

    .line 6743
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v8, :cond_3

    .line 6744
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6746
    :cond_3
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6748
    :cond_4
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 6749
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v8, :cond_6

    .line 6750
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v7

    .line 6751
    if-nez v0, :cond_5

    .line 6752
    const-string v0, ""

    goto/16 :goto_0

    .line 6754
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6757
    :cond_6
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6760
    :cond_7
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

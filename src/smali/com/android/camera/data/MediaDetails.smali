.class public final Lcom/android/camera/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private details:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private units:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "MediaDetails"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/MediaDetails;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/MediaDetails;->details:Ljava/util/TreeMap;

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/MediaDetails;->units:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static extractExifInfo(Lcom/android/camera/data/MediaDetails;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x67

    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 121
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 123
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :goto_0
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 132
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 133
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v1, v2}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 134
    invoke-static {v1}, Lcom/android/camera/exif/ExifOrientation;->parseFromExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifOrientation;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/android/camera/exif/ExifOrientation;->getRotation(Lcom/android/camera/exif/ExifOrientation;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    .line 136
    sget-object v4, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_180:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne v3, v4, :cond_4

    .line 138
    :cond_0
    invoke-static {p0, v0, v6}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 139
    invoke-static {p0, v2, v7}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 146
    :goto_1
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 147
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x65

    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 148
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 149
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x69

    .line 148
    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 150
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x6c

    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 151
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 152
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x68

    .line 151
    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 153
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 154
    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    const/16 v2, 0x6b

    .line 153
    invoke-static {p0, v0, v2}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 155
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(J)Lcom/android/camera/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 158
    const v0, 0x7f0a0084

    .line 2085
    iget-object v1, p0, Lcom/android/camera/data/MediaDetails;->units:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    :cond_1
    return-void

    .line 124
    :catch_0
    move-exception v2

    .line 125
    sget-object v3, Lcom/android/camera/data/MediaDetails;->TAG:Ljava/lang/String;

    const-string v4, "Could not find file to read exif: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :catch_1
    move-exception v2

    .line 127
    sget-object v3, Lcom/android/camera/data/MediaDetails;->TAG:Ljava/lang/String;

    const-string v4, "Could not read exif from file: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v3, v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 142
    :cond_4
    invoke-static {p0, v2, v6}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 143
    invoke-static {p0, v0, v7}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    goto/16 :goto_1
.end method

.method public static formatDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v6, 0x3c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0xe10

    .line 166
    div-long v0, p1, v4

    .line 167
    mul-long v2, v0, v4

    sub-long v2, p1, v2

    div-long/2addr v2, v6

    .line 168
    mul-long/2addr v4, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    sub-long v4, p1, v4

    .line 170
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 171
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const v6, 0x7f0a005e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    .line 97
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v2

    .line 100
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 101
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(J)Lcom/android/camera/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    const/16 v1, 0x66

    if-ne p2, v1, :cond_7

    .line 108
    new-instance v1, Lcom/android/camera/data/MediaDetails$FlashState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/data/MediaDetails$FlashState;-><init>(I)V

    .line 109
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 114
    :cond_1
    :goto_1
    return-void

    .line 102
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 103
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1715
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v2

    .line 1716
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    .line 1717
    aget-wide v0, v2, v6

    .line 105
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1719
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v2

    .line 1720
    if-eqz v2, :cond_6

    array-length v3, v2

    if-lez v3, :cond_6

    .line 1721
    aget-byte v0, v2, v6

    int-to-long v0, v0

    goto :goto_2

    .line 1723
    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getValueAsRationals()[Lcom/android/camera/util/Rational;

    move-result-object v2

    .line 1724
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    aget-object v3, v2, v6

    invoke-virtual {v3}, Lcom/android/camera/util/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_4

    .line 1725
    aget-object v0, v2, v6

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->toDouble()D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_2

    .line 111
    :cond_7
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final addDetail(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->details:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public final getDetail(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->details:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getUnit(I)I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->units:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public final hasUnit(I)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->units:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->details:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->details:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

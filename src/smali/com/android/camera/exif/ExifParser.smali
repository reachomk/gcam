.class final Lcom/android/camera/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/exif/ExifParser$ExifTagEvent;,
        Lcom/android/camera/exif/ExifParser$IfdEvent;,
        Lcom/android/camera/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
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

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/android/camera/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/android/camera/exif/ExifTag;

.field private mTag:Lcom/android/camera/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "ExifParser"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    .line 127
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 150
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 151
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_GPS_IFD:S

    .line 152
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 153
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 154
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 155
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 156
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 157
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 158
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 159
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 160
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 161
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    .line 160
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/camera/exif/ExifInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v4, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 134
    iput v4, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 142
    iput-boolean v4, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    .line 163
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-object p3, p0, Lcom/android/camera/exif/ExifParser;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    .line 195
    new-instance v0, Lcom/android/camera/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/android/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    .line 196
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    .line 197
    iget-boolean v0, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    if-nez v0, :cond_2

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 1741
    :cond_2
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 1742
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_3

    .line 1743
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 1750
    :goto_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    .line 1751
    new-instance v0, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :cond_3
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_4

    .line 1745
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_1

    .line 1747
    :cond_4
    new-instance v0, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 203
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 204
    new-instance v2, Lcom/android/camera/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_6
    long-to-int v2, v0

    iput v2, p0, Lcom/android/camera/exif/ExifParser;->mIfd0Position:I

    .line 207
    iput v4, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    .line 208
    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_7
    invoke-direct {p0, v4, v0, v1}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 210
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 211
    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/exif/ExifParser;->mDataAboveIfd0:[B

    .line 212
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifParser;->read([B)I

    goto/16 :goto_0
.end method

.method private final checkAllowed(II)Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mInterface:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 635
    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p1}, Lcom/android/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    goto :goto_0
.end method

.method private final checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v1

    .line 587
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v2

    .line 588
    sget-short v3, Lcom/android/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    if-ne v1, v3, :cond_3

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 589
    invoke-direct {p0, v5}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 592
    :cond_3
    sget-short v3, Lcom/android/camera/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v1, v3, :cond_4

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 593
    invoke-direct {p0, v6}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 596
    :cond_4
    sget-short v3, Lcom/android/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v1, v3, :cond_5

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 597
    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 598
    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 601
    :cond_5
    sget-short v3, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v1, v3, :cond_6

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 602
    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 603
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    .line 2519
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/camera/exif/ExifParser$ImageEvent;

    invoke-direct {v1, v4}, Lcom/android/camera/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 606
    :cond_6
    sget-short v3, Lcom/android/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v1, v3, :cond_7

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 607
    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 608
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iput-object p1, p0, Lcom/android/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

    goto/16 :goto_0

    .line 611
    :cond_7
    sget-short v3, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v1, v3, :cond_9

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 612
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 614
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 615
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    .line 618
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    :cond_8
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    invoke-direct {v3, p1, v0}, Lcom/android/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/camera/exif/ExifTag;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 625
    :cond_9
    sget-short v0, Lcom/android/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v1, v0, :cond_0

    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 626
    invoke-direct {p0, v2, v0}, Lcom/android/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iput-object p1, p0, Lcom/android/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/camera/exif/ExifTag;

    goto/16 :goto_0
.end method

.method private final isIfdRequested(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 168
    :pswitch_0
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 170
    :pswitch_1
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 172
    :pswitch_2
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 174
    :pswitch_3
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 176
    :pswitch_4
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private final isThumbnailRequested()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 386
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 388
    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 389
    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    invoke-direct {p0, v3}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 393
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 396
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/android/camera/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method private final readTag()Lcom/android/camera/exif/ExifTag;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 528
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 529
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 530
    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    .line 531
    new-instance v0, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    invoke-static {v2}, Lcom/android/camera/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    sget-object v0, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    const-string v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    .line 537
    const/4 v0, 0x0

    .line 574
    :goto_0
    return-object v0

    .line 540
    :cond_1
    new-instance v0, Lcom/android/camera/exif/ExifTag;

    long-to-int v3, v8

    iget v4, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    long-to-int v7, v8

    if-eqz v7, :cond_2

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 547
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v1

    .line 548
    const/4 v3, 0x4

    if-le v1, v3, :cond_5

    .line 549
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 550
    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    .line 551
    new-instance v0, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v5, v6

    .line 540
    goto :goto_1

    .line 555
    :cond_3
    iget v1, p0, Lcom/android/camera/exif/ExifParser;->mIfd0Position:I

    int-to-long v10, v1

    cmp-long v1, v4, v10

    if-gez v1, :cond_4

    const/4 v1, 0x7

    if-ne v2, v1, :cond_4

    .line 556
    long-to-int v1, v8

    new-array v1, v1, [B

    .line 557
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v3, v4

    add-int/lit8 v3, v3, -0x8

    long-to-int v4, v8

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    goto :goto_0

    .line 561
    :cond_4
    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    goto :goto_0

    .line 564
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->hasDefinedCount()Z

    move-result v2

    .line 566
    invoke-virtual {v0, v6}, Lcom/android/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 568
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifParser;->readFullTagValue(Lcom/android/camera/exif/ExifTag;)V

    .line 569
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 570
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    .line 572
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    goto :goto_0
.end method

.method private readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    .line 8865
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    .line 848
    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private final registerIfd(IJ)V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/camera/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method private final registerUncompressedStrip(IJ)V
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/camera/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method private final seekTiffData(Ljava/io/InputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 757
    new-instance v3, Lcom/android/camera/exif/CountedDataInputStream;

    invoke-direct {v3, p1}, Lcom/android/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 758
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, -0x28

    if-eq v1, v2, :cond_0

    .line 759
    new-instance v0, Lcom/android/camera/exif/ExifInvalidFormatException;

    const-string v1, "Invalid JPEG format"

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    move v2, v1

    .line 763
    :goto_0
    const/16 v1, -0x27

    if-eq v2, v1, :cond_1

    invoke-static {v2}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 767
    const/16 v4, -0x1f

    if-ne v2, v4, :cond_2

    .line 770
    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 771
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v2

    .line 772
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 773
    add-int/lit8 v1, v1, -0x6

    .line 774
    const v5, 0x45786966

    if-ne v2, v5, :cond_2

    if-nez v4, :cond_2

    .line 775
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStartPosition:I

    .line 776
    iput v1, p0, Lcom/android/camera/exif/ExifParser;->mApp1End:I

    .line 778
    const/4 v0, 0x1

    .line 788
    :cond_1
    :goto_1
    return v0

    .line 782
    :cond_2
    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    add-int/lit8 v2, v1, -0x2

    int-to-long v4, v2

    add-int/lit8 v1, v1, -0x2

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 783
    :cond_3
    sget-object v1, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    const-string v2, "Invalid JPEG format."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 786
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    move v2, v1

    .line 787
    goto :goto_0
.end method

.method private skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 358
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    .line 359
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 360
    if-le v0, v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_3

    .line 364
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_4

    .line 365
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 366
    add-int/lit8 v0, v0, 0xc

    .line 367
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    if-eqz v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-direct {p0, v2}, Lcom/android/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V

    goto :goto_1

    .line 373
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifParser;->skipTo(I)V

    .line 375
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 377
    iget v2, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_0

    .line 378
    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 380
    invoke-direct {p0, v4, v0, v1}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method

.method private final skipTo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/exif/CountedDataInputStream;->skipTo(J)V

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected final getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final getCurrentIfd()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected final getStripIndex()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected final getStripSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/camera/exif/ExifTag;

    if-nez v1, :cond_0

    .line 476
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final getTag()Lcom/android/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    return-object v0
.end method

.method protected final next()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v0, 0x1

    .line 262
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/exif/ExifParser;->mContainExifData:Z

    if-nez v3, :cond_2

    move v0, v2

    .line 347
    :cond_1
    :goto_0
    return v0

    .line 265
    :cond_2
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    .line 266
    iget v4, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    .line 267
    if-ge v3, v4, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readTag()Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 269
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    if-eqz v3, :cond_0

    .line 272
    iget-boolean v1, p0, Lcom/android/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V

    goto :goto_0

    .line 276
    :cond_3
    if-ne v3, v4, :cond_5

    .line 278
    iget v3, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    if-nez v3, :cond_6

    .line 279
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 280
    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    :cond_4
    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 282
    invoke-direct {p0, v0, v4, v5}, Lcom/android/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 301
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 303
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 305
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    instance-of v0, v1, Lcom/android/camera/exif/ExifParser$IfdEvent;

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 317
    check-cast v0, Lcom/android/camera/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/android/camera/exif/ExifParser$IfdEvent;->ifd:I

    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    .line 318
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 319
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 321
    iget v0, p0, Lcom/android/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v3, p0, Lcom/android/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/android/camera/exif/ExifParser;->mApp1End:I

    if-le v0, v3, :cond_8

    .line 322
    sget-object v0, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/exif/ExifParser;->mIfdType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid size of IFD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 323
    goto/16 :goto_0

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 289
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    sub-int/2addr v0, v3

    .line 291
    :goto_2
    if-ge v0, v1, :cond_7

    .line 292
    sget-object v1, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 294
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 295
    cmp-long v3, v0, v6

    if-eqz v3, :cond_5

    .line 296
    sget-object v3, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid link to next IFD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 307
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    .line 310
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to skip to data at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", the file may be broken."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 326
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 327
    check-cast v1, Lcom/android/camera/exif/ExifParser$IfdEvent;

    iget-boolean v0, v1, Lcom/android/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_9

    .line 328
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 330
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    .line 332
    :cond_a
    instance-of v0, v1, Lcom/android/camera/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_b

    .line 333
    check-cast v1, Lcom/android/camera/exif/ExifParser$ImageEvent;

    iput-object v1, p0, Lcom/android/camera/exif/ExifParser;->mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

    .line 334
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mImageEvent:Lcom/android/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/camera/exif/ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .line 336
    :cond_b
    check-cast v1, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    .line 337
    iget-object v0, v1, Lcom/android/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/camera/exif/ExifTag;

    iput-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 338
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_c

    .line 339
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifParser;->readFullTagValue(Lcom/android/camera/exif/ExifTag;)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTag:Lcom/android/camera/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/camera/exif/ExifTag;)V

    .line 342
    :cond_c
    iget-boolean v0, v1, Lcom/android/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_5

    .line 343
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 347
    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method

.method protected final read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected final readFullTagValue(Lcom/android/camera/exif/ExifTag;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v0

    .line 644
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 647
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    .line 648
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 651
    instance-of v2, v0, Lcom/android/camera/exif/ExifParser$ImageEvent;

    if-eqz v2, :cond_3

    .line 653
    sget-object v2, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    const-string v3, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 655
    sget-object v2, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid thumbnail offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 738
    :goto_2
    :pswitch_0
    return-void

    .line 653
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_3
    instance-of v2, v0, Lcom/android/camera/exif/ExifParser$IfdEvent;

    if-eqz v2, :cond_5

    .line 659
    sget-object v2, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    check-cast v0, Lcom/android/camera/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/android/camera/exif/ExifParser$IfdEvent;->ifd:I

    .line 661
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ifd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " overlaps value for tag: \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    sub-int/2addr v0, v2

    .line 671
    sget-object v2, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x34

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid size of tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting count to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->forceSetComponentCount(I)V

    goto/16 :goto_1

    .line 662
    :cond_5
    instance-of v2, v0, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    if-eqz v2, :cond_4

    .line 663
    sget-object v2, Lcom/android/camera/exif/ExifParser;->TAG:Ljava/lang/String;

    check-cast v0, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/android/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/camera/exif/ExifTag;

    .line 666
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Tag value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " overlaps value for tag: \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 681
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifParser;->read([B)I

    .line 683
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    goto/16 :goto_2

    .line 687
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 2819
    sget-object v2, Lcom/android/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 2828
    if-lez v0, :cond_6

    .line 2829
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    .line 3116
    new-array v4, v0, [B

    .line 4072
    array-length v0, v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 3118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 687
    :goto_4
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 2831
    :cond_6
    const-string v0, ""

    goto :goto_4

    .line 691
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [J

    .line 692
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_7

    .line 693
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 695
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    goto/16 :goto_2

    .line 700
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/util/Rational;

    .line 701
    array-length v2, v0

    :goto_6
    if-ge v1, v2, :cond_8

    .line 4856
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 4857
    invoke-direct {p0}, Lcom/android/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v6

    .line 4858
    new-instance v3, Lcom/android/camera/util/Rational;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 702
    aput-object v3, v0, v1

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 704
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/util/Rational;)Z

    goto/16 :goto_2

    .line 709
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 710
    array-length v2, v0

    :goto_7
    if-ge v1, v2, :cond_9

    .line 5840
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 711
    aput v3, v0, v1

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 713
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_2

    .line 718
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 719
    array-length v2, v0

    :goto_8
    if-ge v1, v2, :cond_a

    .line 5865
    iget-object v3, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v3

    .line 720
    aput v3, v0, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 722
    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_2

    .line 727
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/android/camera/util/Rational;

    .line 728
    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_b

    .line 6865
    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v1

    .line 7865
    iget-object v4, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v4

    .line 5874
    new-instance v5, Lcom/android/camera/util/Rational;

    int-to-long v6, v1

    int-to-long v8, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 729
    aput-object v5, v2, v0

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 731
    :cond_b
    invoke-virtual {p1, v2}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/util/Rational;)Z

    goto/16 :goto_2

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected final registerForTagValue(Lcom/android/camera/exif/ExifTag;)V
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/exif/ExifParser;->mTiffStream:Lcom/android/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_0
    return-void
.end method

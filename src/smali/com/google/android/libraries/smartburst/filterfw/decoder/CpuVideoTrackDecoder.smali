.class public Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;
.super Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;
.source "CpuVideoTrackDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;
    }
.end annotation


# instance fields
.field private mCurrentIsKeyFrame:Z

.field private mCurrentPresentationTimeUs:J

.field private mDecodedBuffer:Ljava/nio/ByteBuffer;

.field private mFrameConverter:Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;

.field private final mHeight:I

.field private mRgbaBuffer:Ljava/nio/ByteBuffer;

.field private final mWidth:I


# direct methods
.method protected constructor <init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;-><init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V

    .line 48
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    .line 49
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    .line 50
    return-void
.end method

.method private convertCurrentFrame()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 151
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mFrameConverter:Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;-><init>(Landroid/media/MediaFormat;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mFrameConverter:Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mFrameConverter:Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mDecodedBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;->access$000(Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder$FrameConverter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 162
    return-void
.end method

.method private copyRotate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    .line 175
    sparse-switch p3, :sswitch_data_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :sswitch_0
    const/4 v4, 0x0

    .line 179
    iget v6, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    move v5, v0

    .line 199
    :goto_0
    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/PixelUtils;->copyPixels(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    .line 200
    return-void

    .line 182
    :sswitch_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    mul-int v4, v1, v2

    .line 183
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    neg-int v5, v1

    move v6, v0

    .line 185
    goto :goto_0

    .line 187
    :sswitch_2
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    add-int/lit8 v4, v0, -0x1

    .line 188
    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    goto :goto_0

    .line 192
    :sswitch_3
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    mul-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    .line 194
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    neg-int v0, v0

    move v5, v6

    move v6, v0

    .line 195
    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private static findDecoderCodec(Landroid/media/MediaFormat;[I)Landroid/media/MediaCodec;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 220
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->intArrayToPriorityMap([I)Landroid/util/SparseIntArray;

    move-result-object v5

    move v0, v1

    .line 221
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 223
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 226
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    const-string v3, "mime"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 233
    new-instance v8, Ljava/util/HashSet;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 236
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    invoke-virtual {v6, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 238
    iget-object v7, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v8, v7

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_1

    aget v9, v7, v3

    .line 239
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    .line 240
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 241
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    :goto_2
    return-object v2

    .line 251
    :cond_3
    invoke-virtual {v4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    move-object v2, v0

    .line 258
    goto :goto_2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto :goto_3
.end method

.method private static intArrayToPriorityMap([I)Landroid/util/SparseIntArray;
    .locals 3

    .prologue
    .line 263
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 264
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 265
    aget v2, p0, v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected copyFrameDataTo(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    .line 96
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    .line 97
    invoke-static {p4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->needSwapDimension(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mHeight:I

    .line 101
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mWidth:I

    .line 105
    :cond_0
    new-array v4, v7, [I

    aput v1, v4, v2

    aput v0, v4, v3

    .line 106
    invoke-interface {p3, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;->scale(II)[I

    move-result-object v5

    .line 108
    aget v6, v5, v2

    if-ne v6, v1, :cond_1

    aget v1, v5, v3

    if-eq v1, v0, :cond_4

    :cond_1
    move v0, v3

    .line 111
    :goto_0
    const/16 v1, 0x12d

    const/16 v6, 0x8

    invoke-static {v1, v6}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 112
    if-eqz v0, :cond_5

    .line 113
    invoke-static {v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 118
    :goto_1
    invoke-virtual {p1, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->resize([I)V

    .line 121
    invoke-virtual {v1, v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 122
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    if-nez p4, :cond_6

    .line 124
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 128
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 131
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    aget v4, v5, v2

    aget v3, v5, v3

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->getTimestampNs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 142
    if-eqz p2, :cond_3

    .line 143
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;

    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mCurrentIsKeyFrame:Z

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->getTimestampNs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setTimestamp(J)V

    .line 146
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 108
    goto :goto_0

    :cond_5
    move-object v1, p1

    .line 114
    goto :goto_1

    .line 126
    :cond_6
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mRgbaBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v6, v4, p4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->copyRotate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_2
.end method

.method public getTimestampNs()J
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mCurrentPresentationTimeUs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method protected initMediaCodec(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->findDecoderCodec(Landroid/media/MediaFormat;[I)Landroid/media/MediaCodec;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not find a suitable decoder for format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 68
    return-object v0

    .line 60
    nop

    :array_0
    .array-data 4
        0x10
        0x13
    .end array-data
.end method

.method protected onDataAvailable(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-wide v0, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mCurrentPresentationTimeUs:J

    .line 76
    iput-boolean p5, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mCurrentIsKeyFrame:Z

    .line 77
    aget-object v0, p2, p3

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->mDecodedBuffer:Ljava/nio/ByteBuffer;

    .line 79
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->convertCurrentFrame()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->markFrameAvailable()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->notifyListener()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;->waitForFrameGrabs()Z

    .line 86
    invoke-virtual {p1, p3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 88
    return v2
.end method

.class final Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AtLeast"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSampleSizeRounding$514KIIA955666RRD5TH7ARBGEHIM6Q1FCTM6IP355TM6UOB45TP6ASRFELP66P9FC9KN8RB1E0NK8RRNDPPM2RBGDHIL6T3IC5Q6APRP4H9M2RBGDHIL6QBQCL96UTBECHKMSPPR$514KIIA9554G____()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FE9IN6RRLE9HMABR2D5Q6QOBG5T26UTREEDGMQS3CCL9N8SJ1EHIMEU94ADGMQS3CCL9MIUJ5A9NNARJ4D5N6EEO_:I

    return v0
.end method

.method public final getScaleFactor(IIII)F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    div-int v1, p2, p4

    div-int v2, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

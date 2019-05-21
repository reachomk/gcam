.class final Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "None"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSampleSizeRounding$514KIIA955666RRD5TH7ARBGEHIM6Q1FCTM6IP355TM6UOB45TP6ASRFELP66P9FC9KN8RB1E0NK8RRNDPPM2RBGDHIL6T3IC5Q6APRP4H9M2RBGDHIL6QBQCL96UTBECHKMSPPR$514KIIA9554G____()I
    .locals 1

    .prologue
    .line 178
    sget v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FE9IN6RRLE9HMABR2D5Q6QOBG5T26UTREEDGMQS3CCL9N8SJ1EHIMEU94ADGMQS3CCL9MIUJ5A9NNARJ4D5N6EEO_:I

    return v0
.end method

.method public final getScaleFactor(IIII)F
    .locals 1

    .prologue
    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

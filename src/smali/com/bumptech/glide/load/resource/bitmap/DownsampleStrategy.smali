.class public abstract Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.super Ljava/lang/Object;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtMost;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterOutside;,
        Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;-><init>(B)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 34
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterOutside;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterOutside;-><init>(B)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;-><init>(B)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 46
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtMost;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtMost;-><init>(B)V

    .line 55
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;-><init>(B)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 60
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>(B)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSampleSizeRounding$514KIIA955666RRD5TH7ARBGEHIM6Q1FCTM6IP355TM6UOB45TP6ASRFELP66P9FC9KN8RB1E0NK8RRNDPPM2RBGDHIL6T3IC5Q6APRP4H9M2RBGDHIL6QBQCL96UTBECHKMSPPR$514KIIA9554G____()I
.end method

.method public abstract getScaleFactor(IIII)F
.end method

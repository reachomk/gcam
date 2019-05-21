.class public final Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;
.super Ljava/lang/Object;
.source "SummaryStackImage.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/artifacts/PreviewableImage;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage$StreamHandleToSinkFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/artifacts/PreviewableImage",
        "<",
        "Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFrameScore:F

.field private final mIsExtra:Z

.field private final mIsPrimary:Z

.field private final mSequenceIndex:I

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(JIFZZ)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mTimestampNs:J

    .line 54
    iput p3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mSequenceIndex:I

    .line 55
    iput p4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mFrameScore:F

    .line 56
    iput-boolean p5, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mIsPrimary:Z

    .line 57
    iput-boolean p6, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mIsExtra:Z

    .line 58
    return-void
.end method

.method private getMetadata(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;)",
            "Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;

    const-string v1, "image/jpeg"

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mTimestampNs:J

    iget v4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mSequenceIndex:I

    iget v5, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mFrameScore:F

    .line 75
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getHeight()I

    move-result v7

    iget-boolean v8, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mIsPrimary:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;-><init>(Ljava/lang/String;JIFIIZ)V

    .line 74
    return-object v0
.end method


# virtual methods
.method public final getFrameScore()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mFrameScore:F

    return v0
.end method

.method public final bridge synthetic getMetadata(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->getMetadata(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestampNs()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mTimestampNs:J

    return-wide v0
.end method

.method public final isExtra()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mIsExtra:Z

    return v0
.end method

.method public final isPrimary()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mIsPrimary:Z

    return v0
.end method

.method public final rasterize(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/storage/RasterSink;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/storage/RasterSink",
            "<",
            "Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage$StreamHandleToSinkFunction;

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->getMetadata(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;

    move-result-object v2

    invoke-direct {v1, p4, p2, v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage$StreamHandleToSinkFunction;-><init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/storage/RasterSink;Lcom/google/android/libraries/smartburst/storage/SummaryStackImageMetadata;)V

    .line 112
    invoke-virtual {v0, p3, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public final rasterizePreview(Lcom/google/android/libraries/smartburst/media/Summary;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SummaryStackImage;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 124
    invoke-static {p4, p2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->loadIntoDrawableResource(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Landroid/content/Context;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 123
    return-object v0
.end method

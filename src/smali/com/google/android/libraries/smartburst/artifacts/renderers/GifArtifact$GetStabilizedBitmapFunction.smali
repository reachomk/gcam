.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;
.super Ljava/lang/Object;
.source "GifArtifact.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetStabilizedBitmapFunction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction$StabilizeBitmapHandleFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$Frame;",
        "Landroid/util/Pair",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field private final mFrameWarper:Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;

.field private final mOutputSize:Lcom/google/android/libraries/smartburst/utils/Size;

.field private final mSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/utils/Size;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/utils/Size;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 313
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mOutputSize:Lcom/google/android/libraries/smartburst/utils/Size;

    .line 314
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 315
    iput-object p5, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mFrameWarper:Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;

    .line 316
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;)Lcom/google/android/libraries/smartburst/utils/Size;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mOutputSize:Lcom/google/android/libraries/smartburst/utils/Size;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;)Lcom/google/android/libraries/smartburst/media/BitmapAllocator;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;)Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mFrameWarper:Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    check-cast p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$Frame;

    .line 1320
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;->mSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    iget-wide v2, p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$Frame;->timestampNs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction$StabilizeBitmapHandleFunction;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction$StabilizeBitmapHandleFunction;-><init>(Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$GetStabilizedBitmapFunction;Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$Frame;)V

    .line 1321
    invoke-virtual {v0, p2, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 301
    return-object v0
.end method

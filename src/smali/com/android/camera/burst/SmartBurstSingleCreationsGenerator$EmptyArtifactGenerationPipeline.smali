.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/pipeline/Pipeline;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyArtifactGenerationPipeline"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/pipeline/Pipeline",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;-><init>()V

    return-void
.end method


# virtual methods
.method public final process()Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;-><init>()V

    .line 1142
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public final stop()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public final suspend()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

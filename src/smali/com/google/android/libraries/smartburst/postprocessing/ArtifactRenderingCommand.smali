.class public final Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;
.super Ljava/lang/Object;
.source "ArtifactRenderingCommand.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

.field private final mSegment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    .line 35
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mSegment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 23
    check-cast p1, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;

    .line 2039
    iget-object v0, p1, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    .line 1070
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 23
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    check-cast p1, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;

    .line 57
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    iget-object v3, p1, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mSegment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    iget-object v3, p1, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mSegment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final execute(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mSegment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-interface {v0, v1, p1}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;->renderSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public final getRenderer()Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->mSegment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

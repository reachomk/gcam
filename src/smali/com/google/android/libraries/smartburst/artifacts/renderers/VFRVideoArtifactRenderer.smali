.class public final Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;
.super Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;
.source "VFRVideoArtifactRenderer.java"


# instance fields
.field private final mTempVFRVideoFile:Ljava/io/File;

.field private final mVideoPresentationTimeScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getVFRTempVideoFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;-><init>(Ljava/io/File;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "Video_VFR"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;-><init>(Ljava/lang/String;ILjava/io/File;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/io/File;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->mTempVFRVideoFile:Ljava/io/File;

    .line 41
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->mVideoPresentationTimeScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 42
    return-void
.end method


# virtual methods
.method public final renderSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
            ">;"
        }
    .end annotation

    .prologue
    const v1, 0x49742400    # 1000000.0f

    .line 68
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->first()J

    move-result-wide v3

    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->mVideoPresentationTimeScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->first()J

    move-result-wide v6

    .line 74
    invoke-interface {v0, v6, v7}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-long v6, v0

    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->mVideoPresentationTimeScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->last()J

    move-result-wide v8

    .line 76
    invoke-interface {v0, v8, v9}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-long v8, v0

    .line 79
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifact;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->getPriority()I

    move-result v2

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifactRenderer;->mTempVFRVideoFile:Ljava/io/File;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/smartburst/artifacts/renderers/VFRVideoArtifact;-><init>(Ljava/lang/String;IJLjava/io/File;JJ)V

    .line 1142
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 82
    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

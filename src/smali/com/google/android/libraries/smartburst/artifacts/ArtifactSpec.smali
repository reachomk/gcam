.class public Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;
.super Ljava/lang/Object;
.source "ArtifactSpec.java"


# instance fields
.field private final mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

.field private final mSegmenter:Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;->mSegmenter:Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    .line 38
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    .line 39
    return-void
.end method


# virtual methods
.method public final getRenderer()Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    return-object v0
.end method

.method public final getSegmenter()Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;->mSegmenter:Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 57
    const-string v0, "ArtifactSpec[segmenter="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;->mSegmenter:Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;->mRenderer:Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", renderer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

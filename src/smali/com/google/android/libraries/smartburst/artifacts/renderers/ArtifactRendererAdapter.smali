.class public abstract Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;
.super Ljava/lang/Object;
.source "ArtifactRendererAdapter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;


# instance fields
.field protected final mArtifactType:Ljava/lang/String;

.field private final mClass:Ljava/lang/String;

.field protected final mPriority:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mClass:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mArtifactType:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mPriority:I

    .line 28
    return-void
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mPriority:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mArtifactType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mClass:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mArtifactType:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;->mPriority:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

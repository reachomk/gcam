.class public final Lcom/google/android/libraries/smartburst/postprocessing/HighestPriorityInTypeArtifactFilter;
.super Ljava/lang/Object;
.source "HighestPriorityInTypeArtifactFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/postprocessing/ArtifactFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->getRenderer()Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;->getType()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isCollage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->getPriority(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 33
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->getPriority(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isGif(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 35
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->getPriority(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_6

    .line 36
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->getPriority(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    :goto_1
    move v2, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/postprocessing/ArtifactRenderingCommand;->getRenderer()Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;->getType()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isCollage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->getPriority(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v1, :cond_2

    .line 45
    :cond_3
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isGif(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 46
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->getPriority(Ljava/lang/String;)I

    move-result v5

    if-lt v5, v2, :cond_2

    .line 49
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_5
    return-object v3

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "HighestPriorityInTypeArtifactFilter"

    return-object v0
.end method

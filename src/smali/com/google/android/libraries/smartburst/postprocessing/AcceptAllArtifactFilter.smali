.class public final Lcom/google/android/libraries/smartburst/postprocessing/AcceptAllArtifactFilter;
.super Ljava/lang/Object;
.source "AcceptAllArtifactFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/postprocessing/ArtifactFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "AcceptAllArtifactFilter"

    return-object v0
.end method

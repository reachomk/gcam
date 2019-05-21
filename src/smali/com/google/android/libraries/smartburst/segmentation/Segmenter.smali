.class public abstract Lcom/google/android/libraries/smartburst/segmentation/Segmenter;
.super Ljava/lang/Object;
.source "Segmenter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resegment(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/segmentation/Segmenter;->segment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 37
    :cond_0
    return-object v1
.end method

.method public abstract segment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Segmenter"

    return-object v0
.end method

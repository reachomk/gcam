.class public final Lcom/google/android/libraries/smartburst/segmentation/mergers/ToSingleActionMerger;
.super Ljava/lang/Object;
.source "ToSingleActionMerger.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resegment(Ljava/util/List;)Ljava/util/List;
    .locals 8
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
    .line 30
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 33
    sget-object v4, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;->ACTION:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->hasLabel(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v1, v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 43
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 46
    sget-object v7, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;->ACTION:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->hasLabel(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 47
    const/4 v2, 0x1

    .line 49
    :cond_2
    if-eqz v2, :cond_6

    .line 50
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    if-ne v0, v1, :cond_1

    .line 60
    :cond_3
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mergeSegments(Ljava/util/List;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v5}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_4
    return-object v0

    .line 37
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "ToSingleActionMerger"

    return-object v0
.end method

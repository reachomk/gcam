.class public abstract Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;
.super Ljava/lang/Object;
.source "SegmentClassifier.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract classify(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;",
            ">;"
        }
    .end annotation
.end method

.method public final resegment(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 34
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;->classify(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->withLabels(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "SegmentClassifier"

    return-object v0
.end method

.class public final Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;
.source "CompositeSegmentClassifier.java"


# instance fields
.field private final mClassifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;->mClassifierList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addClassifier(Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;)Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;->mClassifierList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p0
.end method

.method public final classify(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/Set;
    .locals 3
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

    .prologue
    .line 1164
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;->mClassifierList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/segmentation/SegmentClassifier;->classify(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    const-string v0, "[CompositeSegmentClassifier: { "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    .line 47
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/classifiers/CompositeSegmentClassifier;->mClassifierList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

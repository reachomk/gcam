.class public final Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
.super Ljava/lang/Object;
.source "FrameSegment.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEndTimestampNs:J

.field private final mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 124
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;JJ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 116
    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;JJLjava/util/Set;)V

    .line 117
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;JJLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    .line 102
    invoke-static {p6}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 104
    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 106
    :cond_0
    :goto_0
    iput-wide p2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    .line 107
    cmp-long v0, p4, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 109
    :cond_1
    :goto_1
    iput-wide p4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    .line 110
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->checkTimestamps()V

    .line 111
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 120
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;JJLjava/util/Set;)V

    .line 121
    return-void
.end method

.method private final checkTimestamps()V
    .locals 9

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x47

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Segment range is negative: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 342
    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 343
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    iget-wide v6, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Frame "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within segment ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_3
    return-void
.end method

.method public static mergeSegments(Ljava/util/List;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;)",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 143
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1164
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 145
    const-wide v2, 0x7fffffffffffffffL

    .line 146
    const-wide/high16 v4, -0x8000000000000000L

    .line 147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v8, v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1210
    iget-wide v10, v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    .line 1222
    iget-wide v8, v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    .line 152
    cmp-long v12, v10, v2

    if-gez v12, :cond_1

    move-wide v2, v10

    .line 154
    :cond_1
    cmp-long v10, v8, v4

    if-lez v10, :cond_2

    move-wide v4, v8

    .line 1275
    :cond_2
    iget-object v0, v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    .line 155
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    .line 156
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No segments found to merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_5
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;JJLjava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    if-ne p1, p0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    instance-of v2, p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    if-eqz v2, :cond_3

    .line 314
    check-cast p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 315
    iget-wide v2, p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    .line 317
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    .line 318
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 315
    goto :goto_0

    :cond_3
    move v0, v1

    .line 320
    goto :goto_0
.end method

.method public final first()J
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "No frames in segment"

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v1

    .line 248
    goto :goto_0
.end method

.method public final getEndRowTimestampNs()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    return-wide v0
.end method

.method public final getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final getLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    return-object v0
.end method

.method public final getStartRowTimestampNs()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    return-wide v0
.end method

.method public final hasLabel(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;)Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 325
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final last()J
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No frames in segment"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mLabels:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    .line 331
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x52

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "[range="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    return-object v0
.end method

.method public final withLabels(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;",
            ">;)",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mFrames:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mStartTimestampNs:J

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->mEndTimestampNs:J

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;JJLjava/util/Set;)V

    return-object v0
.end method

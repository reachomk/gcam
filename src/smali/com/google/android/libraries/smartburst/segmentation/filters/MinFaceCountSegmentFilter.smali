.class public final Lcom/google/android/libraries/smartburst/segmentation/filters/MinFaceCountSegmentFilter;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;
.source "MinFaceCountSegmentFilter.java"


# instance fields
.field private final mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

.field private final mMinimumFaceCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/segmentation/filters/MinFaceCountSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MinFaceCountSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 36
    iput p2, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MinFaceCountSegmentFilter;->mMinimumFaceCount:I

    .line 37
    return-void
.end method


# virtual methods
.method public final filterSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;
    .locals 6

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->getFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MinFaceCountSegmentFilter;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->fetchMetaData(J)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v0

    .line 55
    sget-object v3, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/storage/Metadata;->hasValueForKey(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 56
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/MinFaceCountSegmentFilter;->mMinimumFaceCount:I

    if-lt v0, v3, :cond_0

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "MinFaceCountSegmentFilter"

    return-object v0
.end method

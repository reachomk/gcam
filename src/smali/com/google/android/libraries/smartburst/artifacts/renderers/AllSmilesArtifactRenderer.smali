.class public final Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;
.super Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;
.source "AllSmilesArtifactRenderer.java"


# instance fields
.field private final mExtrapolatorModels:Ljava/nio/ByteBuffer;

.field private final mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/smartburst/storage/MetadataStore;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/ArtifactRendererAdapter;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 36
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->mExtrapolatorModels:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method public final renderSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot create all smiles photo from an empty stack!"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 45
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->first()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->fetchMetaData(J)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->METADATA_IMAGE_SIZE:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/Size;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/smartburst/storage/MetadataStore;->fetchMetaData(J)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    .line 51
    sget-object v0, Lcom/google/android/libraries/smartburst/storage/Metadata;->METADATA_IMAGE_SIZE:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/Size;

    .line 52
    invoke-virtual {v7, v0}, Lcom/google/android/libraries/smartburst/utils/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected metadata image size to be consistent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-virtual {v1, v4}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 57
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->last()J

    move-result-wide v4

    .line 60
    new-instance v1, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->getPriority()I

    move-result v3

    iget-object v8, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;->mExtrapolatorModels:Ljava/nio/ByteBuffer;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact;-><init>(Ljava/lang/String;IJLjava/util/Map;Lcom/google/android/libraries/smartburst/utils/Size;Ljava/nio/ByteBuffer;)V

    .line 1142
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 63
    return-object v0
.end method

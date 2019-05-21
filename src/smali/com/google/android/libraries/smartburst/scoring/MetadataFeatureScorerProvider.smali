.class public final Lcom/google/android/libraries/smartburst/scoring/MetadataFeatureScorerProvider;
.super Ljava/lang/Object;
.source "MetadataFeatureScorerProvider.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;


# instance fields
.field private final mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/MetadataFeatureScorerProvider;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 29
    return-void
.end method


# virtual methods
.method public final getScorerForFeature(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/storage/Metadata;->getKeyForName(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/scoring/MetadataFeatureScorerProvider;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/libraries/smartburst/scoring/MetadataFrameScorer;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/storage/Metadata$Key;F)V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    const-string v0, "MetadataFeatureScorerProvider[metadataStore = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/MetadataFeatureScorerProvider;->mMetadataStore:Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

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

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

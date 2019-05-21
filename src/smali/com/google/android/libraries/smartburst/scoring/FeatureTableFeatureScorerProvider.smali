.class public final Lcom/google/android/libraries/smartburst/scoring/FeatureTableFeatureScorerProvider;
.super Ljava/lang/Object;
.source "FeatureTableFeatureScorerProvider.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;


# instance fields
.field private mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFeatureScorerProvider;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 32
    return-void
.end method


# virtual methods
.method public final getScorerForFeature(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v2, "^(.+):(\\d+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1255
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->values()[Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v7, v5, v4

    .line 1256
    invoke-virtual {v7}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v3

    .line 49
    :cond_0
    if-eqz v1, :cond_2

    .line 50
    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFeatureScorerProvider;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 51
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->valueOf(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/libraries/smartburst/scoring/SingleFeatureScorer;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;I)V

    move-object v0, v1

    .line 54
    :goto_2
    return-object v0

    .line 1255
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    const-string v0, "FeatureTableFeatureScorerProvider[featureTable = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFeatureScorerProvider;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

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

.class public final Lcom/google/android/libraries/smartburst/postprocessing/feature/ComboFeatureExtractor;
.super Ljava/lang/Object;
.source "ComboFeatureExtractor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;


# instance fields
.field private final mExtractors:[Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;


# direct methods
.method public constructor <init>([Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ComboFeatureExtractor;->mExtractors:[Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;

    .line 29
    return-void
.end method


# virtual methods
.method public final extractFeatures(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ComboFeatureExtractor;->mExtractors:[Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 46
    invoke-interface {v4, p1}, Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;->extractFeatures(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const-string v0, "ComboFeatureExtractor[extractors="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ComboFeatureExtractor;->mExtractors:[Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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
